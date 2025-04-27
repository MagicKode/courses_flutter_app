import 'package:courses_flutter_app/generated/json/base/json_convert_content.dart';
import 'package:courses_flutter_app/domain/models/courses_entity.dart';

import '../../domain/models/courses.dart';

CoursesEntity $CoursesEntityFromJson(Map<String, dynamic> json) {
  final CoursesEntity coursesEntity = CoursesEntity();
  final List<Courses>? courses = (json['courses'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<Courses>(e) as Courses)
      .toList();
  if (courses != null) {
    coursesEntity.courses = courses;
  }
  return coursesEntity;
}

Map<String, dynamic> $CoursesEntityToJson(CoursesEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['courses'] = entity.courses.map((v) => v.toJson()).toList();
  return data;
}

extension CoursesEntityExtension on CoursesEntity {
  CoursesEntity copyWith({
    List<Courses>? courses,
  }) {
    return CoursesEntity()
      ..courses = courses ?? this.courses;
  }
}

Courses $CoursesCoursesFromJson(Map<String, dynamic> json) {
  final Courses coursesCourses = Courses();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    coursesCourses.id = id;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    coursesCourses.title = title;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    coursesCourses.text = text;
  }
  final String? price = jsonConvert.convert<String>(json['price']);
  if (price != null) {
    coursesCourses.price = price;
  }
  final String? rate = jsonConvert.convert<String>(json['rate']);
  if (rate != null) {
    coursesCourses.rate = rate;
  }
  final String? startDate = jsonConvert.convert<String>(json['startDate']);
  if (startDate != null) {
    coursesCourses.startDate = startDate;
  }
  final bool? hasLike = jsonConvert.convert<bool>(json['hasLike']);
  if (hasLike != null) {
    coursesCourses.hasLike = hasLike;
  }
  final String? publishDate = jsonConvert.convert<String>(json['publishDate']);
  if (publishDate != null) {
    coursesCourses.publishDate = publishDate;
  }
  return coursesCourses;
}

Map<String, dynamic> $CoursesToJson(Courses entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['title'] = entity.title;
  data['text'] = entity.text;
  data['price'] = entity.price;
  data['rate'] = entity.rate;
  data['startDate'] = entity.startDate;
  data['hasLike'] = entity.hasLike;
  data['publishDate'] = entity.publishDate;
  return data;
}

extension CoursesCoursesExtension on Courses {
  Courses copyWith({
    int? id,
    String? title,
    String? text,
    String? price,
    String? rate,
    String? startDate,
    bool? hasLike,
    String? publishDate,
  }) {
    return Courses()
      ..id = id ?? this.id
      ..title = title ?? this.title
      ..text = text ?? this.text
      ..price = price ?? this.price
      ..rate = rate ?? this.rate
      ..startDate = startDate ?? this.startDate
      ..hasLike = hasLike ?? this.hasLike
      ..publishDate = publishDate ?? this.publishDate;
  }
}