import 'package:flutter/material.dart';
import 'loginScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       height: double.infinity,
       width: double.infinity,
       decoration: const BoxDecoration(
         gradient: LinearGradient(
           colors: [
             Color.fromARGB(255, 224, 4, 0),
             Color.fromARGB(255, 224, 190, 2),
           ]
         )
       ),
       child: Column(
         children: [
           const Padding(
             padding: EdgeInsets.only(top: 200.0),
             child: Image(image: AssetImage('assets/logo.png'), height: 100, width: 100,),
           ),
           const SizedBox(
             height: 100,
           ),
           const Text('Selamat Datang',style: TextStyle(
             fontSize: 30,
             color: Colors.white
           ),),
          const SizedBox(height: 30,),
          GestureDetector(
             onTap: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => const loginScreen()));
             },
             child: Container(
               height: 53,
               width: 320,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(30),
                 border: Border.all(color: Colors.white),
               ),
               child: const Center(child: Text('LOG IN',style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.black
               ),),),
             ),
           ),
           const SizedBox(height: 30,),
           const Spacer()
          ]
       ),
     ),

    );
  }
}
