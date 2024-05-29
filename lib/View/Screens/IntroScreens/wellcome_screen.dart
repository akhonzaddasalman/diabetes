import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindingherdia/View/Colors/colors.dart';
import 'package:mindingherdia/View/Components/build_buttons.dart';
import 'package:mindingherdia/View/Screens/AuthScreens/signup_screen.dart';
import 'package:mindingherdia/View/Screens/AuthScreens/singIn_screen.dart';
import 'package:mindingherdia/View/utils/navigations.dart';
import 'package:subtitle_wrapper_package/subtitle_wrapper_package.dart';
import 'package:video_player/video_player.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String url = "https://firebasestorage.googleapis.com/v0/b/mindingherdia.appspot.com/o/Toni%20App%20Welcome%203a%20_resized"
      ".mp4?alt=media&token=778f046f-04ba-4895-be00-cfcce5c8ef68";
  late ChewieController _chewieController;
  late SubtitleController _subtitleController;
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse((url)));
    _videoPlayerController.setPlaybackSpeed(0);
    _chewieController = chewieController;
    _subtitleController = SubtitleController(
      subtitleUrl: url.toString(),
      subtitleDecoder: SubtitleDecoder.utf8,
    );
  }

  VideoPlayerController get videoPlayerController {
    return _videoPlayerController;
  }

  ChewieController get chewieController {
    return ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 3 / 3,
      autoInitialize: true,
      autoPlay: true,
      showControls: true,
      showOptions: true,
      maxScale: 4.0,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: kPrimaryColor),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ColoredBox(
                  color: kPrimaryColor.withOpacity(0.4),
                  child: SubtitleWrapper(
                    backgroundColor: kPrimaryColor,
                    videoPlayerController: _chewieController.videoPlayerController,
                    subtitleController: _subtitleController,
                    subtitleStyle: const SubtitleStyle(
                      textColor: kPrimaryColor,
                      hasBorder: true,
                    ),
                    videoChild: Chewie(
                      controller: _chewieController,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                          height: 55,
                          child: buildRegisterButton(
                            () async {
                              _videoPlayerController.pause();
                              _videoPlayerController.seekTo(Duration.zero);
                              nextScreen(context, const SignInScreen());
                            },
                            'Login',
                            textStyle: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 14, color: kWhiteColor),
                          )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                      child: SizedBox(
                          height: 55,
                          child: buildOutlineButton(
                            () async {
                              _videoPlayerController.pause();
                              _videoPlayerController.seekTo(Duration.zero);
                              nextScreen(context, const SignUpScreen());
                            },
                            'Sign up',
                            textStyle: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 14, color: kPrimaryColor),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
