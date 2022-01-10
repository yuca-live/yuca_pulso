/// A [BorderRadius] factory to creates all the Design System's listed BorderRadius values.

library yuca_pulso;

import 'package:flutter/material.dart';

class YucaBorderRadius extends BorderRadius {
  /// Returns a [BorderRadius] with the `small` size
  const YucaBorderRadius.small() : super.all(const Radius.circular(4));

  /// Returns a [BorderRadius] with the `medium` size
  const YucaBorderRadius.medium() : super.all(const Radius.circular(6));

  /// Returns a [BorderRadius] with the `large` size
  const YucaBorderRadius.large() : super.all(const Radius.circular(8));

  /// Returns a [BorderRadius] with the `extra large` size
  const YucaBorderRadius.extraLarge() : super.all(const Radius.circular(10));

  /// Returns a [BorderRadius] with a `complete Circle`
  /// It will depend on the Object Size. If it has a big size, probably
  /// we will have to find another way to transform it into a circle.
  /// A better approach should be to use the [Shape] property.
  const YucaBorderRadius.full() : super.all(const Radius.circular(100));
}
