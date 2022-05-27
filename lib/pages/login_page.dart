import "package:flutter/material.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

final _formKey=GlobalKey<FormState>();

bool isNameValid(String name) => name.length == 6;

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                        validator: (name){
                          if(name!=null&&name.isEmpty)
                            return "Username should not be empty";
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",

                        ),
                        validator: (password){
                          if(password!=null&&password.length<6)
                            return "Password should not less than six characters";
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, "/home");
                      }
                    },
                    child: Text("Login",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                    style: ElevatedButton.styleFrom(minimumSize: Size(140, 40),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
