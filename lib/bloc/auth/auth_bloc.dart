import 'package:familytree/bloc/auth/auth_event.dart';
import 'package:familytree/bloc/auth/auth_state.dart';
import 'package:familytree/bloc/user/user.repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AtuthenticationState> {
  final UserRepository userRepository;

  AuthenticationBloc({required this.userRepository}) : super([]);
}
