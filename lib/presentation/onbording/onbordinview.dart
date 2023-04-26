import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tut/presentation/resorces/assets_manager.dart';
import 'package:tut/presentation/resorces/color_manager.dart';
import 'package:tut/presentation/resorces/strings_manager.dart';

class OnbordingView extends StatefulWidget {
  const OnbordingView({super.key});

  @override
  State<OnbordingView> createState() => _OnbordingViewState();
}

class _OnbordingViewState extends State<OnbordingView> {
  
  late List<SliderObject> _list = getSliderData();
  final PageController _pageController = PageController();
  int _currentIndex  =0;



  List<SliderObject> getSliderData() => [
        SliderObject(AppStrings.OmbordingTitle1, AppStrings.OmbordingSubTitle1,
            ImagesAssets.onboarding_logo1),
        SliderObject(AppStrings.OmbordingTitle2, AppStrings.OmbordingSubTitle2,
            ImagesAssets.onboarding_logo2),
        SliderObject(AppStrings.OmbordingTitle3, AppStrings.OmbordingSubTitle3,
            ImagesAssets.onboarding_logo3),
        SliderObject(AppStrings.OmbordingTitle4, AppStrings.OmbordingSubTitle4,
            ImagesAssets.onboarding_logo4),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            ),
      ),
      backgroundColor: ColorManager.white,
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        
        onPageChanged: (index) {
          setState(() {
  _currentIndex = index;
                });
        }  ,
        
        
        itemBuilder: (context, index){},
      ),
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}


class OnpordingPage extends StatelessWidget {
  const OnpordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}