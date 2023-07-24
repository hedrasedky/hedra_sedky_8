import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bar_state.dart';

class FilterbarCubit extends Cubit<FilterbarState> {
  FilterbarCubit() : super(FilterbarInitial());
  int index = 0;

  void selectedContainer(int i) {
    index = i;
    emit(FilterbarSelected());
  }
}
