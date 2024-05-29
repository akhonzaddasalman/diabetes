import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindingherdia/View/Colors/colors.dart';
import 'package:mindingherdia/View/Components/build_buttons.dart';
import 'package:mindingherdia/View/Widgets/custom_textField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;
  bool _isHidden1 = true;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _confirmPwdController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String fullPhone = '';

  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: kPrimaryColor,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 55.0),
              child: Image.asset(
                'assets/Images/logo.png',
                scale: 2.5,
              ),
            ),
          ),
          Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: const BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    //key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Sign Up Account',
                          style: GoogleFonts.poppins(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 34.w),
                          child: Form(
                            //key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomPrefixIconTextField(
                                  prefixIcon: "assets/Svgs/user.svg",
                                  hintText: 'First Name',
                                  controller: _nameController,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomPrefixIconTextField(
                                  prefixIcon: "assets/Svgs/user.svg",
                                  hintText: 'Last Name',
                                  controller: _lastNameController,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomPrefixIconTextField(
                                  prefixIcon: "assets/Svgs/mail.svg",
                                  hintText: 'Email/phone number',
                                  controller: _emailController,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomPrefixIconTextField(
                                    prefixIcon: "assets/Svgs/lock.svg",
                                    hintText: 'Password',
                                    obscureText: _isHidden,
                                    controller: _pwdController,
                                    sufixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          _isHidden = !_isHidden;
                                        });
                                      },
                                      child: Icon(
                                        _isHidden ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                        color: kPrimaryColor,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomPrefixIconTextField(
                                    prefixIcon: "assets/Svgs/lock.svg",
                                    hintText: 'Re-type Password',
                                    obscureText: _isHidden1,
                                    controller: _confirmPwdController,
                                    sufixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          _isHidden1 = !_isHidden1;
                                        });
                                      },
                                      child: Icon(
                                        _isHidden1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                        color: kPrimaryColor,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                    height: 55,
                                    width: double.infinity,
                                    child:
                                        // authProvider.isLoading
                                        //     ? ElevatedButton(
                                        //   onPressed: () {},
                                        //   style: ButtonStyle(
                                        //       shape: MaterialStateProperty.all(
                                        //         RoundedRectangleBorder(
                                        //           borderRadius: BorderRadius.circular(7),
                                        //         ),
                                        //       ),
                                        //       backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
                                        //   child: const SpinKitFadingCircle(
                                        //     color: kWhiteColor,
                                        //   ),
                                        // )
                                        //     :
                                        buildRegisterButton(
                                      () {
                                        // if (_pwdController.text == _confirmPwdController.text) {
                                        //   authProvider
                                        //       .registerUser(
                                        //       context: context,
                                        //       email: _emailController.text,
                                        //       password1: _pwdController.text,
                                        //       password2: _confirmPwdController.text,
                                        //       firstname: _nameController.text,
                                        //       lastname: _lastNameController.text,
                                        //       gender: "",
                                        //       country: "NZ")
                                        //       .then((result) {
                                        //     // Registration successful, navigate to next screen
                                        //     // Or perform any other action
                                        //     if (result) {
                                        //       nextScreenRemoveUntil(context, "/home");
                                        //     }
                                        //   }).catchError((error) {
                                        //     // Handle registration error
                                        //     print('Registration error: $error');
                                        //     // Show error to user
                                        //   });
                                        // }
                                      },
                                      'Sign Up',
                                      textStyle: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 14, color: kWhiteColor),
                                    )),
                                SizedBox(
                                  height: 40.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
