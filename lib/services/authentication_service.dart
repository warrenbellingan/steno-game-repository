import 'package:dartz/dartz.dart';

abstract interface class AuthenticationService {

  Future<Either<String, None>> signUp(
      {required String name, required String email, required String password, required String role});

  Future<Either<String, None>> login(
      {required String email, required String password});

  Future<Either<String, None>> logout();

  Future<Either<String, None>> forgotPassword({required String email});

  Future<Either<String, None>> updateName({required String newName});

  Future<Either<String, None>> updateEmail(
      {required String currentEmail, required String newEmail, required String password});

  Future<Either<String, None>> updatePassword(
      {required String currentPassword, required String newPassword});
}