import 'package:class_family/Clippers/SunLightCustomClipper.dart';
import 'package:class_family/CustomWidgets/CustomOutlineButton.dart';
import 'package:class_family/CustomWidgets/TextFieldWidget.dart';
import 'package:class_family/CustomWidgets/homeScreen/ViewAllButton.dart';
import 'package:class_family/Models/AnimationControllerModel.dart';
import 'package:class_family/Models/LoginModel.dart';
import 'package:class_family/Screens/login/loginScreenStacks/beachContainer.dart';
import 'package:class_family/Screens/login/loginScreenStacks/seaContainer.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HorizonBackground extends StatefulWidget {
  @override
  _HorizonBackgroundState createState() => _HorizonBackgroundState();
}

class _HorizonBackgroundState extends State<HorizonBackground> {
  @override
  Widget build(BuildContext context) {
    final AnimationControllerModel _loopController = AnimationControllerModel("Hair Animation", speed:0.5);
    final loginModel = Provider.of<LoginModel>(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: const Alignment(0,-0.6),
              radius: 1,
              focalRadius: 1,
              colors: [
                Theme.of(context).accentColor,
                Theme.of(context).primaryColor
              ],
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: screenWidth/8,
          child: Container(
            height: 400,
            width: 400,
            child: FlareActor(
              "assets/sunOutline.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          ),
//          child: ClipPath(
//            clipper: SunLightCustomClipper(),
//            child: Container(
//              height: 200,
//              width: 200,
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.all(Radius.circular(1000)),
//
//                color: const Color(0xFFFFFFDB),
//              ),
//            ),
//          ),
        ),
        Positioned(
            top: screenHeight*0.33,
            child: SeaContainer(),
        ),
        Positioned(
          right: 0,
          top: 181,
          child: Container(
            height: 200,
            width: 200,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.transparent,
              child: FlareActor(
                "assets/Waves.flr",
                alignment: Alignment.center,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: BeachContainer(),
        ),
        Positioned(
          bottom: -200,
          right: -150,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 5000),
            height: 900,
            width: 900,
            color: Colors.transparent,
            child: FlareActor(
              "assets/HairFlare.flr",
              animation: "Hair Animation",
              alignment: Alignment.center,
              controller: _loopController,
              isPaused: !mounted,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          top: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              Container(
                width: screenWidth,
                child: TextFieldWidget(
                  hintText: "Email",
                  obscureText: false,
                  prefixIconData: Icons.mail_outline,
                  suffixIconData: loginModel.isValid ? Icons.check : null,
                  onChanged: (value) {
                    loginModel.isValidEmail(value);
                  },
                ),
              ),
              Container(
                width: screenWidth,
                child: TextFieldWidget(
                  hintText: "Password",
                  obscureText: loginModel.isVisible ? false : true,
                  prefixIconData: Icons.mail_outline,
                  suffixIconData: loginModel.isVisible ? Icons.visibility : Icons.visibility_off,
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomOutlineButton(
                  title: "Login",
                  height: 80,
                  width: screenWidth*0.67,
                  textColor: Colors.white,
                  outlineColor: Theme.of(context).backgroundColor,
                ),
              ),
              CustomOutlineButton(
                title: "Sign Up",
                height: 80,
                width: screenWidth*0.67,
                textColor: Theme.of(context).secondaryHeaderColor,
                outlineColor: Colors.transparent,
              ),

            ],
          ),
        ),


      ],
    );
  }
}
