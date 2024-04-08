
import 'package:flutter/material.dart';
import 'package:travel/Signup.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key});
  @override
  // ignore: library_private_types_in_public_api
  _WelcomeState createState() => _WelcomeState();
}
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROZaOgM2BUTIuXYk6SO4C2JLiZHZkxFxeFcw&usqp=CAU",
                  width: 400,
                  height: 300,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Explore your journey \n only with us",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "All your vacation destinations are here, enjoy your holiday",
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const Signup()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      textStyle: const TextStyle(fontSize: 20),
                      ),
                      child: const Text("Get Started", style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}