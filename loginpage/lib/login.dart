import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        color: Colors.blue,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Container(
                alignment: Alignment.topLeft,
                // height: mediaQuery.height,
                // width: mediaQuery.width,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.arrow_back_ios_new_rounded, size: 18),
                ),
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.05),
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,

                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://images.pexels.com/photos/30655310/pexels-photo-30655310/free-photo-of-vietnamese-woman-in-traditional-ao-dai-in-h-i-an.png",
                  ),
                ),
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.05),
            Expanded(
              child: Container(
                // height: mediaQuery.height,
                width: mediaQuery.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),

                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Container(
                      height: mediaQuery.height * 0.1,
                      alignment: Alignment.center,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Come In \n Office",
                        style: TextStyle(
                          height: 1.1,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Username"),
                          TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),

                              // hintText: "Enter your name...",
                              fillColor: const Color.fromARGB(
                                255,
                                209,
                                207,
                                207,
                              ),
                              filled: true,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Password"),
                          TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),

                              // hintText: "Enter your name...",
                              fillColor: const Color.fromARGB(
                                255,
                                209,
                                207,
                                207,
                              ),
                              filled: true,
                              suffixIcon: Icon(Icons.visibility_off),
                              suffixIconColor: const Color.fromARGB(
                                255,
                                117,
                                113,
                                113,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Text("Forget Password"),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          alignment: Alignment.center,
                          height: mediaQuery.height * 0.08,

                          child: Text("Login"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
