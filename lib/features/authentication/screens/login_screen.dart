import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/authentication/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.greyBackgroundCOlor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: GlobalVariables.secondaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(220.0),
                      )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 30.0,
                    ),
                    header(),
                    const SizedBox(
                      height: 40.0,
                    ),
                    loginCard(),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget header() {
    return const Column(
      children: <Widget>[
        Text("Hello",
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            )),
        Text("Welcome Back!",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w500,
            )),
      ],
    );
  }

  Widget loginCard() {
    return Container(
      alignment: Alignment.bottomCenter,
      height: MediaQuery.of(context).size.height / 1.5,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: GlobalVariables.backgroundColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
            offset: Offset(0, 10),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
            offset: Offset(0, -10),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
            offset: Offset(10, 0),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 30.0,
          ),
          const Text("Login Account",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              )),
          const Text("Login to your account to continue shopping with us",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              )),
          const SizedBox(
            height: 30.0,
          ),
          Container(
              margin: const EdgeInsets.only(left: 20.0),
              alignment: AlignmentDirectional.centerStart,
              child: const Text(
                "Email Address",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
          const CustomTextField(
            hintText: "Your Email Address",
            textInputType: TextInputType.emailAddress,
            iconData: Icons.email,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
              margin: const EdgeInsets.only(left: 20.0),
              alignment: AlignmentDirectional.centerStart,
              child: const Text(
                "Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
          const CustomTextField(
            hintText: "Your Password",
            textInputType: TextInputType.visiblePassword,
            isPassword: true,
            iconData: Icons.lock,
          ),
        ],
      ),
    );
  }
}
