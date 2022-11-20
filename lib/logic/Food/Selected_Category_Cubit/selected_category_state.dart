part of 'selected_category_cubit.dart';

abstract class SelectedCategoryState extends Equatable {
  const SelectedCategoryState();
}

class SelectedCategoryLoading extends SelectedCategoryState {
  @override
  List<Object> get props => [];
}

class SelectedCategoryLoaded extends SelectedCategoryState {

  late final List<Selected_Category_Model> selectedCategoryModel;


  SelectedCategoryLoaded(this.selectedCategoryModel);

  @override
  List<Object> get props => [];

}

class SelectedCategoryLoadingFailed extends SelectedCategoryState {
  @override
  List<Object> get props => [];
}

class SelectedCategoryInitial extends SelectedCategoryState {
  @override
  List<Object> get props => [];
}
