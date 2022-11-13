// To parse this JSON data, do
//
//     final userAllPost = userAllPostFromJson(jsonString);

import 'dart:convert';

UserAllPost userAllPostFromJson(String str) => UserAllPost.fromJson(json.decode(str));

String userAllPostToJson(UserAllPost data) => json.encode(data.toJson());

class UserAllPost {
  UserAllPost({
    this.status,
    this.userAllPosts,
  });

  int? status;
  List<UserAllPostElement>? userAllPosts;

  factory UserAllPost.fromJson(Map<String, dynamic> json) => UserAllPost(
    status: json["status"],
    userAllPosts: List<UserAllPostElement>.from(json["user_all_posts"].map((x) => UserAllPostElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "user_all_posts": List<dynamic>.from(userAllPosts!.map((x) => x.toJson())),
  };
}

class UserAllPostElement {
  UserAllPostElement({
    this.fullName,
    this.email,
    this.officeEmail,
    this.phoneNo,
    this.batch,
    this.jobSector,
    this.bloodGroup,
    this.userRole,
    this.nickName,
    this.jobSubSector,
    this.confirmPassword,
    this.presentAddress,
    this.permanentAddress,
    this.officeAddress,
    this.nameOfCompany,
    this.addressId,
    this.stream,
    this.userPost,
    this.jobPost,
  });

  String? fullName;
  String? email;
  String? officeEmail;
  String? phoneNo;
  String? batch;
  String? jobSector;
  String? bloodGroup;
  String? userRole;
  String? nickName;
  String? jobSubSector;
  String? confirmPassword;
  String? presentAddress;
  String? permanentAddress;
  String? officeAddress;
  String? nameOfCompany;
  String? addressId;
  String? stream;
  List<UserPost>? userPost;
  List<JobPost>? jobPost;

  factory UserAllPostElement.fromJson(Map<String, dynamic> json) => UserAllPostElement(
    fullName: json["full_name"],
    email: json["email"],
    officeEmail: json["office_email"],
    phoneNo: json["phone_no"],
    batch: json["batch"],
    jobSector: json["job_sector"],
    bloodGroup: json["blood_group"],
    userRole: json["user_role"],
    nickName: json["nick_name"],
    jobSubSector: json["job_sub_sector"],
    confirmPassword: json["confirm_password"],
    presentAddress: json["present_address"],
    permanentAddress: json["permanent_address"],
    officeAddress: json["office_address"],
    nameOfCompany: json["name_of_company"],
    addressId: json["address_id"],
    stream: json["stream"],
    userPost: List<UserPost>.from(json["user_post"].map((x) => UserPost.fromJson(x))),
    jobPost: List<JobPost>.from(json["job_post"].map((x) => JobPost.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "full_name": fullName,
    "email": email,
    "office_email": officeEmail,
    "phone_no": phoneNo,
    "batch": batch,
    "job_sector": jobSector,
    "blood_group": bloodGroup,
    "user_role": userRole,
    "nick_name": nickName,
    "job_sub_sector": jobSubSector,
    "confirm_password": confirmPassword,
    "present_address": presentAddress,
    "permanent_address": permanentAddress,
    "office_address": officeAddress,
    "name_of_company": nameOfCompany,
    "address_id": addressId,
    "stream": stream,
    "user_post": List<dynamic>.from(userPost!.map((x) => x.toJson())),
    "job_post": List<dynamic>.from(jobPost!.map((x) => x.toJson())),
  };
}

class JobPost {
  JobPost({
    this.jobUniqueId,
    this.companyName,
    this.jobType,
    this.departmentId,
    this.jobTitle,
    this.jobDescription,
    this.jobLink,
    this.image,
    this.postedBy,
    this.jobLocation,
    this.isPublished,
    this.isArchived,
    this.applicationDeadline,
    this.createdAt,
  });


  String? jobUniqueId;
  String? companyName;
  String? jobType;
  String? departmentId;
  String? jobTitle;
  String? jobDescription;
  String? jobLink;
  String? image;
  String? postedBy;
  String? jobLocation;
  int? isPublished;
  int? isArchived;
  String? applicationDeadline;
  String? createdAt;

  factory JobPost.fromJson(Map<String, dynamic> json) => JobPost(
    jobUniqueId: json["job_unique_id"],
    companyName: json["company_name"],
    jobType: json["job_type"],
    departmentId: json["department_id"],
    jobTitle: json["job_title"],
    jobDescription: json["job_description"],
    jobLink: json["job_link"],
    image: json["image"],
    postedBy: json["posted_by"],
    jobLocation: json["job_location"],
    isPublished: json["isPublished"],
    isArchived: json["isArchived"],
    applicationDeadline: json["application_deadline"],
    createdAt: json["created_at"],
  );

  Map<String, dynamic> toJson() => {
    "job_unique_id": jobUniqueId,
    "company_name": companyName,
    "job_type": jobType,
    "department_id": departmentId,
    "job_title": jobTitle,
    "job_description": jobDescription,
    "job_link": jobLink,
    "image": image,
    "posted_by": postedBy,
    "job_location": jobLocation,
    "isPublished": isPublished,
    "isArchived": isArchived,
    "application_deadline": applicationDeadline,
    "created_at": createdAt,
  };
}

class UserPost {
  UserPost({
    this.postTitle,
    this.postType,
    this.postDescription,
    this.image,
    this.postedBy,
    this.date,
    this.isPublished,
    this.isArchived,
    this.tag,
    this.createdAt,
  });


  String? postTitle;
  String? postType;
  String? postDescription;
  String? image;
  String? postedBy;
  String? date;
  int? isPublished;
  int? isArchived;
  String? tag;
  String? createdAt;

  factory UserPost.fromJson(Map<String, dynamic> json) => UserPost(
    postTitle: json["post_title"],
    postType: json["post_type"],
    postDescription: json["post_description"],
    image: json["image"],
    postedBy: json["posted_by"],
    date: json["date"] == null ? null : json["date"],
    isPublished: json["isPublished"],
    isArchived: json["isArchived"],
    tag: json["tag"],
    createdAt:json["created_at"],
  );

  Map<String, dynamic> toJson() => {
    "post_title": postTitle,
    "post_type": postType,
    "post_description": postDescription,
    "image": image,
    "posted_by": postedBy,
    "date": date == null ? null : date,
    "isPublished": isPublished,
    "isArchived": isArchived,
    "tag": tag,
    "created_at": createdAt,
  };
}
