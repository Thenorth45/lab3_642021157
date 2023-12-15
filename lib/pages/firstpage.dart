import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  final _loginfromkey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passCtrl = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "North App",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 108, 211, 68),
          ),
        ),
        elevation: 10,
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 10, 82, 4),
      ),
      body: Form(
          key: _loginfromkey,
          child: Column(children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  // ignore: prefer_const_constructors
                  color: Color.fromARGB(255, 3, 253, 232), // สีขอบ
                  width: 5.0, // ความกว้างของขอบ
                ),
                borderRadius: BorderRadius.circular(50.0), // ทำให้มีขอบโค้ง
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45.0), // ขอบโค้งภายใน
                child: Image.asset(
                  "assets/img/login.png",
                  fit: BoxFit.scaleDown,
                  width: 150.0, // กำหนดความกว้างของภาพ
                  height: 150.0, // กำหนดความสูงของภาพ
                ),
              ),
            ),

            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please Enter Your UserName");
                }
                return null;
              },
              controller: _usernameCtrl,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "UserName",
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.account_box),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      // ignore: prefer_const_constructors
                      BorderSide(color: Color.fromARGB(244, 33, 122, 6)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      // ignore: prefer_const_constructors
                      BorderSide(color: Color.fromARGB(244, 33, 122, 6)),
                ),
              ),
              // onChanged: (value) {
              //   setState(() {
              //     _usernameCtrl.text = value;
              //   });
              // },
            ),
            // Text(_usernameCtrl.text)
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please Enter Your Password");
                }
                return null;
              },
              controller: _passCtrl,
              keyboardType: TextInputType.phone,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.password),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
              // onChanged: (value) {
              //   setState(() {
              //     _usernameCtrl.text = value;
              //   });
              // },
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // ignore: avoid_print
                print("OnPressed");
                if (_loginfromkey.currentState!.validate()) {
                  // ignore: avoid_print
                  print("Success");
                }
              },
              // ignore: prefer_const_constructors
              child: Text("Login"),
            ),
          ])),
    );
  }
}
