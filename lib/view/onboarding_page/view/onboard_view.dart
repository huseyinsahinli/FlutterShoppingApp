import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import '../../../../core/padding/page_padding.dart';
import '../../../../core/widgets/onboard_cart.dart';
import '../../splash_page/view/splash_view.dart';
import '../viewmodel/onboard_model.dart';
import '../viewmodel/tab_indicator.dart';
part './module/start_fab_button.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  _OnBoardPageState createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  int _selectedIndex = 0;

  bool get _isLastPage =>
      OnBoardModels.onBoardItems.length - 1 == _selectedIndex;
  bool get _isFirstPage => _selectedIndex == 0;

  // ---xx
  ValueNotifier<bool> isBackEnable = ValueNotifier(false);
  // --xx

  void _incrementAndChange([int? value]) {
    if (_isLastPage && value == null) {
      _changeBackEnable(true);
      return;
    }

    _changeBackEnable(false);
    _incrementSelectedPage(value);
  }

  void _changeBackEnable(bool value) {
    if (value == isBackEnable.value) return;
    isBackEnable.value = value;
  }

  void _incrementSelectedPage([int? value]) {
    setState(() {
      if (value != null) {
        _selectedIndex = value;
      } else {
        _selectedIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: cMainColor,
        child: Padding(
          padding: const PagePadding.all(),
          child: Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Column(
              children: [
                Expanded(child: _pageViewItems()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TabIndicator(selectedIndex: _selectedIndex),
                    _isLastPage
                        ? _StartFabButton(
                            isLastPage: _isLastPage,
                            onPressed: () {
                              _pushReplacenmnet(SplashPage());
                            },
                          )
                        : const SizedBox(height: 0.01)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _pageViewItems() {
    return PageView.builder(
      onPageChanged: (value) {
        _incrementAndChange(value);
      },
      itemCount: OnBoardModels.onBoardItems.length,
      itemBuilder: (context, index) {
        return OnBoardCard(model: OnBoardModels.onBoardItems[index]);
      },
    );
  }

  void _pushReplacenmnet(page) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => page));
  }
}
