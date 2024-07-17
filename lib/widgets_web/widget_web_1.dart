import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class WidgetWeb1 extends StatelessWidget {
  const WidgetWeb1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.15,
            vertical: height * 0.03,
          ),
          child: const Text(
            "Drei einfache Schritte \nzu deinem neuen Job",
            style: TextStyle(
              fontSize: 30,
              color: Color(0xff4A5568),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: width,
          height: height * 1.4,
          child: Stack(
            children: [
              Positioned(
                left: width * 0.45,
                child: Image.asset(
                  width: width * 0.2,
                  "assets/images/undraw_Profile_data_re_v81r.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 60,
                left: width * 0.2,
                child: const Text(
                  "1.",
                  style: TextStyle(
                    fontSize: 130,
                    color: Color(0xff718096),
                  ),
                ),
              ),
              Positioned(
                left: width * 0.3,
                top: 181,
                child: const Text(
                  "Erstellen dein Lebenslauf",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff718096),
                  ),
                ),
              ),
              Positioned(
                top: 500,
                left: -60,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Color(0xffF7FAFC),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: height * 0.5,
                child: Column(
                  children: [
                    ClipPath(
                      clipper: SinCosineWaveClipper(
                        verticalPosition: VerticalPosition.top,
                      ),
                      child: Container(
                        width: width,
                        height: height * 0.3,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffE6FFFA),
                              Color(0xffEBF4FF),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipperOne(),
                      child: Container(
                        width: width,
                        height: height * 0.14,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffE6FFFA),
                              Color(0xffEBF4FF),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: height * 0.6,
                right: width * 0.45,
                child: const Text(
                  "2.",
                  style: TextStyle(
                    fontSize: 130,
                    color: Color(0xff718096),
                  ),
                ),
              ),
              Positioned(
                top: height * 0.76,
                right: width * 0.3,
                child: const Text(
                  "Erstellen dein Lebenslauf",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff718096),
                  ),
                ),
              ),
              Positioned(
                top: 450,
                left: width * 0.3,
                child: Image.asset(
                  width: width * 0.15,
                  "assets/images/undraw_task_31wc.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 220,
                left: width * 0.25,
                child: Image.asset(
                  width: width * 0.24,
                  "assets/images/gruppe1821.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: height * 0.8,
                right: width * 0.43,
                child: Image.asset(
                  width: width * 0.24,
                  "assets/images/arrow2.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: height,
                left: width * 0.3,
                child: const Text(
                  "3.",
                  style: TextStyle(
                    fontSize: 130,
                    color: Color(0xff718096),
                  ),
                ),
              ),
              Positioned(
                top: height * 1.12,
                left: width * 0.38,
                child: const Text(
                  "Mit nur einem Klick\nbewerben",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff718096),
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                ),
              ),
              Positioned(
                top: height,
                right: width * 0.3,
                child: Image.asset(
                  "assets/images/undraw_personal_file_222m.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
