import 'package:clean_arch/app/domain/conta_corrente/entities/conta_corrente_entity.dart';

class ContaCorrenteModel extends ContaCorrenteEntity {
  ContaCorrenteModel({required super.numeroConta, required super.digitoConta, required super.numeroAgencia, required super.digitoAgencia, required super.saldoDaConta});
  
  factory ContaCorrenteModel.fromMap({required Map<String, dynamic> map}){


    return ContaCorrenteModel(numeroConta: map['numero'], digitoConta: map['digito_conta'], numeroAgencia: map['numero_agencia'], digitoAgencia: map['digito_agencia'], saldoDaConta: map['saldo_conta']);
  }
  
 factory ContaCorrenteModel.fromEntity({required ContaCorrenteEntity entity}){

    return ContaCorrenteModel(numeroConta: entity.numeroConta, digitoConta: entity.digitoConta, numeroAgencia: entity.numeroAgencia, digitoAgencia: entity.digitoAgencia, saldoDaConta: entity.saldoDaConta);
  }

}