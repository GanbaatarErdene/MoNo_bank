import 'package:flutter/material.dart';
import 'package:mobile/data/1.dart';

List<money> geter_top() {
  money snap_food = money();
  snap_food.time = 'jan 30,2022';
  snap_food.image = 'upwork.jpg';
  snap_food.buy = true;
  snap_food.fee = '- \$ 100';
  snap_food.name = 'Upwork';
  money snap = money();
  snap.image = 'youtube.png';
  snap.time = 'today';
  snap.buy = true;
  snap.name = 'Youtube';
  snap.fee = '- \$ 60';

  return [snap_food, snap];
}