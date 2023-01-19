import 'package:flutter/material.dart';
import 'package:my_first_portfolio/Widget/on_nfocused.dart';
import 'package:my_first_portfolio/auth/register_page.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isPasswordVisible = false;
  bool isPassVisible = false;
  bool isConfirmPasswordEmpty = false;
  bool isPasswordEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnUnFocusTap(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 60, left: 20),
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff777777)),
                      borderRadius: BorderRadius.circular(100)),
                  child: const Icon(
                    Icons.arrow_back_outlined,
                    color: Color(0xff777777),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 70,
                margin: const EdgeInsets.only(left: 20, top: 50),
                child: const Text(
                  "New Password",
                  style: TextStyle(
                    color: Color(0xff194B38),
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 50,
                margin: const EdgeInsets.only(left: 20, top: 10),
                child: const Text(
                  "At least 8 characters, with uppercase, lowercase and special character.",
                  style: TextStyle(
                      color: Color(0xff9C9C9C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "New Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff9C9C9C),
                    letterSpacing: .5,
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 60,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  controller: password,
                  onChanged: (s) {
                    isPasswordEmpty = false;
                    setState(() {});
                  },
                  obscureText: isPasswordVisible,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      suffixIcon: Container(
                        margin: const EdgeInsets.only(right: 7),
                        child: IconButton(
                          icon: Icon(
                            isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color(0xff5B5B5B),
                          ),
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                        ),
                      ),
                      filled: true,
                      fillColor: const Color(0xff194B38).withOpacity(0.1),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(17)),
                        borderSide: BorderSide(
                            color: const Color(0xff194B38).withOpacity(0.0),
                            width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(17)),
                        borderSide: BorderSide(
                            color: const Color(0xff194B38).withOpacity(0.0),
                            width: 2.0),
                      ),
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Icon(Icons.lock_outlined),
                      )),
                ),
              ),
              isPasswordEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(left: 40, top: 2),
                      child: Text(
                        "Enter new password",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Confirm Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff9C9C9C),
                    letterSpacing: .5,
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 60,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  controller: confirmpassword,
                  onChanged: (s) {
                    isConfirmPasswordEmpty = false;
                    setState(() {});
                  },
                  obscureText: isPassVisible,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      suffixIcon: Container(
                        margin: const EdgeInsets.only(right: 7),
                        child: IconButton(
                          icon: Icon(
                            isPassVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color(0xff5B5B5B),
                          ),
                          onPressed: () {
                            setState(() {
                              isPassVisible = !isPassVisible;
                            });
                          },
                        ),
                      ),
                      filled: true,
                      fillColor: const Color(0xff194B38).withOpacity(0.1),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(17)),
                        borderSide: BorderSide(
                            color: const Color(0xff194B38).withOpacity(0.0),
                            width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(17)),
                        borderSide: BorderSide(
                            color: const Color(0xff194B38).withOpacity(0.0),
                            width: 2.0),
                      ),
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Icon(Icons.lock_outlined),
                      )),
                ),
              ),
              isConfirmPasswordEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(left: 40, top: 2),
                      child: Text(
                        "Confirm Passwords",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : const SizedBox.shrink(),
              GestureDetector(
                onTap: () {
                  if (password.text.isNotEmpty &&
                      confirmpassword.text.isNotEmpty) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const Register(
                                email: "bilolabdunazarov8480@gmail.com")));
                  } else if (password.text.isEmpty &&
                      confirmpassword.text.isEmpty) {
                    isPasswordEmpty = true;
                    isConfirmPasswordEmpty = true;
                    setState(() {});
                  } else if (password.text.isEmpty) {
                    isConfirmPasswordEmpty = true;
                    setState(() {});
                  } else if (confirmpassword.text.isEmpty) {
                    isPasswordEmpty = true;
                    setState(() {});
                  }
                },
                child: Container(
                  height: 70,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Color(0xff324A59),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          colors: [Color(0xff32CB4B), Color(0xff26AD71)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  margin: const EdgeInsets.only(left: 25, right: 25, top: 50),
                  child: const Center(
                      child: Text(
                    "Send me Link",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
