part of 'historical_peroids_cubit.dart';

@immutable
sealed class HistoricalPeroidsState {}

final class HistoricalPeroidsInitial extends HistoricalPeroidsState {}

final class HistoricalPeroidsSucess extends HistoricalPeroidsState {}

final class HistoricalPeroidsLoading extends HistoricalPeroidsState {}

final class HistoricalPeroidsFailure extends HistoricalPeroidsState {
  final String errorMessage;

  HistoricalPeroidsFailure({required this.errorMessage});
}
