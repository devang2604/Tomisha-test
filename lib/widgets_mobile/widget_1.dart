import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Widget1 extends StatelessWidget {
  const Widget1({
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
            "Drei einfache Schritte zu deinem neuen Job",
            style: TextStyle(
              fontSize: 21,
              color: Color(0xff2D3748),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: width,
          height: height * 1.1,
          child: Stack(
            children: [
              Positioned(
                right: 20,
                child: Image.asset(
                  "assets/images/undraw_Profile_data_re_v81r.png",
                  fit: BoxFit.fill,
                ),
              ),
              const Positioned(
                top: 60,
                left: 10,
                child: Text(
                  "1.",
                  style: TextStyle(
                    fontSize: 130,
                    color: Color(0xff718096),
                  ),
                ),
              ),
              const Positioned(
                left: 120,
                top: 181,
                child: Text(
                  "Erstellen dein Lebenslauf",
                  style: TextStyle(
                    fontSize: 15,
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
                    // borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Positioned(
                top: 200,
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
              const Positioned(
                top: 200,
                left: 47,
                child: Text(
                  "2.",
                  style: TextStyle(
                    fontSize: 130,
                    color: Color(0xff718096),
                  ),
                ),
              ),
              const Positioned(
                left: 160,
                top: 320,
                child: Text(
                  "Erstellen dein Lebenslauf",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff718096),
                  ),
                ),
              ),
              Positioned(
                top: 370,
                right: 40,
                child: Image.asset(
                  "assets/images/undraw_task_31wc.png",
                  fit: BoxFit.fill,
                ),
              ),
              const Positioned(
                top: 500,
                left: 60,
                child: Text(
                  "3.",
                  style: TextStyle(
                    fontSize: 130,
                    color: Color(0xff718096),
                  ),
                ),
              ),
              const Positioned(
                right: 40,
                top: 570,
                child: Text(
                  "Mit nur einem Klick\nbewerben",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff718096),
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                ),
              ),
              Positioned(
                top: 610,
                right: 10,
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
