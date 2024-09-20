/// The libary supports the three basic data types [Number], [Interval] and
/// [Vector]. It includes a [Parser] to create [Expression]s from Strings.
library math_expressions;

import 'dart:math' as math;

import 'package:vector_math/vector_math.dart' show Vector2, Vector3, Vector4;

part 'src/algebra.dart';
part 'src/expression.dart';
part 'src/functions.dart';
part 'src/parser.dart';
part 'src/evaluator.dart';
