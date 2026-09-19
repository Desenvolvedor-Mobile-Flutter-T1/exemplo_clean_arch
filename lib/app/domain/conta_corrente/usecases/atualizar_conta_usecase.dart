import 'package:clean_arch/app/domain/conta_corrente/entities/conta_corrente_entity.dart';
import 'package:clean_arch/app/domain/conta_corrente/repositories/i_conta_corrente_repository.dart';
import 'package:clean_arch/app/shared/interfaces/result.dart';
import 'package:clean_arch/app/shared/interfaces/usecases.dart';

class AtualizarContaUsecase implements Usecases<ContaCorrenteEntity, ContaCorrenteEntity>{
 final IContaCorrenteRepository repository;

  new({required this.repository});
 
  @override
  Future<Result<ContaCorrenteEntity>> call({required ContaCorrenteEntity input}) {
      return repository.atualizarConta(conta: input);
  }
}