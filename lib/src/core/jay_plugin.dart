import 'converter/jay_value_converter.dart';
import 'converter/jay_widget_converter.dart';

abstract class JayPlugin {
  List<JayWidgetConverter> get widgetConverters;
  List<JayValueConverter> get valueConverters;
}
