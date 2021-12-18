import 'package:ag_trial_7/info.dart';

class Calculate
{
  info _info;
  Calculate(this._info);

  int clc(){
    int? sonuc;

    sonuc = 90+_info.sporGunu! - _info.icilenSigara!; 
    sonuc = sonuc + (_info.boy! ~/ _info.kilo!);
    return sonuc;
  }

}