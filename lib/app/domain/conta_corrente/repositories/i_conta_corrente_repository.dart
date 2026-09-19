import 'package:clean_arch/app/domain/conta_corrente/entities/conta_corrente_entity.dart';
import 'package:clean_arch/app/shared/interfaces/result.dart';

abstract interface class IContaCorrenteRepository {
  Future<Result<bool>> sacar({required double valorASacar, required ContaCorrenteEntity conta});
  Future<Result<ContaCorrenteEntity>> buscarConta({required int agencia,required int conta});

  Future<Result<ContaCorrenteEntity>> atualizarConta({required ContaCorrenteEntity conta});

}