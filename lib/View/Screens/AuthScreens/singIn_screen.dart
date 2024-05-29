import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindingherdia/View/Colors/colors.dart';
import 'package:mindingherdia/View/Components/build_buttons.dart';
import 'package:mindingherdia/View/Screens/AppScreens/home_screen.dart';
import 'package:mindingherdia/View/Widgets/custom_textField.dart';
import 'package:mindingherdia/View/utils/navigations.dart';
import 'package:video_player/video_player.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  bool _isHidden1 = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  VideoPlayerController? _videoPlayerController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _stopVideo();
  }

  void _stopVideo() {
    _videoPlayerController?.pause();
    _videoPlayerController?.seekTo(Duration.zero);
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
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Back to Account',
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomPrefixIconTextField(
                                  prefixIcon: "assets/Svgs/user.svg",
                                  hintText: 'Username or email',
                                  controller: _emailController,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomPrefixIconTextField(
                                    prefixIcon: "assets/Svgs/lock.svg",
                                    hintText: 'Password',
                                    obscureText: _isHidden1,
                                    controller: _pwdController,
                                    sufixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          _isHidden1 = !_isHidden1;
                                        });
                                      },
                                      child: Icon(
                                        _isHidden1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                        color: kDescriptionColor,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forgot Password?',
                                      style: GoogleFonts.poppins(color: kDescriptionColor, fontWeight: FontWeight.w500, fontSize: 14.sp),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
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
                                      () async {
                                        // if (formKey.currentState!.validate()) {
                                        //   authProvider
                                        //       .signInWithEmail(
                                        //     context: context,
                                        //     email: _emailController.text,
                                        //     password: _pwdController.text,
                                        //   )
                                        //       .then((value) {
                                        //     if (value) {
                                        //       nextScreenRemoveUntil(context, "/home");
                                        //     }
                                        //   }).catchError((error) {
                                        //     print('Sign-in error: $error');
                                        //   });
                                        // }
                                        nextScreen(context, HomePageScreen());
                                      },
                                      'Login',
                                      textStyle: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 14, color: kWhiteColor),
                                    )),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Are you a new user?',
                                      style: GoogleFonts.poppins(color: kDescriptionColor, fontWeight: FontWeight.w500, fontSize: 13.sp),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Sign Up',
                                        style: GoogleFonts.poppins(color: kPrimaryColor, fontWeight: FontWeight.w600, fontSize: 14.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 40.h,
                                ),
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
