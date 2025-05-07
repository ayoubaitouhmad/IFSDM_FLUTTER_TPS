

import 'package:fluttert1ex1/home/db/LocalUsersDB.dart';

import '../models/user.dart';

class UserService {


   final  List<User> _users = UsersDb.users;


   User? findByEmail(String email) {
    try {
      return _users.firstWhere((user) => user.email == email);
    } catch (e) {
      return null;
    }
  }


   User? checkUserCredentials(String email, String password) {
    // Check if the email and the password are correct
    // Ex :
    // try {
    //   Response response = await post(
    //     Uri.parse('url'),
    //     body: {'email': email, 'password': password},
    //   );
    //   if (response.statusCode == 200) {
    //     // All good
    //   } else {
    //     // Email or password not correct
    //   }
    // } catch (e) {
    //   // Something is not working
    // }


    // in this case, we will use a local database
    User? user = findByEmail(email);
    if (user != null && user.checkCredentials(email, password)) {
      return user;
    }
    return null;
  }
}
