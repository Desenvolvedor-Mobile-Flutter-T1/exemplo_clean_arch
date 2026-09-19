import 'package:clean_arch/app/infra/models/conta_corrente_model.dart';

abstract interface class IContaCorrenteRemoteDatasource {


ContaCorrenteModel buscarConta(){
  return ContaCorrenteModel(numeroConta: 2, digitoConta: 1, numeroAgencia: 1, digitoAgencia: 1, saldoDaConta: 1);
}
    
  ContaCorrenteModel atualizarConta(ContaCorrenteModel conta){
    throw Exception();
  }

}