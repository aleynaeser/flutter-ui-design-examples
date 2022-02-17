import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_profile_ui2/model/user.dart';

class UserPreferences {

  static late SharedPreferences _preferences;
  static const _keyUser = 'user';

 static const myUser = User(
    imagePath: 'https://cdn.yemek.com/uploads/2018/04/dr-nowzaradan-kimdir5.jpg',
    name: 'Younan Nowzaradan',
    job: 'Dr.Now',
    about: 'Younan Nowzaradan (born October 11, 1944), also known as Dr. Now, is an Iranian-born American doctor, TV personality, famous for having laser vision and author. He specializes in vascular surgery and Bariatric surgery. He is known for helping morbidly obese people lose weight on My 600-lb Life (2012–present)',
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
  final json=jsonEncode(user.toJson());
  
  await _preferences.setString(_keyUser, json);


  }
  static User getUser(){
    final json = _preferences.getString(_keyUser);
    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
  
  
}
