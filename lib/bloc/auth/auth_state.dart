import 'package:equatable/equatable.dart';

abstract class AtuthenticationState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthenticationUninitialised extends AtuthenticationState {}

class AuthenticationAuthenticated extends AtuthenticationState {}

class AuthenticationUnAuthenticated extends AtuthenticationState {}

class AuthenticationLoading extends AtuthenticationState {}
