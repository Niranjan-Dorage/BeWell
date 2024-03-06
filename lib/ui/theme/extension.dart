import 'package:bewell/file_exporter.dart';

extension BuildContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
