part of 'beverage_detail_screen_cubit.dart';

abstract class BeverageDetailScreenState extends Equatable {
  const BeverageDetailScreenState();
}

class BeverageDetailScreenLoading extends BeverageDetailScreenState {
  @override
  List<Object> get props => [];
}

class BeverageDetailScreenLoaded extends BeverageDetailScreenState {

  late final List<Beverage_Details_Model> beverageDetailsModel;


  BeverageDetailScreenLoaded(this.beverageDetailsModel);

  @override
  List<Object> get props => [];
}

class BeverageDetailScreenLoadingFailed extends BeverageDetailScreenState {
  @override
  List<Object> get props => [];
}
