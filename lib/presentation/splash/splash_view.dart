import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tut/presentation/resorces/assets_manager.dart';
import 'package:tut/presentation/resorces/color_manager.dart';
import 'package:tut/presentation/resorces/constants_manager.dart';
import 'package:tut/presentation/resorces/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}


class _SplashViewState extends State<SplashView> {

  Timer? _timer;


  _startDelay(){
    _timer =Timer(const Duration(seconds: AppConstants.splashDelay), _goNext );
  }


_goNext(){

Navigator.pushReplacementNamed( context, Routes.onBoarding);
}

  @override
  void initState() {
    super.initState();
    _startDelay();
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(
          child: Image(
              image: AssetImage(
        ImagesAssets.splashLogo,
      ))),
    );
  }
}
