import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lyra/data/models/auth/create_user_request.dart';

abstract class AuthFirebase {

  Future<void> signup(CreateUserRequest request);

  Future<void> signin();
}

class AuthFirebaseImplemention extends AuthFirebase{
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<void> signup(CreateUserRequest request) async {
    try {
        await AuthFirebase.instance.createUserWithEmailAndPassword(
          email: request.email,
          password: request.password
        );
    } on AuthFirebaseException catch (e) {
      
    } 
  }



}