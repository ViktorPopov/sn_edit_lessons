// typedef MictoexID = String;
// class Microex{
//   const Microex({
//     required this.id,
//     required this.text_teacher,
//     required this.text_student,
//     required this.answer_student,
// });
// final MictoexID id;
// final String text_teacher;
// final String text_student;
// final String answer_student;
//
//   @override
//   String toString() {
//     return 'Microex(id:$id,text_teacher:$text_teacher,text_student:$text_student,answer_student:$answer_student)';
//   }
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//
//     return other is Microex &&
//     other.id==id&&
//     other.text_teacher==text_teacher&&
//     other.text_student==text_student&&
//     other.answer_student==answer_student;
//   }
//   @override
//   int get hashCode {
//     return id.hashCode ^
//     text_teacher.hashCode ^
//     text_student.hashCode ^
//     answer_student.hashCode;
//   }
// //   Microex copyWith({
// //     MicroexID? id,
// // })
// }