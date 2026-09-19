part of 'saque_bloc.dart';

@immutable
sealed class SaqueEvent {}

class SacarEvent extends SaqueEvent {
  final double valorASacar;

  new({required this.valorASacar});
}