class NewsModel {
  int? status;
  String? message;
  List<Data>? data;

  NewsModel({this.status, this.message, this.data});

  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? title;
  String? description;
  String? img;
  dynamic slides;
  String? dateCreated;

  Data(
      {this.id,
      this.title,
      this.description,
      this.img,
      this.slides,
      this.dateCreated});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    img = json['img'];
    slides = json['slides'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['img'] = this.img;
    data['slides'] = this.slides;
    data['date_created'] = this.dateCreated;
    return data;
  }
}
