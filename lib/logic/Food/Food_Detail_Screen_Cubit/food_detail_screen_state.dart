part of 'food_detail_screen_cubit.dart';

abstract class FoodDetailScreenState extends Equatable {
  const FoodDetailScreenState();
}

class FoodDetailScreenLoading extends FoodDetailScreenState {
  @override
  List<Object> get props => [];
}
class FoodDetailScreenLoaded extends FoodDetailScreenState {

  late final List<Food_Details_Model> foodDetailsModel;


  FoodDetailScreenLoaded(this.foodDetailsModel);

  @override
  List<Object> get props => [];
}
class FoodDetailScreenLoadingFailed extends FoodDetailScreenState {
  @override
  List<Object> get props => [];
}
