// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:mindingherdia/View/Colors/colors.dart';
// import 'package:subtitle_wrapper_package/subtitle_wrapper_package.dart';
// import 'package:video_player/video_player.dart';
//
// class VideoItem extends StatefulWidget {
//   const VideoItem(
//       // No code was selected, so no documentation can be generated.
//
//       {super.key,
//       required this.videoUrl,
//       required this.looping,
//       required this.subtitleUrl});
//   final String videoUrl;
//   final bool looping;
//   final String subtitleUrl;
//   @override
//   State<VideoItem> createState() => _VideoItemState();
// }
//
// class _VideoItemState extends State<VideoItem> {
//   late ChewieController _chewieController;
//   late SubtitleController _subtitleController;
//   late VideoPlayerController _videoPlayerController;
//   @override
//   void initState() {
//     super.initState();
//     _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse((widget.videoUrl)));
//     _videoPlayerController.setPlaybackSpeed(0);
//     _chewieController = chewieController;
//     _subtitleController = SubtitleController(
//       subtitleUrl: widget.subtitleUrl,
//       subtitleDecoder: SubtitleDecoder.utf8,
//     );
//   }
//
//   VideoPlayerController get videoPlayerController {
//     return _videoPlayerController;
//   }
//
//   ChewieController get chewieController {
//     return ChewieController(
//       videoPlayerController: videoPlayerController,
//       aspectRatio: 3 / 3,
//       autoInitialize: true,
//       autoPlay: true,
//       showControls: true,
//       showOptions: true,
//       maxScale: 4.0,
//       errorBuilder: (context, errorMessage) {
//         return Center(
//           child: Text(
//             errorMessage,
//             style: const TextStyle(color: kPrimaryColor),
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(
//         top: MediaQuery.of(context).padding.top,
//       ),
//       child: ColoredBox(
//         color: kPrimaryColor.withOpacity(0.4),
//         child: SubtitleWrapper(
//           backgroundColor: kPrimaryColor,
//           videoPlayerController: _chewieController.videoPlayerController,
//           subtitleController: _subtitleController,
//           subtitleStyle: const SubtitleStyle(
//             textColor: kPrimaryColor,
//             hasBorder: true,
//           ),
//           videoChild: Chewie(
//             controller: _chewieController,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//
//     _chewieController.dispose();
//     super.dispose();
//   }
// }
