import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Login Screen",style: TextStyle(color: Colors.white),),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            const Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 20),
            ),
            Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText :"Username",
                ),
              ),
            ),
            Form(
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    labelText :"Password",


                ),
                
              ),
            ),
            const SizedBox(
              height: 30,
            ),

        InkWell(
                       onTap: (){
                         setState(() {
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const HomeScreen()   ));
                         });
                       },
                       splashColor: Colors.white,
                       splashFactory: InkSplash.splashFactory,
                       child:
                       Ink(
                         decoration: BoxDecoration(
                           borderRadius: const BorderRadius.all(Radius.circular(30)),
                           color: Theme.of(context).colorScheme.primary,
                         ),
                         padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                         child:  const Row
                         (
                           mainAxisSize: MainAxisSize.min,
                           mainAxisAlignment: MainAxisAlignment.center,

                            children:
                            [
                            Icon(Icons.login,color: Colors.white,weight: 20,size: 30,),
                            SizedBox(width: 10,),
                            Text("Login",style: TextStyle(color: Colors.white,fontSize: 30),)
                            ],
                         ) ,
                       )

                     ),

          ],
        ),
    
      ),

    );
  }
}

class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();

}
class HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(
leading: IconButton(
  color: Colors.white,
  icon: const Icon(Icons.arrow_back),
    onPressed: (){
    setState(()
    {
      Navigator.of(context).pop();
    });
    }
),
      backgroundColor: Theme.of(context).colorScheme.primary,

    title: const Text("Login Screen",style: TextStyle(color: Colors.white),),
    ),
    body:const Center(
      child: Text("Home screen",style: TextStyle(fontSize: 20),),
    )
  );
  }

}