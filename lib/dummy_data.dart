import 'package:demo_app/models/lecture_detail.dart';
import 'package:demo_app/models/user.dart';

import 'models/lecture.dart';

var DUMMY_LECTURE_DETAIL = [
  LectureDetail(
    classId: 'c1',
    photos: [
      'https://cdn.class101.net/images/be6da27b-b189-4723-aaa5-541d6bf7549a/original',
      'https://mblogthumb-phinf.pstatic.net/MjAyMDAzMTZfMTQx/MDAxNTg0Mjg4NDc1OTEw.B1Mky6TZ5f0Oneda42SItmVJpDEJkPZrlFI-qTDRqu4g.0rXrih9oq1sBQ7lbKV7IMCXJjQiQfWPeSu36Xc56er0g.JPEG.jy8989/37336195-4558-4BA3-B5CE-09CEF9A4B5C5.jpg?type=w800',
    ],
    time: '8월 20일 금요일 3시',
    title: '목도리 뜨기',
    description: '같이 차 마시면서 목도리 만들어요. 꽈배기 모양, 색상 바꾸면서 뜨는것 모두 도와드려요',
    location: '영등포구 복지관 1층 희망관',
    level: '초급',
    price: '10000',
    like: false,
    totalCount: 6,
    category: '공예',
    status: '모집중',
    instructorId: 'i1',
    instructorPhoto: 'assets/images/profile1.png',
    instructorName: '김숙희',
    instructorPhone: '010-1234-5678',
    userId: 'u1',
    userMoney: '100000',
  ),
  LectureDetail(
    classId: 'c2',
    photos: [
      'https://img1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/4iC2/image/Vh-ScKoWlyX8W3j3tiN9SRW2uoc.jpg',
    ],
    time: '8월 18일 수요일 3시',
    title: '클라리넷 재즈',
    description: '클라리넷으로 황혼 부르고 싶으신 분',
    location: '영등포구 복지관 3층 강당',
    level: '초급',
    price: '15000',
    like: false,
    totalCount: 6,
    category: '악기',
    status: '모집중',
    instructorId: 'i2',
    instructorPhoto: 'assets/images/profile1.png',
    instructorName: '최일남',
    instructorPhone: '010-2222-3333',
    userId: 'u2',
    userMoney: '40000',
  ),
];

// var DUMMY_USER = [
//   User(
//     userId: '5',
//     money: 10000,
//     location: '서울시 영등포구',
//     userName: '최봉남',
//     userPhone: '010-1234-5678',
//     openClassId: [''],
//     registerClassId: [''],
//     likeClassId: [''],
//   ),
// ];
