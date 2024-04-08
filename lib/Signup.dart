import 'package:flutter/material.dart';
import 'package:travel/BottomNavBar.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/6310507.png"),
              const Text("Login", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 40)),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.mail_outline_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter your Email ID",
                  ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon:const Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter your Password",
                  ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const BottomNav()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 44, 122, 216),
              )
              , child: const Text("CLICK",style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }
}