import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

String convertDateTimeToDMY(DateTime dateTime) {
  String result =
      '${dateTime.day.toString().padLeft(2, '0')}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.year}';

  if (dateTime.day == DateTime.now().day &&
      dateTime.month == DateTime.now().month &&
      dateTime.year == DateTime.now().year) {
    result = '$result (today)';
  }

  return result;
}

Future<Color?> getImagePaletteDarkVibrant(ImageProvider imageProvider) async {
  final PaletteGenerator paletteGenerator = await PaletteGenerator.fromImageProvider(imageProvider);
  return paletteGenerator.darkVibrantColor?.color;
}

Future<PaletteColor?> getImagePaletteDominantColor(ImageProvider imageProvider) async {
  final PaletteGenerator paletteGenerator = await PaletteGenerator.fromImageProvider(imageProvider);
  return paletteGenerator.dominantColor;
}
