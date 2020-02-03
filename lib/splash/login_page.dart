import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zapfitt/constants/constants.dart';
import 'package:zapfitt/home_page.dart';
import 'package:zapfitt/splash/sign_up_page.dart';
import 'firebase_auth.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState>  _form_key = GlobalKey<FormState>();
//  final _auth = FirebaseAuth.instance ;
//


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          color: Colors.black,
        ),
        title: Text('LOGIN', style: TextStyle( fontFamily: 'mento',color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.grey.shade50,
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:60.0, right: 30,left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Theme(
                  data: ThemeData(
                    primaryColor: Colors.amber,
                    primaryColorDark: Colors.red,
                  ),
                  child: Form(

                    autovalidate: autoValidation_login,
                    key: _form_key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        drawText_form_field(LabelText: 'Email ID',Leading_icons: Icons.email, HintText: 'Enter Email Address ',UserDetail_Index: 1,globalKey: _form_key,keyboard_type: TextInputType.emailAddress,UserDetail_Controller_Index: 1,show_text: false,ending_icons: null, ValidationFunction: (values){
                          return values.isEmpty?
                          'Email is required':
                          !regex.hasMatch(values)?'Enter Valid Email':null;

                        },),
                        SizedBox(
                          height: 20,
                        ),

                        drawText_form_field(LabelText: 'PASSWORD',Leading_icons: Icons.security, HintText: 'Enter Password',UserDetail_Index: 2,globalKey: _form_key,keyboard_type: TextInputType.text,UserDetail_Controller_Index: 2,show_text: show_password_login,
                          ending_icons: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: (){
                          setState(() {
                            show_password_login = !show_password_login;
                          });
                        },),
                          ValidationFunction: (values){
                          return values.isEmpty?
                          "Password can't be null": null;

                        },),

                        SizedBox(
                          height: 20,
                        ),
                        Text('Forgot your password?',
                        style: TextStyle(
                          fontFamily: 'mento',
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 40,
                        ),


                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width -60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),

                    ),
                    child: RaisedButton(
                      padding: EdgeInsets.all(10),
                      elevation: 5,
                      color: Colors.black,






                      onPressed: () async{

                          if(!_form_key.currentState.validate())
                          {
                            setState(() {
                              autoValidation_login = true;
                              return;
                            });
                          }
                          else
                          {
                            setState(() {
                              _form_key.currentState.save();

                            });
                          final user =  await  AuthProvider().LoginWithEmail(customer_email_id_controller_login.text, customer_password_controller_login.text);
                          if(user != null)
                           {
                             Navigator.push(
                                 context, MaterialPageRoute(builder: (context) => MyHomePage()));
                           }
                          else{
                            print("usernoy");

                          }
                            setState(() {
                              customer_email_id_controller_login.clear();
                              customer_password_controller_login.clear();

                              autoValidation_login = false;

                            });
                          }
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'mento'
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Sign_Up_Page()));

                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have a account?",
                        style: TextStyle(
                          fontFamily: 'mento',
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        children: [
                          TextSpan(
                            text:' Sign Up',
                            style: TextStyle(
                              fontFamily: 'mento',
                              fontSize: 15,

                              color: Colors.pinkAccent
                            ),
                          )
                        ]
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width-60,
                  height: 2,
                  color: Colors.grey.shade200,
                ),
                SizedBox(
                  height: 15,
                ),

                Container(
                  width: MediaQuery.of(context).size.width-60,
                  height: 45,
                  color: Color(0xFFdb4a39),
                  child: FlatButton(
                    onPressed: ()async{
                      setState(() async{
                       //await  AuthProvider().SignWithGoogle();
                      });

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('asset/google.png'),
                        ),
                        Text('  Login  with  Google',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'mento',
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),

                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width-60,
                  height: 45,
                  color: Color(0xFf3b5998),
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('asset/facebook.png'),
                          fit: BoxFit.contain,
                        ),
                        Text('  Login  with  Facebook',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'mento',
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                  ),

                ),


              ],
            ),
          ),
        ],

      ),
    );
  }
}





class drawText_form_field extends StatefulWidget {
  final LabelText;
  final ValidationFunction;
  final HintText;
  final UserDetail_Index;
  final UserDetail_Controller_Index;
  final globalKey;
  final keyboard_type;
  final Leading_icons;
  final ending_icons;
  final show_text;
  //final bool auto_Validation;
  drawText_form_field({this.LabelText,this.ValidationFunction,this.HintText,this.UserDetail_Index,this.globalKey,this.keyboard_type ,this.UserDetail_Controller_Index, this.Leading_icons,this.show_text,this.ending_icons} );

  @override
  _drawText_form_fieldState createState() => _drawText_form_fieldState();
}

class _drawText_form_fieldState extends State<drawText_form_field> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: user_login_Details_controller_login[widget.UserDetail_Controller_Index] ,
      //autovalidate: autoValidation,
      autofocus: true,

      keyboardType: widget.keyboard_type,


      validator: widget.ValidationFunction,

      // onFieldSubmitted: globalKey.currentState.validate(),
//      onSaved: (values){
//        userDetails[UserDetail_Index] = values;
//
//        // globalKey.currentState.validate();
//
//
//
//      },
      decoration: InputDecoration(
        icon: Icon(widget.Leading_icons),
        labelText: widget.LabelText,
        hintText: widget.HintText,
        suffixIcon: widget.ending_icons,
        border: new OutlineInputBorder(

      ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: Colors.grey.shade700, width: 3.0
          ),

        ),


      ),
        obscureText: widget.show_text ,

    );
  }
}