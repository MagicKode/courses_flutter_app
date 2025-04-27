import 'package:courses_flutter_app/generated/json/base/json_field.dart';
import 'package:courses_flutter_app/generated/json/courses_entity.g.dart';
import 'dart:convert';

import 'courses.dart';
export 'package:courses_flutter_app/generated/json/courses_entity.g.dart';

@JsonSerializable()
class CoursesEntity {
	late List<Courses> courses;

	CoursesEntity();

	factory CoursesEntity.fromJson(Map<String, dynamic> json) => $CoursesEntityFromJson(json);

	Map<String, dynamic> toJson() => $CoursesEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

