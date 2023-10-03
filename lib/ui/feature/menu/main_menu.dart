import 'package:auto_route/auto_route.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:frontend_sp2/ui/feature/menu/widget/dropzone.dart';

import '../../../core/theming/app_colors.dart';
import '../dashboard/dashboard_screen.dart';
import '../sales_performance/sales_performance_screen.dart';

@RoutePage()
class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  _MyMenuPageState createState() => _MyMenuPageState();
}

class _MyMenuPageState extends State<MainMenuScreen> {
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();

  @override
  void initState() {
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Prometheus Analytics"),
      //   centerTitle: true,
      //   backgroundColor: Colors.deepOrange[400],
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: sideMenu,
            style: SideMenuStyle(
              // showTooltip: false,
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Colors.pink[100],
              selectedHoverColor: AppColors.defaultRedColor,
              selectedColor: AppColors.defaultRedColor,
              selectedTitleTextStyle: const TextStyle(color: Colors.white),
              selectedIconColor: Colors.white,
              unselectedIconColor: Colors.white70,
              unselectedTitleTextStyle: const TextStyle(color: Colors.white70),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              backgroundColor: Colors.indigo[900]
            ),
            title: Column(
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 150,
                    maxWidth: 150,
                  ),
                  child: Image.asset(
                      'assets/img/prometheus.png',
                    height: 125,
                  ),
                ),
                const Divider(
                  indent: 8.0,
                  endIndent: 8.0,
                ),
              ],
            ),
            footer: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  child: Text(
                    'Prometheus Build',
                    style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                  ),
                ),
              ),
            ),
            items: [
              SideMenuItem(
                title: 'Home',
                onTap: (index, _) {
                  sideMenu.changePage(index);
                },
                icon: const Icon(Icons.home),
                badgeContent: const Text(
                  '1',
                  style: TextStyle(color: Colors.white)
                ),
                badgeColor: Colors.deepOrangeAccent,
              ),
              SideMenuItem(
                title: 'File Upload',
                onTap: (index, _) {
                  sideMenu.changePage(index);
                },
                icon: const Icon(Icons.upload_file),
              ),
              SideMenuItem(
                title: 'Sales Performance',
                onTap: (index, _) {
                  sideMenu.changePage(index);
                },
                icon: const Icon(Icons.bar_chart),
                // trailing: Container(
                //     decoration: const BoxDecoration(
                //         color: Colors.amber,
                //         borderRadius: BorderRadius.all(Radius.circular(6))),
                //     child: Padding(
                //       padding: const EdgeInsets.symmetric(
                //           horizontal: 6.0, vertical: 3),
                //       child: Text(
                //         'New',
                //         style: TextStyle(fontSize: 11, color: Colors.grey[800]),
                //       ),
                //     )
                // ),
              ),
              SideMenuItem(
                title: 'Analytics',
                onTap: (index, _) {
                  sideMenu.changePage(index);
                },
                icon: const Icon(Icons.insights),
              ),
              SideMenuItem(
                builder: (context, displayMode) {
                  return const Divider(
                    endIndent: 8,
                    indent: 8,
                  );
                },
              ),
              SideMenuItem(
                title: 'Settings',
                onTap: (index, _) {
                  sideMenu.changePage(index);
                },
                icon: const Icon(Icons.settings),
              ),
              // SideMenuItem(
              //   onTap:(index, _){
              //     sideMenu.changePage(index);
              //   },
              //   icon: const Icon(Icons.image_rounded),
              // ),
              // SideMenuItem(
              //   title: 'Only Title',
              //   onTap:(index, _){
              //     sideMenu.changePage(index);
              //   },
              // ),
              const SideMenuItem(
                title: 'Log Out',
                icon: Icon(Icons.exit_to_app),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                DashboardScreen(),
                // Container(
                //   color: Colors.white,
                //   child: const Center(
                //     child: Text(
                //       'Home',
                //       style: TextStyle(fontSize: 35),
                //     ),
                //   ),
                // ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Center(
                        child: Text(
                          'File Upload',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                      const Center(
                        child: DropZoneWidget(),
                      ),
                    ],
                  )
                ),
                const SalesPerformanceScreen(),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Analytics',
                        style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Otro',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Customer Retention',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Otro',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}