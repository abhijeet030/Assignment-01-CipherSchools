import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipher_school/Widgets/Course_Card.dart';
import 'package:cipher_school/Widgets/Video_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  void initState() {
    super.initState();
  }

  List imageList = [
    {"id": 1, "image_path": 'assets/icon/coursees1.png'},
    {"id": 2, "image_path": 'assets/icon/coursees2.png'},
    {"id": 3, "image_path": 'assets/icon/coursees3.png'},
    {"id": 4, "image_path": 'assets/icon/coursees4.png'},
  ];
  List course = [
    {
      "courseName": 'FREE IELTS/TOEFL Mock Assessment',
      "courseImg":
          'https://ik.imagekit.io/cipherschools/CipherSchools/languify-1',
      "courseDuration": '30 mins / 3 hours',
      "courseContent": 'AI genereated feedback and scores',
      "courseType": 'Languify'
    },
    {
      "courseName": 'Cascading Style Sheet (CSS)',
      "courseImg":
          'https://d3gmywgj71m21w.cloudfront.net/bdc64b30d8b2992575b5aa5a3bc06c42',
      "courseDuration": '30 min /3 hours',
      "courseContent": 'No. of videos: 24',
      "courseType": 'Web Development'
    },
    {
      "courseName": 'JavaScript (JS)',
      "courseImg":
          'https://d3gmywgj71m21w.cloudfront.net/498f10428c3b24c94e57a4bff1176c93',
      "courseDuration": '5.1 hours',
      "courseContent": 'No. of videos: 36',
      "courseType": 'Web Development'
    },
    {
      "courseName": 'Complete Python Tutorial in Hindi',
      "courseImg":
          'https://d3gmywgj71m21w.cloudfront.net/fa650d8c44ac967b4cb0dd890d21b67a',
      "courseDuration": '27.8 hours',
      "courseContent": 'No. of videos: 241',
      "courseType": 'Programming'
    },
  ];
  List video = [
    {
      "courseName": 'Learn to video editing using Filmora',
      "courseImg":
          'https://d3gmywgj71m21w.cloudfront.net/0a58e156d0e7004e12c87b57655501ab',
      "courseDuration": '30 min/3 hr',
      "courseContent":
          'Filmora is a line of video creation and editing applications developed by Wondershare. Filmora includes products for a range of users from beginner to intermediate. The Filmora software library is compatible with Windows and macOS computers.',
      "courseType": 'Uncategorized'
    },
    {
      "courseName":
          'How to use google with its full potential by Muthu Annamalai',
      "courseImg":
          'https://d3gmywgj71m21w.cloudfront.net/6855d7daf3898eb6a9398c66391b4411',
      "courseDuration": '30 min/3 hr',
      "courseContent":
          'Google is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, a search engine, cloud computing, software, and hardware. It is considered one of the Big Five companies in the American information technology industry, along with Amazon, Apple, Meta (Facebook), and Microsoft.',
      "courseType": 'Others'
    },
    {
      "courseName":
          'How to solve singly linked list question using tortoise & rabbit | Sehaj',
      "courseImg":
          'https://d3gmywgj71m21w.cloudfront.net/306a552a34c7762774714314c8af278c',
      "courseDuration": '30 min/3 hr',
      "courseContent":
          'In computer science, a linked list is a linear collection of data elements whose order is not given by their physical placement in memory. Instead, each element points to the next. It is a data structure consisting of a collection of nodes that together represent a sequence.',
      "courseType": 'Programming'
    },
    {
      "courseName": 'What is Blockchain | Overview by Rajan',
      "courseImg":
          'https://d3gmywgj71m21w.cloudfront.net/ded14788a82aec00e8bab90d20315462',
      "courseDuration": '30 min/3 hr',
      "courseContent":
          'Blockchain is a shared, immutable ledger that facilitates the process of recording transactions and tracking assets in a business network.',
      "courseType": 'Others'
    },
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Image.asset(
          'assets/icon/Cipherschools.png',
        ),
        title: Text(
          'CipherSchools',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 17.sp),
        ),
        actions: [
          Row(
            children: [
              Icon(
                CupertinoIcons.compass,
                color: Colors.black,
                size: 20.sp,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                'Browse',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 2.w,
              ),
              Icon(
                CupertinoIcons.chevron_down,
                color: Colors.black,
                size: 20.sp,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 20.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 16.w, 0),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 20.sp,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: CarouselSlider(
                  items: imageList
                      .map(
                        (item) => Image.asset(
                          item['image_path'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 10.h,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7.h,
                        margin: EdgeInsets.symmetric(
                          horizontal: 3.w,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                                ? Colors.orange
                                : Colors.grey),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommended Courses',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      padding: EdgeInsets.all(5.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Popular',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1.5,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                ),
                itemCount: (course.length / 2).round(),
                itemBuilder: (context, index, realIdx) {
                  final int first = index * 2;
                  final int second = first + 1;
                  return Row(
                    children: [first, second].map((idx) {
                      return Expanded(
                        flex: 1,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 10.w),
                            child: CourseCard(
                              courseName: course[idx]['courseName'],
                              courseContent: course[idx]['courseContent'],
                              courseDuration: course[idx]['courseDuration'],
                              courseImg: course[idx]['courseImg'],
                              courseType: course[idx]['courseType'],
                            )),
                      );
                    }).toList(),
                  );
                },
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(8.w),
            alignment: Alignment.topLeft,
            child: Text(
              'Latest Videos',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),
          ),
          CarouselSlider.builder(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 1.5,
              enlargeCenterPage: false,
              viewportFraction: 1,
            ),
            itemCount: (video.length / 2).round(),
            itemBuilder: (context, index, realIdx) {
              final int first = index * 2;
              final int second = first + 1;
              return Row(
                children: [first, second].map((idx) {
                  return Expanded(
                    flex: 1,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 10.w),
                        child: VideoCard(
                          courseName: video[idx]['courseName'],
                          courseContent: video[idx]['courseContent'],
                          courseImg: video[idx]['courseImg'],
                          courseType: video[idx]['courseType'],
                        )),
                  );
                }).toList(),
              );
            },
          ),
          Container(
            margin: EdgeInsets.all(8.w),
            alignment: Alignment.topLeft,
            child: Text(
              'All Courses',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                      child: CourseCard(
                        courseName: course[0]['courseName'],
                        courseContent: course[0]['courseContent'],
                        courseDuration: course[0]['courseDuration'],
                        courseImg: course[0]['courseImg'],
                        courseType: course[0]['courseType'],
                      )),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                      child: CourseCard(
                        courseName: course[1]['courseName'],
                        courseContent: course[1]['courseContent'],
                        courseDuration: course[1]['courseDuration'],
                        courseImg: course[1]['courseImg'],
                        courseType: course[1]['courseType'],
                      )),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                      child: CourseCard(
                        courseName: course[2]['courseName'],
                        courseContent: course[2]['courseContent'],
                        courseDuration: course[2]['courseDuration'],
                        courseImg: course[2]['courseImg'],
                        courseType: course[2]['courseType'],
                      )),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                      child: CourseCard(
                        courseName: course[3]['courseName'],
                        courseContent: course[3]['courseContent'],
                        courseDuration: course[3]['courseDuration'],
                        courseImg: course[3]['courseImg'],
                        courseType: course[3]['courseType'],
                      )),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                      child: CourseCard(
                        courseName: course[0]['courseName'],
                        courseContent: course[0]['courseContent'],
                        courseDuration: course[0]['courseDuration'],
                        courseImg: course[0]['courseImg'],
                        courseType: course[0]['courseType'],
                      )),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                      child: CourseCard(
                        courseName: course[1]['courseName'],
                        courseContent: course[1]['courseContent'],
                        courseDuration: course[1]['courseDuration'],
                        courseImg: course[1]['courseImg'],
                        courseType: course[1]['courseType'],
                      )),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                      child: CourseCard(
                        courseName: course[2]['courseName'],
                        courseContent: course[2]['courseContent'],
                        courseDuration: course[2]['courseDuration'],
                        courseImg: course[2]['courseImg'],
                        courseType: course[2]['courseType'],
                      )),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                      child: CourseCard(
                        courseName: course[3]['courseName'],
                        courseContent: course[3]['courseContent'],
                        courseDuration: course[3]['courseDuration'],
                        courseImg: course[3]['courseImg'],
                        courseType: course[3]['courseType'],
                      )),
                ],
              ),
            ],
          ),
          SizedBox(height: 80.h),
        ]),
      ),
    );
  }
}
