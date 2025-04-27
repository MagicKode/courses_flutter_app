import 'dart:convert';

import '../../generated/json/base/json_field.dart';
import '../../generated/json/courses_entity.g.dart';

@JsonSerializable()
class Courses {
  late int id;
  late String title;
  late String text;
  late String price;
  late String rate;
  late String startDate;
  late bool hasLike;
  late String publishDate;

  Courses();

  factory Courses.fromJson(Map<String, dynamic> json) => $CoursesCoursesFromJson(json);

  Map<String, dynamic> toJson() => $CoursesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}