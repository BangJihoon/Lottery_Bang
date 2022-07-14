import 'package:freezed_annotation/freezed_annotation.dart';

enum NotiType {
  @JsonValue("LIKEY")
  likey,
  @JsonValue("FEEDBACK")
  feedback,
  @JsonValue("COMMENT")
  comment,
}

extension NotiTypeConverter on NotiType {
  String toStringType() {
    switch (this) {
      case NotiType.likey:
        return "님이 회원님 게시물에 좋아요를 눌렀습니다.";
      case NotiType.feedback:
        return "님이 회원님 게시물에 피드백을 남겼습니다.";
      case NotiType.comment:
        return "님이 회원님 게시물에 댓글을 달았습니다.";
    }
  }
}
