import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class DeleteParams extends Equatable {
  final String id;
  const DeleteParams({required this.id});
  @override
  List<Object> get props => [id];
}
