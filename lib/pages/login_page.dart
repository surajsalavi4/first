import "package:flutter/material.dart";

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text("Welcome",style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){},
                child: Text("Login")
            ),
          ],
        ),
      ),
    );
  }
}
