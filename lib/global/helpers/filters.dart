import 'package:flutter/services.dart';

FilteringTextInputFormatter numberFiltering() => FilteringTextInputFormatter.allow(RegExp('[0-9]'));

//decimal filtering
FilteringTextInputFormatter decimalFiltering() => FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'));

FilteringTextInputFormatter whiteSpaceFiltering() => FilteringTextInputFormatter.deny(RegExp(r'\s'));
