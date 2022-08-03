import 'package:flutter/material.dart';
import 'package:goselect/sign_in.dart';
import 'package:goselect/size_config.dart';
import 'package:goselect/onboarding_contents.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  int _currentPage = 0;
  List colors = [Color(0xffFFFFFF), Color(0xffFFFFFF), Color(0xffFFFFFF)];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    double blockH = SizeConfig.blockH!;
    double blockV = SizeConfig.blockV!;

    return Scaffold(
      backgroundColor: colors[_currentPage],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/Goselect.png",
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Container(
                    // color: colors[i],
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Image.asset(
                            contents[i].image,
                            height: SizeConfig.blockV! * 35,
                          ),
                          SizedBox(
                            height: (height >= 840) ? 60 : 30,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            contents[i].desc,
                            style: TextStyle(
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w300,
                              fontSize: (width <= 550) ? 15 : 20,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _currentPage + 1 == contents.length
                      ? Padding(
                    padding: const EdgeInsets.all(30),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignIn()),
                        );
                      },
                      child: Text("Get Started"),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff0057FF),
                        shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: (width <= 550)
                            ? EdgeInsets.symmetric(
                            horizontal: 100, vertical: 20)
                            : EdgeInsets.symmetric(
                            horizontal: width * 0.2, vertical: 25),
                        textStyle:
                        TextStyle(fontSize: (width <= 550) ? 13 : 17),
                      ),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            _controller.jumpToPage(2);
                          },
                          child: Text(
                            "SKIP",
                            style: TextStyle(color: Color(0xff0057FF),),
                          ),
                          style: TextButton.styleFrom(
                            elevation: 0,
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: (width <= 550) ? 13 : 17,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 171,
                          height: 53,
                          child: ElevatedButton(
                            onPressed: () {
                              _controller.nextPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeIn,
                              );
                            },
                            child: Text("NEXT"),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff0057FF),
                              shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 0,
                              padding: (width <= 550)
                                  ? EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20)
                                  : EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 25),
                              textStyle: TextStyle(
                                  fontSize: (width <= 550) ? 13 : 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}