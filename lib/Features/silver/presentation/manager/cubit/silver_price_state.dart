part of 'silver_price_cubit.dart';

@immutable
abstract class SilverPriceState {}

final class SilverPriceInitial extends SilverPriceState {}
final class Silverloading extends SilverPriceState {}

final class Silversuccess extends SilverPriceState {
 final double price;
 final int k999;
 final int k925;
 final int k800;

  Silversuccess(this.price, this.k999, this.k925, this.k800);
}

final class Silverfailed extends SilverPriceState {
  final String error;

  Silverfailed(this.error);
}

