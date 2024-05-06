/*
{
    "status": true,
    "message": "تم تسجيل الدخول بنجاح",
    "data": {
        "id": 58882,
        "name": "Mohamed Sayed",
        "email": "mohammedsayed7414@gmail.com",
        "phone": "01153262796",
        "image": "https://student.valuxapps.com/storage/uploads/users/whnKSl3OSP_1695261183.jpeg",
        "points": 0,
        "credit": 0,
        "token": "7PFOsIK6WttkiV4oSEctskzifhqhn8vOwKo9UrcETQ4malRJ8Cfom9uNDg611rBFjPvvbK"
    }
}
 */

class LoginModel {
  late bool status;
  late String message;
  Data? date;

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    date = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  late int id;
  late int points;
  late int credit;
  late String name;
  late String email;
  late String phone;
  late String image;
  late String token;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    points = json['points'];
    credit = json['credit'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    token = json['token'];
  }
}
