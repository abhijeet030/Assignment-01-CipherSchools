import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../Widgets/Course_Card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/icon/cards-01.png',
      'assets/icon/cards-02.png',
      'assets/icon/cards-03.png',
    ];
    final List<String> reviewCard = [
      'assets/icon/reviewcard-01.png',
      'assets/icon/reviewcard-02.png',
      'assets/icon/reviewcard-03.png',
      'assets/icon/reviewcard-04.png',
      'assets/icon/reviewcard-05.png',
      'assets/icon/reviewcard-06.png',
      'assets/icon/reviewcard-07.png',
      'assets/icon/reviewcard-08.png',
    ];

    final List<String> brandLogo = [
      'assets/icon/brandlogos-01.png',
      'assets/icon/brandlogos-02.png',
      'assets/icon/brandlogos-03.png',
      'assets/icon/brandlogos-04.png',
      'assets/icon/brandlogos-05.png',
      'assets/icon/brandlogos-06.png',
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

    final List<String> mentors = [
      'assets/icon/Satyam-Microsoft.png',
      'assets/icon/Aditya-100ms.png',
      'assets/icon/Sagar-Adobe.png',
      'assets/icon/Shreyas-PayPal.png',
      'assets/icon/Harshit-_Coding_Mentor_qIeSOYheY.png',
      'assets/icon/Anurag_-_Coding_Mentor_i9423MI2ol.png',
    ];
    final List<String> mentorsName = [
      'Satyam',
      'Aditya',
      'Sagar',
      'Shreyas',
      'Harshit',
      'Anurag',
    ];

    final List<String> mentorsJob = [
      'Microsoft',
      '100ms',
      'Adobe',
      'PayPal',
      'Coding Mentor',
      'Coding Mentor',
    ];

    final List<Widget> imageSliders = reviewCard
        .map((item) => Container(
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                    ),
                  ],
                ),
              ),
            ))
        .toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Image.asset(
          'assets/icon/Cipherschools.png',
        ),
        title: Text(
          'CypherSchools',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 17.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30.sp,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(0, 16.h, 0, 30.h),
                child: Container(
                    margin: EdgeInsets.fromLTRB(10.w, 8.h, 10.w, 0),
                    padding: EdgeInsets.fromLTRB(0, 12.h, 0, 0),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text.rich(TextSpan(
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32.sp,
                                      ),
                                      children: [
                                        TextSpan(text: 'Welcome to '),
                                        TextSpan(
                                            text: 'the',
                                            style: TextStyle(
                                                color: Colors.orange)),
                                      ])),
                                  Text.rich(TextSpan(
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32.sp,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: 'Future ',
                                            style: TextStyle(
                                                color: Colors.orange)),
                                        TextSpan(
                                          text: 'of Learning!',
                                        ),
                                      ])),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Center(
                                  child: Text(
                                'Start learning from best creators for',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp,
                                ),
                                textAlign: TextAlign.center,
                              )),
                              SizedBox(
                                height: 5.h,
                              ),
                              AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText('absolutely Free',
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.sp,
                                          color: Colors.orange),
                                      cursor: '|',
                                      curve: Curves.linear,
                                      speed: Duration(milliseconds: 100)),
                                ],
                                repeatForever: true,
                              ),
                              SizedBox(height: 30.h),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 50.w,
                                          ),
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 24,
                                              ),
                                              CircleAvatar(
                                                backgroundColor:
                                                    Colors.grey.shade800,
                                                radius: 20,
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Image.asset(
                                                      'assets/icon/Harshit-_Coding_Mentor_qIeSOYheY.png',
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 25.w,
                                          ),
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 24,
                                              ),
                                              CircleAvatar(
                                                backgroundColor:
                                                    Colors.grey.shade800,
                                                radius: 20,
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Image.asset(
                                                      'assets/icon/Rajan_-_Coding_Mentor_BwbwrC29d1.png',
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 24,
                                          ),
                                          CircleAvatar(
                                            backgroundColor:
                                                Colors.grey.shade800,
                                            radius: 20,
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Image.asset(
                                                  'assets/icon/Anurag_-_Coding_Mentor_i9423MI2ol.png',
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '50+',
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        'Mentors',
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                        fontSize: 35.sp,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.grey.shade300),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '4.8/5',
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_rounded,
                                            size: 20.sp,
                                            color: Colors.orange,
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 20.sp,
                                            color: Colors.orange,
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 20.sp,
                                            color: Colors.orange,
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 20.sp,
                                            color: Colors.orange,
                                          ),
                                          Icon(
                                            Icons.star_half_rounded,
                                            size: 20.sp,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            'Ratings',
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                margin:
                                    EdgeInsets.fromLTRB(85.w, 8.h, 85.w, 8.h),
                                padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.sp),
                                  color: Colors.orange,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Start Learning Now',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.sp,
                                              color: Colors.white)),
                                      SizedBox(
                                        width: 7.5.w,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 20.sp,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ))),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 0.6,
                aspectRatio: 2,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                enlargeFactor: 0.4,
              ),
              items: images
                  .map((item) => Container(
                        child: Image.asset(item.toString()),
                      ))
                  .toList(),
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 180.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '15K+',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Students',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 180.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '10K+',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Certificates delivered',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 180.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '450K+',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Streamed Minutes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 180.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '12TB+',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Content streamed in last 60 days',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 180.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '50+',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Creators',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 180.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '110+',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Programs available',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              width: 350.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/icon/study.jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15.sp),
                color: Colors.orange,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.w, 80.h, 10.w, 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Unlock your learning potential with \nCipherSchools',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Best platform for the \nstudents',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 40.h,
                      width: 148.w,
                      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'For Student',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.school_outlined,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 350.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon/creator.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15.sp),
                color: Colors.orange,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.w, 80.h, 10.w, 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Empowering students to open their minds to \nutmost knowledge',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Be the mentor you never \nhad',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 40.h,
                      width: 148.w,
                      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'For Creators',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              width: 390.w,
              color: Colors.blueGrey.shade800,
              padding: EdgeInsets.all(15.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Students LIVE Feedback',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'We love to read them',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Feedback is a significant component of our success \nbecause it inspires us to get better and meet the \nexpectation of our students.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: false,
                        viewportFraction: 1.6,
                        aspectRatio: 1.45,
                        enlargeFactor: 2,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                    items: imageSliders,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: reviewCard.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 23.w,
                          height: 5.h,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 8.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: _current == entry.key
                                ? Colors.orange
                                : Colors.white.withOpacity(0.65),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Creators from',
                    style:
                        TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CarouselSlider.builder(
                    itemCount: brandLogo.length,
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 6.0,
                      viewportFraction: 0.45,
                    ),
                    itemBuilder: (context, index, realIdx) {
                      return Container(
                        child: Center(
                            child: Image.asset(
                          brandLogo[index],
                        )),
                      );
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              child: Column(children: [
                Text(
                  'Best are here',
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 5.w),
                        child: CourseCard(
                          courseName: course[0]['courseName'],
                          courseContent: course[0]['courseContent'],
                          courseDuration: course[0]['courseDuration'],
                          courseImg: course[0]['courseImg'],
                          courseType: course[0]['courseType'],
                        )),
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 5.w),
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
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 5.w),
                        child: CourseCard(
                          courseName: course[2]['courseName'],
                          courseContent: course[2]['courseContent'],
                          courseDuration: course[2]['courseDuration'],
                          courseImg: course[2]['courseImg'],
                          courseType: course[2]['courseType'],
                        )),
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 5.w),
                        child: CourseCard(
                          courseName: course[3]['courseName'],
                          courseContent: course[3]['courseContent'],
                          courseDuration: course[3]['courseDuration'],
                          courseImg: course[3]['courseImg'],
                          courseType: course[3]['courseType'],
                        )),
                  ],
                ),
              ]),
            ),
            SizedBox(height: 30.h),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
              child: Column(
                children: [
                  Text(
                    'Our Expert Mentors',
                    style:
                        TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                      child: CarouselSlider.builder(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 1.8,
                      enlargeCenterPage: false,
                      viewportFraction: 1,
                    ),
                    itemCount: (mentors.length / 2).round(),
                    itemBuilder: (context, index, realIdx) {
                      final int first = index * 2;
                      final int second = first + 1;
                      return Row(
                        children: [first, second].map((idx) {
                          return Expanded(
                            flex: 1,
                            child: Container(
                              height: 250.h,
                              width: 150.w,
                              child: Column(
                                children: [
                                  Container(
                                    height: 150.h,
                                    width: 150.w,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Container(
                                            height: 100.h,
                                            width: 150.w,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade600,
                                              borderRadius:
                                                  BorderRadius.circular(10.sp),
                                            ),
                                          ),
                                          Image.asset(
                                            mentors[idx],
                                            fit: BoxFit.fitWidth,
                                          )
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 7.5.h,
                                  ),
                                  Text(
                                    mentorsName[idx],
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    mentorsJob[idx],
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ))
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              color: Colors.blueGrey.shade800,
              width: double.maxFinite,
              padding: EdgeInsets.fromLTRB(8.w, 10.h, 8.w, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Join our community',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Text(
                        'on',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.discord,
                        color: Colors.indigoAccent,
                        size: 35.sp,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Discord',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Come together and make a difference! Connect \nand grow with our discord community! Join our \ncommunity for an interactive learning experience!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 10.h),
                    width: 155.w,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            'Join Discord',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.discord,
                            size: 20.sp,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Image.asset('assets/icon/discord-01.png'),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.fromLTRB(8.w, 10.h, 8.w, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    'assets/icon/Cipherschools_lightmode.png',
                    height: 50.h,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Cipherschools is a bootstrapped educational video \nstreaming platform in India that is connecting \npassionate unskilled students to skilled industry \nexperts to fulfil their carrier dreams.',
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.mail_outline,
                        size: 30.sp,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'support@cipherschools.com',
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                'Popular Courses',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w700),
                              )),
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                'Company Info',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w700),
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Data Science',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Home',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Programming',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Blog',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Data Structure',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Why we?',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Machine Learning',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Sitemap',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Web Development',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Privacy Policy',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Game Development',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                              width: (390 - 50) / 2.w,
                              child: Text(
                                '→  Terms & Condition',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ],
                      ),
                      SizedBox(height: 30.h),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.grey.shade200,
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    '© 2020 CipherSchools • All Rights Reserved',
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: 390 / 1.5.w,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.discord,
                            color: Colors.grey.shade800,
                          ),
                          Icon(
                            FontAwesome5.instagram,
                            color: Colors.grey.shade800,
                          ),
                          Icon(
                            Elusive.linkedin,
                            color: Colors.grey.shade800,
                          ),
                          Icon(
                            FontAwesome5.github,
                            color: Colors.grey.shade800,
                          ),
                          Icon(
                            Icons.facebook,
                            color: Colors.grey.shade800,
                          ),
                          Icon(
                            FontAwesome5.twitter,
                            color: Colors.grey.shade800,
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
