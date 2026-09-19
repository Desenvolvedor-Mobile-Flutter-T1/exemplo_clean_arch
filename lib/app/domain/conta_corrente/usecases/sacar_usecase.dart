import 'package:clean_arch/app/domain/conta_corrente/entities/conta_corrente_entity.dart';
import 'package:clean_arch/app/domain/conta_corrente/repositories/i_conta_corrente_repository.dart';
import 'package:clean_arch/app/shared/falhas/failures.dart';
import 'package:clean_arch/app/shared/interfaces/result.dart';
import 'package:clean_arch/app/shared/interfaces/usecases.dart';

class SacarUsecase implements Usecases<bool, SacarUsecaseParams>{
  final IContaCorrenteRepository repository;

  SacarUsecase({required this.repository});

  @override
  Future<Result<bool>> call({required SacarUsecaseParams input}) async {
    final conta = await repository.buscarConta(agencia: input.contaCorrenteEntity.digitoAgencia, conta: input.contaCorrenteEntity.numeroConta);
      if (conta is Error<ContaCorrenteEntity>) {
        return Result.error(ErroAoRecuperarInformacoesDaContaFailure());
      }
     ContaCorrenteEntity contaAtualizada = (conta as Ok<ContaCorrenteEntity>).value;
   
    if (contaAtualizada.saldoDaConta < input.valorASacar) {
      return Result.error(SaldoInsuficienteFailure());
    }
    return repository.sacar(valorASacar: input.valorASacar, conta: input.contaCorrenteEntity);

  }

}

class SacarUsecaseParams{
  final double valorASacar;
  final ContaCorrenteEntity contaCorrenteEntity;

  new({required this.valorASacar, required this.contaCorrenteEntity});
}