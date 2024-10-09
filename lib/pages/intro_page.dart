import 'package:flutter/material.dart';
import 'package:sneaker/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset('lib/images/logo.png',height: 250)),
              const SizedBox(height: 50,),
              Title(color: Colors.black, child: const Text("Just do it",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
              const SizedBox(height: 20,),
              Title(color: const Color.fromARGB(255, 111, 111, 111), child: const Text("Brand new sneakers made up of premium quality",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)),

              const SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(context,MaterialPageRoute(builder:(context) => HomePage())),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                    child:const Center(child: Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Text("Shop now",
                      style: TextStyle(color: Colors.white,
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),),
                    )),),
                
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}