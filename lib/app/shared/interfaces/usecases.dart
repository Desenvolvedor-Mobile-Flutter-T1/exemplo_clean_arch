import 'package:clean_arch/app/shared/interfaces/result.dart';

abstract interface class Usecases<Output, Input>{
   Future<Result<Output>> call({required Input input});
}


class NoParams {}







