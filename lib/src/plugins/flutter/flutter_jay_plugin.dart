import '../../../core.dart';
import 'values/values.dart';
import 'widgets/widgets.dart';

class FlutterJayPlugin implements JayPlugin {
  @override
  List<JayWidgetConverter<Widget>> get widgetConverters => [
        TextWidgetConverter(),
        ContainerWidgetConverter(),
        ColumnWidgetConverter(),
        CenterWidgetConverter(),
        DividerWidgetConverter(),
        SpacerWidgetConverter(),
        RowWidgetConverter(),
        StackWidgetConverter(),
        SizedBoxWidgetConverter(),
      ];

  @override
  List<JayValueConverter> get valueConverters => [
        ColorValueConverter(),
        EdgeInsetsGeometryValueConverter(),
        AlignmentGeometryValueConverter(),
        TextAlignValueConverter(),
        TextStyleValueConverter(),
        FontWeightValueConverter(),
        FontStyleValueConverter(),
        TextBaselineValueConverter(),
        TextLeadingDistributionValueConverter(),
        LocaleValueConverter(),
        ShadowValueConverter(),
        OffsetValueConverter(),
        FontFeatureValueConverter(),
        TextDecorationValueConverter(),
        TextDecorationStyleValueConverter(),
        TextOverflowValueConverter(),
        TextWidthBasisValueConverter(),
        TextHeightBehaviorValueConverter(),
        BoxConstraintsValueConverter(),
        MainAxisAlignmentValueConverter(),
        MainAxisSizeValueConverter(),
        CrossAxisAlignmentValueConverter(),
        VerticalDirectionValueConverter(),
        StackFitValueConverter(),
        ClipValueConverter(),
      ];
}
