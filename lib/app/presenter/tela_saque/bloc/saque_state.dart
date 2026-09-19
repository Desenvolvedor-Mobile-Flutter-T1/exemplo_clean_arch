part of 'saque_bloc.dart';

@immutable
sealed class SaqueState {}

final class SaqueInitial extends SaqueState {}

final class SaqueLoading extends SaqueState {}

final class SaqueSuccess extends SaqueState {}

final class SaqueError extends SaqueState {
  final String message;

  new({required this.message});
}
