part of 'beverages_categories_cubit.dart';

abstract class BeveragesCategoriesState extends Equatable {
  const BeveragesCategoriesState();
}

class BeveragesCategoriesLoading extends BeveragesCategoriesState {
  @override
  List<Object> get props => [];
}
class BeveragesCategoriesLoaded extends BeveragesCategoriesState {

  late final List<Beverage_Category_Model> beverageCategories;


  BeveragesCategoriesLoaded(this.beverageCategories);

  @override
  List<Object> get props => [];

}
class BeveragesCategoriesLoadingFailed extends BeveragesCategoriesState {
  @override
  List<Object> get props => [];
}
class BeveragesCategoriesClicked extends BeveragesCategoriesState {

  late final String category;

  BeveragesCategoriesClicked(this.category);

  @override
  List<Object> get props => [];
}
