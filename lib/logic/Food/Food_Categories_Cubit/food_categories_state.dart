part of 'food_categories_cubit.dart';

abstract class FoodCategoriesState extends Equatable {
  const FoodCategoriesState();
}

class FoodCategoriesLoading extends FoodCategoriesState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class FoodCategoriesLoaded extends FoodCategoriesState {

  late final List<Food_Category_Model> foodCategories;

  FoodCategoriesLoaded(this.foodCategories);

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class FoodCategoriesLoadingFailed extends FoodCategoriesState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class FoodCategoryClicked extends FoodCategoriesState {

  late final String category;

  FoodCategoryClicked(this.category);

  @override
  // TODO: implement props
  List<Object> get props => [];
}

