import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controller/auth_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//import 'dart:math' as math;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();


  /*
  await firebaseInitialization.then((value) {
    Get.put(AuthController());
  });
  */

  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    
  ).then((value) => Get.put(AuthController()));



  //runApp(gma());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {









    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      // we don't really have to put the home page here
      // GetX is going to navigate the user and clear the navigation stack
      home: const CircularProgressIndicator(),
    );







    /*
    return MaterialApp(
      //title: 'Business Bank',
      theme: ThemeData(useMaterial3: true),
      home: const LoginScreen(),
    );
    */
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//Screen Function goes here
@override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: CustomScrollView(
        slivers: [
        SliverAppBar.large(
            leading: IconButton(
              onPressed: () {log('Working!');},
              icon: const Icon(Icons.settings),
              ),
            //title: const Text('Business Bank'),
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              ),
            actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle_sharp))],
            expandedHeight: 150.0,
            backgroundColor: Colors.blue[900],
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Business Bank",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
        ),
        //Deal with previous games
        SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
              child: Align(
                alignment: const FractionalOffset(0.04, 0.5),
                child: Text(
                  'Continue Games',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
            ),
          ),  

        SliverToBoxAdapter(
          child: SizedBox(
            height: 170.0,
            child:  ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal, 
              children:  [ 

                GestureDetector(
                    onTap: () {
                      log('message1');
                      
                    },
                  child: const Card(
                    child:  SizedBox(
                      width: 150,  
                      child: Center(child: Text('New Game')),
                    ),
                  )
                ),

                GestureDetector(
                    onTap: () {
                      log('message2');
                    },
                  child: const Card(
                    child:  SizedBox(
                      width: 150,  
                      child: Center(child: Text('continue Last')),
                    ),
                  )
                ),


                GestureDetector(
                    onTap: () {
                      log('message3');
                    },
                  child: const Card(
                    child:  SizedBox(
                      width: 150,  
                      child: Center(child: Text('waht abt 2nd last?')),
                    ),
                  )
                ),

                GestureDetector(
                    onTap: () {
                      log('message4');
                    },
                  child: const Card(
                    child:  SizedBox(
                      width: 150,  
                      child: Center(child: Text('you shall not pass')),
                    ),
                  )
                ),

              ],
            )
          ),


        ),
        //Friends list
        SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
              child: Align(
                alignment: const FractionalOffset(0.04, 0.5),
                child: Text(
                  'Friends list??',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
            ),
          ),  

        SliverToBoxAdapter(
          child: SizedBox(
            height: 170.0,
            child:  ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal, 
              children: const [ 
                Card(
                  child: SizedBox(
                    width: 150,  
                    child: Center(child: Text('Friend 1')),
                  ),
                ),
                 Card(
                  child: SizedBox(
                    width: 150,                  
                    child: Center(child: Text('Friend 2')),
                  ),
                ),Card(
                  child: SizedBox(
                    width: 150,        
                    child: Center(child: Text('Friend 3')),
                  ),
                ),
              ],
            )
          ),


        ),
        
        //Properties? list
        SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
              child: Align(
                alignment: const FractionalOffset(0.04, 0.5),
                child: Text(
                  'Datum? like properties list',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
            ),
          ),  

        SliverToBoxAdapter(
          child: SizedBox(
            height: 170.0,
            child:  ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal, 
              children: const [ 
                Card(
                  child: SizedBox(
                    width: 150,  
                    child: Center(child: Text('Generic prop pack')),
                  ),
                ),
                 Card(
                  child: SizedBox(
                    width: 150,                  
                    child: Center(child: Text('monopoly pack')),
                  ),
                ),Card(
                  child: SizedBox(
                    width: 150,        
                    child: Center(child: Text('my made pack')),
                  ),
                ),
              ],
            )
          ),


        ),
        
        const SliverToBoxAdapter(        
            child: 
              SizedBox(
                height: 920,
                child: Center(
                  child: Text('Scroll to see the SliverAppBar in effect.'),
                ),
              ),
          ),
        ], 
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}

/////////////////////////////////////////////////////////////////////////////////////////////
