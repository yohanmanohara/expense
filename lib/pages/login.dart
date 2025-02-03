

  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';

  class Login extends StatelessWidget {
    const Login({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
         backgroundColor: Colors.blue, 
        body:
          
                Center(
                    child: Container(
                    width: 400,
                    height: 500,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child:


                    Column(children: [

                  Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Image.network(
            'https://your-image-url.com/logo.png', // Replace with your actual URL
            height: 100,
            fit: BoxFit.contain, // Ensures the image scales properly
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.broken_image, size: 50, color: Colors.grey);
            },
          ),
        ),
      ),
                    

                      
                    Padding(
    padding: const EdgeInsets.only(top: 20, left: 20),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Welcome Back',
        style: TextStyle(
          fontSize: 14, // Slightly increased for better readability
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    ),
  )
  ,
                      
                      
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: 'Email',
        hintStyle: TextStyle(color: const Color.fromARGB(255, 172, 169, 169)),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
        prefixIcon: Icon(Icons.email_outlined, color: Colors.grey.shade600),
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      ),
    ),
  ),



        

                      
                      






                    ],)

  
                  )
                ),
      );
          
    }
  }


