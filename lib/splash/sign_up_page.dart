import 'package:flutter/material.dart';
import 'package:zapfitt/constants/constants.dart';
import 'package:zapfitt/home_page.dart';
import 'firebase_auth.dart';

class Sign_Up_Page extends StatefulWidget {
  @override
  _Sign_Up_PageState createState() => _Sign_Up_PageState();
}

class _Sign_Up_PageState extends State<Sign_Up_Page> {
  final GlobalKey<FormState>  _form_key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        title: Text(
          'SIGNUP',
          style: TextStyle(
              fontFamily: 'mento',
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey.shade50,
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:60.0, right: 30,left: 30),
            child: Column(
              children: <Widget>[
                Form(
                  key: _form_key,
                  child: Column(
                    children: <Widget>[
                      drawText_form_field(HintText: 'Full Name ',UserDetail_Index: 0,globalKey: _form_key,keyboard_type: TextInputType.text,UserDetail_Controller_Index: 0,show_text: false,ending_icons: null, ValidationFunction: (values){
                        return values.isEmpty?
                        "Name can't be empty":null;

                      },),
                      SizedBox(
                        height: 20,
                      ),
                      drawText_form_field( HintText: 'Email ID ',UserDetail_Index: 1,globalKey: _form_key,keyboard_type: TextInputType.emailAddress,UserDetail_Controller_Index: 1,show_text: false,ending_icons: null, ValidationFunction: (values){
                        return values.isEmpty?
                        'Email is required':
                        !regex.hasMatch(values)?'Enter Valid Email':null;

                      },),
                      SizedBox(
                        height: 20,
                      ),
                      drawText_form_field(HintText: 'Password',UserDetail_Index: 2,globalKey: _form_key,keyboard_type: TextInputType.text,UserDetail_Controller_Index: 2,show_text: show_password_Sign_up,
                        ending_icons: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                              onPressed: (){
                                  setState(() {
                                        show_password_Sign_up = !show_password_Sign_up;
                                              });
                                            },),
                        ValidationFunction: (values){
                        return values.isEmpty?
                        "Password can't be empty":
                        values.length<6?"Password must contain atleast 6 character":null;

                      },),
                      SizedBox(
                        height: 20,
                      ),
                      drawText_form_field(HintText: 'Phone Number ',UserDetail_Index: 3,globalKey: _form_key,keyboard_type: TextInputType.number,UserDetail_Controller_Index: 3,show_text: false,ending_icons: null, ValidationFunction: (values){
                        return values.isEmpty?
                        'Mobile number is required':
                        !mobile_exp.hasMatch(values)?'Enter a valid mobile number.':null;

                      },),
                      SizedBox(
                        height: 40,
                      ),


                    ],
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







//                      onPressed: () {
//                        setState(() {
//
//                        });
//
//                        if(!_form_key.currentState.validate())
//                        {
//
//                            autoValidation_login = true;
//                            return;
//
//                        }
//                        else
//                                {
//                                _form_key.currentState.save();
//                                customer_name_controller_sign_up.clear();
//                                customer_email_id_controller_sign_up.clear();
//                                customer_password_controller_sign_up.clear();
//                                customer_phoneNumber_controller_sign_up.clear();
//                                autoValidation_login = false;
//                                Navigator.push(
//                                context, MaterialPageRoute(builder: (context) => MyHomePage()));
//                                }
//
//                      },
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
                          final user =  await  AuthProvider().Sign_UP_WithEmail(customer_email_id_controller_sign_up.text, customer_password_controller_sign_up.text);
                          if(user != null)
                          {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => MyHomePage()));
                          }
                          else{
                            print("usernoy");

                          }
                          setState(() {
                            customer_name_controller_sign_up.clear();
                                customer_email_id_controller_sign_up.clear();
                                customer_password_controller_sign_up.clear();
                                customer_phoneNumber_controller_sign_up.clear();
                                autoValidation_login = false;
                                Navigator.push(
                                context, MaterialPageRoute(builder: (context) => MyHomePage()));

                          });
                        }
                      },
                      child: Text(
                        'SIGN UP',
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
                      Navigator.pop(context);
                    },
                    child: RichText(
                      text: TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(
                            fontFamily: 'mento',
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          children: [
                            TextSpan(
                              text: ' Log In',
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

  final ValidationFunction;
  final HintText;
  final UserDetail_Index;
  final UserDetail_Controller_Index;
  final globalKey;
  final keyboard_type;

  final ending_icons;
  final show_text;
  //final bool auto_Validation;
  drawText_form_field({this.ValidationFunction,this.HintText,this.UserDetail_Index,this.globalKey,this.keyboard_type ,this.UserDetail_Controller_Index, this.show_text,this.ending_icons} );

  @override
  _drawText_form_fieldState createState() => _drawText_form_fieldState();
}

class _drawText_form_fieldState extends State<drawText_form_field> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //height: 50,


        decoration: BoxDecoration(
            border: Border.all(
                width: 1,
                color: Colors.grey.shade300
            )
        ),
        child: TextFormField(

           controller: user_login_Details_controller_sign_up[widget.UserDetail_Controller_Index] ,
          autovalidate: autoValidation_sign_up,
          autofocus: true,

          keyboardType: widget.keyboard_type,
          textAlign: TextAlign.left,



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
            //icon: Icon(widget.Leading_icons),

            hintText: widget.HintText,
            contentPadding: EdgeInsets.only(left: 10,top: 20,bottom: 10),
//          enabledBorder: OutlineInputBorder(
//            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0)
//          ),
            suffixIcon: widget.ending_icons,
//          border: new OutlineInputBorder(
//
//          ),

//          focusedBorder: OutlineInputBorder(
//            borderSide:
//            BorderSide(color: Colors.grey.shade700, width: 3.0
//            ),
//
//          ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
              BorderSide(color: Colors.grey.shade700, width: 3.0
              ),


            ),


          ),
          obscureText: widget.show_text ,
        )
    );
  }
}