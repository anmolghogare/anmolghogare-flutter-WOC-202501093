abstract class AuthState {}

/// Initial state when app starts
class AuthInitial extends AuthState {}

/// When an auth action is in progress
class AuthLoading extends AuthState {}

/// User is successfully authenticated
class AuthAuthenticated extends AuthState {}

/// User is not authenticated
class AuthUnauthenticated extends AuthState {}

/// Any authentication error
class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}
