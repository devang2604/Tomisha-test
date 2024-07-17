import 'package:flutter/material.dart';
import 'package:home/widgets_mobile/widget_1.dart';
import 'package:home/widgets_mobile/widget_2.dart';
import 'package:home/widgets_mobile/widget_3.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout>
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
                height: height,
                child: Stack(
                  children: [
                    Positioned(
                      top: height * 0.07,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: height * 0.8,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffEBF4FF),
                              Color(0xffE6FFFA),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.1,
                                vertical: height * 0.03,
                              ),
                              child: const Text(
                                "Deine Job website",
                                style: TextStyle(
                                  color: Color(0xff2D3748),
                                  fontSize: 42,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/images/undraw_agreement_aajr.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
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
                                  vertical: height * 0.0293,
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
                      top: height * 0.82,
                      left: 0,
                      right: 0,
                      child: Material(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.03,
                          ),
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: height * 0.1,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.22,
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
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                height: height * 1.35,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.03,
                      ),
                      child: Container(
                        height: 45,
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
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          Widget1(),
                          Widget2(),
                          Widget3(),
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