import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tony_textiles/views/shared/appstyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Black box on top
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    52,
                  ),
                  bottomRight: Radius.circular(
                    52,
                  ),
                ),
              ),
              // Teny textiles heading
              child: Container(
                padding: const EdgeInsets.only(top: 40),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tony Textiles',
                      style: appStyle(
                        42,
                        Colors.white,
                        FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Explore latest collections',
                      style: appStyle(
                        22,
                        Colors.white,
                        FontWeight.w200,
                      ),
                    ),
                    // Tabs
                    TabBar(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 0),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Colors.white,
                        labelStyle: appStyle(24, Colors.white, FontWeight.bold),
                        labelPadding: const EdgeInsets.only(left: 15),
                        unselectedLabelColor: Colors.grey,
                        tabs: const [
                          Text(
                            'Mens wear',
                          ),
                          Text(
                            'Women wear',
                          ),
                          Text(
                            'Kids wear',
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            // Latest collection
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.265),
              child: Container(
                padding: const EdgeInsets.only(left: 14),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        // main scrollableitems
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.405,
                          child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.6,
                                    color: Colors.amber,
                                  ),
                                );
                              }),
                        ),
                        // Latest collection
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Latest Collection',
                                style: appStyle(
                                  22,
                                  Colors.black,
                                  FontWeight.w600,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('See All',
                                      style: appStyle(
                                        22,
                                        Colors.black,
                                        FontWeight.w600,
                                      )),
                                  const Icon(
                                    Ionicons.caret_forward,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Latest collection scrollables
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.145,
                          child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.28,
                                    color: Colors.amber,
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.green,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
