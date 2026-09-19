import 'package:bloc/bloc.dart';
import 'package:clean_arch/app/domain/conta_corrente/entities/conta_corrente_entity.dart';
import 'package:clean_arch/app/domain/conta_corrente/usecases/sacar_usecase.dart';
import 'package:clean_arch/app/shared/interfaces/result.dart';
import 'package:meta/meta.dart';

part 'saque_event.dart';
part 'saque_state.dart';

class SaqueBloc extends Bloc<SaqueEvent, SaqueState> {

  final SacarUsecase _sacarUsecase;

  SaqueBloc({required this._sacarUsecase}) : super(SaqueInitial()) {
    on<SacarEvent>((event, emit) async {
      emit(SaqueLoading());
     final result = await _sacarUsecase(input: SacarUsecaseParams(valorASacar: event.valorASacar, contaCorrenteEntity: event.conta));
    if (result is Ok<bool>) {
      emit(SaqueSuccess());
      return;
    }
    emit(SaqueError(message: (result as Error<bool>).error.message));
   
    });
  }
}
