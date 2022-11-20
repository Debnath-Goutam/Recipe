import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe/repository/Beverages/Beverage_Details.dart';

import '../../../models/Beverages/Beverage_Detail_Model/Beverage_Details_Model.dart';

part 'beverage_detail_screen_state.dart';

class BeverageDetailScreenCubit extends Cubit<BeverageDetailScreenState> {
  BeverageDetailScreenCubit() : super(BeverageDetailScreenLoading());

  Beverage_Details beverage_details = Beverage_Details();

  Future<void> getBeverageDetail(String endpoint) async {

    try {

      emit(BeverageDetailScreenLoading());
      final beverage_detail = await beverage_details.getBeverageDetail(endpoint);
      emit(BeverageDetailScreenLoaded(beverage_detail!));

    } catch(e) {
      print(e);
      emit(BeverageDetailScreenLoadingFailed());
    }

  }

}
