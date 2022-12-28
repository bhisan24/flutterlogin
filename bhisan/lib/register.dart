import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:DecorationImage(
              image: AssetImage('assets/register.png'),
              fit: BoxFit.cover)),

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 80, top: 35),
              child: Text('Create \n Account', style: TextStyle(
                color: Colors.white,
                fontSize: 50,

              ),),

            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.30,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),

                    ),

                    SizedBox(
                      height: 30,
                    ),

                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),


                    SizedBox(
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w700),
                        ),

                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(
                                Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'home');
                            },
                            child: Text('Sign In',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Colors.white,
                                // color: Color(0xff4c505b),
                              ),
                            ),
                        style: ButtonStyle() ,
                        ),

                        // TextButton(onPressed: () {},
                        //     child: Text('Forget Password',
                        //       style: TextStyle(
                        //         decoration: TextDecoration.underline,
                        //         fontSize: 18,
                        //         color: Color(0xff4c505b),
                        //       ),
                        //     ))

                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
