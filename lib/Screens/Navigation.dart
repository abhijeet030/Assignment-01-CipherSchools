import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cipher_school/Screens/Course.dart';
import 'package:cipher_school/Screens/HomePage.dart';
import 'package:cipher_school/Screens/Profile.dart';
import 'package:cipher_school/Screens/Trending.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/octicons_icons.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          CourseScreen(),
          TrendingPage(),
          ProfilePage(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: EdgeInsets.all(16.sp),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.sp),
          ),
          child: Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15.sp,
                  spreadRadius: 5.sp,
                  offset: Offset(
                    5.0,
                    5.0,
                  ))
            ]),
            child: TabBar(
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 12.sp),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.white, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.w, 0.h, 50.w, 40.h),
              ),
              //For Indicator Show and Customization
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    FontAwesome5.home,
                    size: 24.sp,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Octicons.book,
                    size: 24.sp,
                  ),
                  text: 'Course',
                ),
                Tab(
                  icon: Icon(
                    CupertinoIcons.compass_fill,
                    size: 24.sp,
                  ),
                  text: 'Trending',
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    size: 24.sp,
                  ),
                  text: 'Profile',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
