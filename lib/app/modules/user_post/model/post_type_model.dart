// To parse this JSON data, do
//
//     final postType = postTypeFromJson(jsonString);

import 'dart:convert';

PostType postTypeFromJson(String str) => PostType.fromJson(json.decode(str));

String postTypeToJson(PostType data) => json.encode(data.toJson());

class PostType {
  PostType({
    this.status,
    this.count,
    this.postType,
  });

  int? status;
  int? count;
  List<PostTypeElement>? postType;

  factory PostType.fromJson(Map<String, dynamic> json) => PostType(
    status: json["status"],
    count: json["count"],
    postType: List<PostTypeElement>.from(json["post_type"].map((x) => PostTypeElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "count": count,
    "post_type": List<dynamic>.from(postType!.map((x) => x.toJson())),
  };
}

class PostTypeElement {
  PostTypeElement({
    this.typeName,
  });

  String? typeName;


  factory PostTypeElement.fromJson(Map<String, dynamic> json) => PostTypeElement(
    typeName: json["type_name"],

  );

  Map<String, dynamic> toJson() => {
    "type_name": typeName,
  };
}
