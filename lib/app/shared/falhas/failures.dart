sealed class Failure{
  final String message;

  Failure({required this.message});
}


final class TokenExpiredFailure implements Failure{
  @override
  String get message => 'Token expirado, faça o login novamente';
}




