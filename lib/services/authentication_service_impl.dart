
import 'package:dartz/dartz.dart';

import 'authentication_service.dart';

class AuthenticationServiceImpl implements AuthenticationService {
  @override
  Future<Either<String, None>> forgotPassword({required String email}) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<String, None>> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<String, None>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<String, None>> signUp({required String name, required String email, required String password, required String role}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<Either<String, None>> updateEmail({required String currentEmail, required String newEmail, required String password}) {
    // TODO: implement updateEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<String, None>> updateName({required String newName}) {
    // TODO: implement updateName
    throw UnimplementedError();
  }

  @override
  Future<Either<String, None>> updatePassword({required String currentPassword, required String newPassword}) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }


}