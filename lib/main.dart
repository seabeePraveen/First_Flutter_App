import 'package:flutter/material.dart';
import 'package:flutter_firstapp/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // home: const LoginPage(),
      initialRoute: "/",
      routes:{
        MyRoutes.homeRoute :(context) => const HomePage(),
        '/':(context) => const LoginPage()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First_Flutter_App"),
      ),
      body: Container(
        child: const Center(
          child: Text("Hi ra Erri Pukka",
          style: TextStyle(
            color: Colors.black,
          ),),
          ),
      ),
      drawer: const Drawer(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      child : SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 50.0),
        child: Column(
          children:[
            const SizedBox(height: 180,),
            Text("welcome $name",
            style: const TextStyle(
              fontSize: 22,
              color: Colors.deepPurple
            ),),
            const SizedBox(height: 20.0,),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter Username",
                labelText: "Username"
              ),
              onChanged: (value) => {
                name=value,
                setState((){
                    
                })
              },
            ),
            const SizedBox(height: 20.0,),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20.0,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: const Text("Login"),)
          ],
        ),
      ),
      )
    );
  }
}