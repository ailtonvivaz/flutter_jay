import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jay/jay.dart';

class SampleComponent extends JayComponent {
  @override
  String get name => 'Sample';

  @override
  String get description => 'A sample component with supported widgets';

  @override
  List<PreviewLayout> get previewLayouts => [
        PreviewLayout(
          size: PreviewSizes.iphone8,
          description: 'iPhone 8',
        ),
        PreviewLayout(
          size: PreviewSizes.iphone13Pro,
          fitHeight: true,
          description: 'iPhone 13 Pro (Fit)',
        ),
        PreviewLayout(
          size: PreviewSizes.fit,
          description: 'Fit',
        ),
      ];

  const SampleComponent();

  @override
  Widget createComponent() {
    return Container(
      alignment: AlignmentDirectional.bottomCenter,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      color: Colors.greenAccent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'text with end alignment lorem ipsum dolor sit amet, consectetur adipiscing elit',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
          ),
          const Divider(),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
              const Spacer(),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: 20,
              height: 20,
              color: Colors.yellow,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'text without alignment lorem ipsum dolor sit amet, consectetur adipiscing elit',
            maxLines: 2,
            style: TextStyle(
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              textBaseline: TextBaseline.ideographic,
              leadingDistribution: TextLeadingDistribution.even,
              locale: const Locale.fromSubtags(
                languageCode: 'pt',
                countryCode: 'BR',
                scriptCode: 'Latn',
              ),
              shadows: const [
                Shadow(
                  blurRadius: 10,
                  color: Colors.blue,
                )
              ],
              fontFeatures: const [
                FontFeature.alternative(3),
                FontFeature.fractions(),
              ],
              decoration: TextDecoration.combine([
                TextDecoration.none,
                TextDecoration.overline,
                TextDecoration.lineThrough,
                TextDecoration.underline,
              ]),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'text with center alignment lorem ipsum dolor sit amet, consectetur adipiscing elit',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              backgroundColor: Colors.red,
              fontWeight: FontWeight.w100,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
            textHeightBehavior: TextHeightBehavior(),
          ),
        ],
      ),
    );
  }
}
