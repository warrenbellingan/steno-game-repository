
import 'package:Steno_Game/exception/game_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

import 'authentication_service.dart';

class AuthenticationServiceImpl implements AuthenticationService {
  final auth = FirebaseAuth.instance;

  @override
  Future<Either<GameException, None>> forgotPassword({required String email}) async {
    throw UnimplementedError();
  }

  @override
  // TODO: implement isLoggedIn
  bool get isLoggedIn => throw UnimplementedError();

  @override
  Future<Either<GameException, None>> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<GameException, None>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<GameException, None>> signUp({required String name, required String email, required String password, required String role}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<Either<GameException, None>> updateEmail({required String currentEmail, required String newEmail, required String password}) {
    // TODO: implement updateEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<GameException, None>> updateName({required String newName}) {
    // TODO: implement updateName
    throw UnimplementedError();
  }

  @override
  Future<Either<GameException, None>> updatePassword({required String currentPassword, required String newPassword}) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }


}