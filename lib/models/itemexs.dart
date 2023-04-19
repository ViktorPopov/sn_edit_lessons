typedef ItemID = String;

class Itemexs {
  const Itemexs(
      {required this.id,
      required this.text_teacher,
      required this.text_student,
      required this.label_student_info,
      required this.label_teacher_info,
      required this.answer_student,
      required this.item_type,
      required this.is_show_student_image,
      required this.is_show_teacher_image});
  final ItemID id;
  final String text_teacher;
  final String text_student;
  final String label_student_info;
  final String label_teacher_info;
  final String answer_student;
  final String item_type;
  final bool is_show_student_image;
  final bool is_show_teacher_image;
  @override
  String toString() {
    return 'Itemexs(id:$id,text_teacher:$text_teacher,text_student:$text_student,label_student_info:$label_student_info,label_teacher_info:$label_teacher_info,answer_student:$answer_student,item_type:$item_type,is_show_student_image:$is_show_student_image,is_show_teacher_image:$is_show_teacher_image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Itemexs &&
        other.id == id &&
        other.text_teacher == text_teacher &&
        other.text_student == text_student &&
        other.label_student_info == label_student_info &&
        other.label_teacher_info == label_teacher_info &&
        other.answer_student == answer_student &&
        other.item_type == item_type &&
        other.is_show_student_image == is_show_student_image &&
        other.is_show_teacher_image == is_show_teacher_image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        text_teacher.hashCode ^
        text_student.hashCode ^
        label_student_info.hashCode ^
        label_teacher_info.hashCode ^
        answer_student.hashCode ^
        item_type.hashCode ^
        is_show_student_image.hashCode ^
        is_show_teacher_image.hashCode;
  }

  Itemexs copyWith({
    ItemID? id,
    String? text_teacher,
    String? text_student,
    String? label_student_info,
    String? label_teacher_info,
    String? answer_student,
    String? item_type,
    bool? is_show_student_image,
    bool? s_show_teacher_image,
  }) {
    return Itemexs(
      id: id ?? this.id,
      text_teacher: text_teacher ?? this.text_teacher,
      text_student: text_student ?? this.text_student,
      label_student_info: label_student_info ?? this.label_student_info,
      label_teacher_info: label_teacher_info ?? this.label_teacher_info,
      answer_student: answer_student ?? this.answer_student,
      item_type: item_type ?? this.item_type,
      is_show_student_image:
          is_show_student_image ?? this.is_show_student_image,
      is_show_teacher_image:
          is_show_teacher_image ?? this.is_show_teacher_image,
    );
  }
}
