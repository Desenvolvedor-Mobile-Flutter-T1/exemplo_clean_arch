import 'package:clean_arch/app/domain/conta_corrente/entities/conta_corrente_entity.dart';
import 'package:clean_arch/app/domain/conta_corrente/repositories/i_conta_corrente_repository.dart';
import 'package:clean_arch/app/infra/datasources/conta_corrente_remote_datasource.dart';
import 'package:clean_arch/app/infra/models/conta_corrente_model.dart';
import 'package:clean_arch/app/shared/falhas/failures.dart';
import 'package:clean_arch/app/shared/interfaces/result.dart';

final class ContaCorrenteRepositoryImpl implements IContaCorrenteRepository {

  final IContaCorrenteRemoteDatasource datasource;

  new({required this.datasource});

  @override
  Future<Result<ContaCorrenteEntity>> buscarConta({required int agencia, required int conta}) {
    throw datasource.buscarConta();
  }

  @override
  Future<Result<bool>> sacar({required double valorASacar, required ContaCorrenteEntity conta}) {
    throw UnimplementedError();
  }

  @override
  Future<Result<ContaCorrenteEntity>> atualizarConta({required ContaCorrenteEntity conta}) async{
      try {
      final novaConta = datasource.atualizarConta( ContaCorrenteModel.fromEntity(entity: conta));
      return Result.ok(novaConta as ContaCorrenteEntity);
    } catch (e) {
     return Result.error(ErroAoRecuperarInformacoesDaContaFailure());
    }

  }





}