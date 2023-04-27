import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tut/presentation/resorces/assets_manager.dart';
import 'package:tut/presentation/resorces/color_manager.dart';
import 'package:tut/presentation/resorces/strings_manager.dart';
import 'package:tut/presentation/resorces/values_manager.dart';

class OnbordingView extends StatefulWidget {
  const OnbordingView({super.key});

  @override
  State<OnbordingView> createState() => _OnbordingViewState();
}

class _OnbordingViewState extends State<OnbordingView> {
  late List<SliderObject> _list = getSliderData();
  final PageController _pageController = PageController();
  int _currentIndex = 0;

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
        },
        itemBuilder: (context, index) {
          return OnpordingPage(_list[index]);
        },
      ),
      bottomSheet: Container(
        height: 500,
        color: ColorManager.white,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  AppStrings.skip,
                ),
              ),
            ),
            _getBottomsheetWidget(),
          ],
        ),
      ),
    );
  }

  Widget _getBottomsheetWidget() {
    return Container(
      color: ColorManager.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //left arrow
          Padding(
            padding: EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: SizedBox(
                width: AppSize.s20,
                height: AppSize.s20,
                child: SvgPicture.asset(ImagesAssets.leftArrowIc),
              ),
            ),
          ),
    
          Row(
            children: [
              for (int i = 0; i < _list.length; i++)
                Padding(
                  padding: EdgeInsets.all(AppPadding.p8),
                  child: _getProperCircle(i),
                )
            ],
          ),
    
          //right arrow
          Padding(
            padding: EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: SizedBox(
                width: AppSize.s20,
                height: AppSize.s20,
                child: SvgPicture.asset(ImagesAssets.rightArrowIc),
              ),
            ),
          ),
        ],
      ),
    );
  }

  
 _getProperCircle(index){
  if (index == _currentIndex) {
   return SizedBox(   width: AppSize.s20,
                height: AppSize.s20,child: SvgPicture.asset(ImagesAssets.hollowCiricleIc));
    
  }else {return SizedBox(   width: AppSize.s20,
                height: AppSize.s20,child: SvgPicture.asset(ImagesAssets.solidCiricleIc));}
}

}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}

class OnpordingPage extends StatelessWidget {
  const OnpordingPage(this._sliderObject, {super.key});
  final SliderObject _sliderObject;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(_sliderObject.image),
      ],
    );
  }
}
