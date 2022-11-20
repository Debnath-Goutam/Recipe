part of 'selected_ingredient_cubit.dart';

abstract class SelectedIngredientState extends Equatable {
  const SelectedIngredientState();
}

class SelectedIngredientLoading extends SelectedIngredientState {
  @override
  List<Object> get props => [];
}

class SelectedIngredientLoaded extends SelectedIngredientState {

  late final List<Selected_Ingredient_Model> selectedIngredientModel;


  SelectedIngredientLoaded(this.selectedIngredientModel);

  @override
  List<Object> get props => [];

}

class SelectedIngredientLoadingFailed extends SelectedIngredientState {
  @override
  List<Object> get props => [];
}

class SelectedIngredientInitial extends SelectedIngredientState {
  @override
  List<Object> get props => [];
}
