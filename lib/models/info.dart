typedef InfoID = String;
class Info{
  const Info({
    required this.id,
    required this.text_teacher,
    required this.text_student,
    required this.label_student_info,
    required this.label_teacher_info
  });
  final InfoID id;
  final String text_teacher;
  final String text_student;
  final String label_student_info;
  final String label_teacher_info;

  @override
  String toString() {
    return 'Info(id:$id,text_teacher:$text_teacher,text_student:$text_student,label_student_info:$label_student_info,label_teacher_info:$label_teacher_info,)';
  }
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Info &&
        other.id==id&&
        other.text_teacher==text_teacher&&
        other.text_student==text_student&&
        other.label_student_info==label_student_info&&
        other.label_teacher_info==label_teacher_info;
  }
  @override
  int get hashCode {
    return id.hashCode ^
    text_teacher.hashCode ^
    text_student.hashCode ^
    label_student_info.hashCode ^
    label_teacher_info.hashCode;
  }
  Info copyWith({
    InfoID? id,
    String? text_teacher,
    String? text_student,
    String?  label_student_info,
    String?  label_teacher_info,
  })
  {return Info(
    id: id??this.id,
    text_teacher: text_teacher??this.text_teacher,
    text_student: text_student??this.text_student,
    label_student_info: label_student_info??this.label_student_info,
    label_teacher_info: label_teacher_info??this.label_teacher_info,
  ); }
}