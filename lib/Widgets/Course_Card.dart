import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseCard extends StatelessWidget {
  String courseType;
  String courseName;
  String courseContent;
  String courseDuration;
  String courseImg;

  CourseCard({
    Key? key,
    required this.courseName,
    required this.courseType,
    required this.courseContent,
    required this.courseDuration,
    required this.courseImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      width: 180.w,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0xffDDDDDD),
            blurRadius: 6.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 90.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(courseImg),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.sp),
                topRight: Radius.circular(10.sp),
              ),
            ),
          ),
          SizedBox(height: 5.w),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 2.h),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade200,
                    borderRadius: BorderRadius.circular(4.sp),
                  ),
                  child: Text(
                    courseType,
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  courseName,
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  courseContent,
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Time duration: $courseDuration',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12.sp,
                      child: Image.asset(
                        'assets/icon/Cipherschools.png',
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CypherSchools',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          'Instructor',
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.ellipsis),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
