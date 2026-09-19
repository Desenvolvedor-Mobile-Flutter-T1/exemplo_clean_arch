abstract class ContaCorrenteEntity {
    final int numeroConta;
    final int digitoConta;
    final int numeroAgencia;
    final int digitoAgencia;
    final double saldoDaConta;

  ContaCorrenteEntity({required this.numeroConta, required this.digitoConta, required this.numeroAgencia, required this.digitoAgencia, required this.saldoDaConta});
}