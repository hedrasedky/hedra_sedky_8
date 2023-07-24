import 'package:bloc/bloc.dart';
import 'package:flutter_application_8/Screens/radio.dart';
import 'package:meta/meta.dart';

import '../../../details.dart';

part 'radio_state.dart';

class RadioCubit extends Cubit<RadioState> {
  RadioCubit() : super(RadioInitial());
  int radioIndex = numbers[0];

  void onpress(String value) {
    emit(value as RadioState);
  }

  void radioSelected() {}
}
