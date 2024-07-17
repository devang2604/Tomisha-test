import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:home/widgets_web/widget_web_1.dart';
import 'package:home/widgets_web/widget_web_2.dart';
import 'package:home/widgets_web/widget_web_3.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({super.key});

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout>
    with SingleTickerProviderStateMixin {
  late TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController?.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.9,
                child: Stack(
                  children: [
                    Positioned(
                      top: height * 0.07,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: height * 0.7,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffEBF4FF),
                              Color(0xffE6FFFA),
                            ],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 330,
                              top: height * 0.22,
                              child: const Text(
                                "Deine Job \nwebsite",
                                style: TextStyle(
                                  color: Color(0xff2D3748),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Positioned(
                              top: height * 0.13,
                              left: 750,
                              child: Container(
                                width: 350,
                                height: 350,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    "assets/images/undraw_agreement_aajr.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.5,
                      left: 330,
                      child: Container(
                        alignment: Alignment.topCenter,
                        height: height * 0.1,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05,
                            vertical: height * 0.02,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xff319795),
                                Color(0xff182CE5),
                              ],
                            ),
                          ),
                          child: const Text(
                            "Kostenlos Registrieren",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Material(
                        elevation: 4.0,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Container(
                          height: height * 0.09,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 5,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff319795),
                                      Color(0xff182CE5),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05,
                                  vertical: height * 0.02,
                                ),
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff319795),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      child: ClipPath(
                        clipper: WaveClipperOne(),
                        child: Container(
                          width: width,
                          height: height * 0.1,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffEBF4FF),
                                Color(0xffE6FFFA),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width,
                height: height * 1.7,
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      child: TabBar(
                        indicatorWeight: 0,
                        dividerColor: Colors.transparent,
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                _tabController?.index == 0 ? 25.0 : 0.0),
                            bottomLeft: Radius.circular(
                                _tabController?.index == 0 ? 25.0 : 0.0),
                            topRight: Radius.circular(
                                _tabController?.index == 2 ? 25.0 : 0.0),
                            bottomRight: Radius.circular(
                                _tabController?.index == 2 ? 25.0 : 0.0),
                          ),
                          color: const Color(0xff81E6D9),
                        ),
                        labelColor: const Color(0xffE6FFFA),
                        unselectedLabelColor: const Color(0xff319795),
                        tabs: const [
                          Tab(
                            child: Text(
                              "Arbeitnehmer",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Arbeitgeber",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Temporärbüro",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          WidgetWeb1(),
                          WidgetWeb1(),
                          WidgetWeb1(),
                        ],
                      ),
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
