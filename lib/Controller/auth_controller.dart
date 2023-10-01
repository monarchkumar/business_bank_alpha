import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:business_bank/Constants/firebase_auth_constants.dart';
import 'package:business_bank/screens/home.dart';
import 'package:business_bank/screens/register.dart';
import 'dart:developer';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> firebaseUser;
  
  late Rx<GoogleSignInAccount?> googleSignInAccount;

  @override
  void onReady() {
    super.onReady();
    // auth is comning from the constants.dart file but it is basically FirebaseAuth.instance. 
    // Since we have to use that many times I just made a constant file and declared there
    
    firebaseUser = Rx<User?>(auth.currentUser);
    googleSignInAccount = Rx<GoogleSignInAccount?>(googleSign.currentUser);
      
      
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);

    
    googleSignInAccount.bindStream(googleSign.onCurrentUserChanged);
    ever(googleSignInAccount, _setInitialScreenGoogle);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
        
      // if the user is not found then the user is navigated to the Register Screen
      log(user.toString());
      Get.offAll(() => const Register());
        
    } else {
        
      // if the user exists and logged in the the user is navigated to the Home Screen
      log(user.toString());
      Get.offAll(() => const Home());
      
        
    }
  }

  _setInitialScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
    log(googleSignInAccount.toString());
    if (googleSignInAccount == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(() => const Register());
    } else {
      // if the user exists and logged in the the user is navigated to the Home Screen
      Get.offAll(() => const Home());
    }
  }

  void signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSign.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await auth
            .signInWithCredential(credential)
            .catchError((onErr)  {
              log(onErr.toString());
              return onErr;
            });
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      log(e.toString());
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);      
    } catch (firebaseAuthException) {
      if(firebaseAuthException.hashCode == 27437658){
        Get.snackbar('Sign Up Error', 'Account already exist');
      }
    }
  }

  void login(String email, password) async {
    try {
      
      await auth.signInWithEmailAndPassword(email: email, password: password);
      
    } catch (firebaseAuthException) {
      if(firebaseAuthException.hashCode == 477491290) {
        Get.snackbar('Login Error', 'Invalid Email or Password');
      }

    }
  }

  void signOut() async {
    await auth.signOut();
    Get.snackbar('Sign Out', 'User Signed Out');
  }
}