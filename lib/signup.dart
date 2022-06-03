import 'package:chefbox/bottomnavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 253, 235, 241),
          systemNavigationBarColor: Color.fromARGB(255, 253, 235, 241)),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 235, 241),
      body: SingleChildScrollView(
        child: Container(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 4.h),
                child: Image(
                  image: const AssetImage(
                    "images/hmm.png",
                  ),
                  height: 18.h,
                  width: 24.w,
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 3.w, right: 3.w, top: 100.h * 0.20),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 129, 128, 128),
                            width: 0.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Email",
                      fillColor: Colors.white),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 3.w, right: 3.w),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 194, 191, 191),
                            width: 0.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Password",
                      fillColor: Colors.white),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 3.w, right: 3.w),
                margin: EdgeInsets.only(left: 3.w, right: 3.w),
                height: 7.h,
                width: 100.w,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigationScreen()),
                      );
                    },
                    child: ElevatedButton(
                      child: Text("Signup".toUpperCase(),
                          style: const TextStyle(fontSize: 14)),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.amber),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      side: BorderSide(
                                          color: Colors.amberAccent)))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavigationScreen()),
                        );
                      },
                    )),
              ),
              /* child: Container(
                  margin: EdgeInsets.only(left: 3.w, right: 3.w),
                  height: 7.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),*/
              SizedBox(
                height: 9.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 6.w, right: 6.w),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 3.w, right: 3.w),
                        height: 6.5.h,
                        width: 26.w,
                        child: Image.asset(
                          'images/fb.png',
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 2, 72, 129),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(3),
                            bottomLeft: Radius.circular(3),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0.5.h,
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 3.w, right: 3.w),
                        height: 6.5.h,
                        width: 26.w,
                        child: Image.asset(
                          'images/g.png',
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(220, 220, 220, 220),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(3),
                            bottomLeft: Radius.circular(3),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0.2.h,
                      ),
                      /* Container(
                        // margin: EdgeInsets.only(left: 3.w, right: 3.w),
                        height: 6.5.h,
                        width: 28.w,

                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 81, 169, 241),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(3),
                            bottomLeft: Radius.circular(3),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
