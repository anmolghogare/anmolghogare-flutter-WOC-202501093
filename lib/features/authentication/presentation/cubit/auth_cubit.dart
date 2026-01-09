import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());

    // Mock network delay
    await Future.delayed(const Duration(seconds: 1));

    // Simple validation
    if (email.isEmpty || password.isEmpty) {
      emit(AuthError('Email and password cannot be empty'));
      emit(AuthUnauthenticated());
      return;
    }

    emit(AuthAuthenticated());
  }

  Future<void> signup({
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());

    await Future.delayed(const Duration(seconds: 1));

    if (email.isEmpty || password.length < 6) {
      emit(AuthError('Password must be at least 6 characters'));
      emit(AuthUnauthenticated());
      return;
    }

    emit(AuthAuthenticated());
  }

  void logout() {
    emit(AuthUnauthenticated());
  }
}
