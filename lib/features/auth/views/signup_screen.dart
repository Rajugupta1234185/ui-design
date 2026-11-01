import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_design/core/theme/app_colors.dart';
import 'package:ui_design/core/theme/app_theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),

              SizedBox(
                height: 36,
                width: double.infinity,
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Sign Up',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: TextButton(
                          onPressed: () {
                            // Navigate to Login Page
                          },
                          child: Text(
                            'LogIn',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox( height: 68),

              Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                width: double.infinity,
                height: 50,
                child:  TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: AppTheme.Placeholder,
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Colors.green),
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                )
              ),

              const SizedBox( height: 16),

              Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                width: double.infinity,
                height: 50,
                child:  TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: AppTheme.Placeholder,
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Colors.green),
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                )
              ),


              const SizedBox(height:16),
                Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                width: double.infinity,
                height: 50,
                child:  TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: AppTheme.Placeholder,
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Colors.green),
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                )
              ),

              const SizedBox(height:32),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (bool ? value){
                    value = true;
                  }),
                  
                  Expanded(
                    child: const Text(
                    "I would like to receive your newsletters and other promotional information",
                    style: TextStyle(

                    )
                  )
                  )
                 
                ],
              ),

            const SizedBox( height: 50),

                TextButton(
                  onPressed: (){
                    context.go('/login');
                  },
                  child:
                   Container(
                height:50,
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
           
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.buttonBackground,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Center(child: Text(
                  "Sign Up",
                  style: TextStyle( color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600 )
                ),),
               
              ),),
                

              const SizedBox(height:50),

              TextButton(onPressed: (){}, child: Text("Forget Your Password",
              
                style: Theme.of(context).textTheme.bodySmall
              ))

            ],
          ),
        ),
      ),
    );
  }
}