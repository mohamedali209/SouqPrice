part of 'prices_cubit.dart';

@immutable
abstract class PricesState {}

final class PricesInitial extends PricesState {}

final class Pricesloading extends PricesState {}

final class Pricessuceess extends PricesState {
  final double price;
  final int k24;
  final int k21;
  final int k18;
  final int k14;
  final int onsa;
  final int gneh;

  Pricessuceess(this.price, this.k24, this.k21, this.k18, this.k14, this.onsa, this.gneh);
}

final class Pricesfailed extends PricesState {
  final String error;

  Pricesfailed(this.error);
}
