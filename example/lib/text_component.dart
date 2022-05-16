import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jay/jay.dart';

class TextComponent extends JayComponent {
  @override
  String get name => 'Text';

  @override
  String get description => 'Widget de texto';

  @override
  List<PreviewLayout> get previewLayouts => [
        PreviewLayouts.iphone13Pro.fitHeight(),
        PreviewLayouts.iphoneSE.fitHeight(),
        PreviewLayouts.fit,
      ];

  const TextComponent({super.key});

  @override
  Widget createComponent() {
    return Container(
      alignment: AlignmentDirectional.bottomEnd,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      color: Colors.greenAccent,
      child: Column(
        children: [
          const Center(
            child: Text(
              'alinhamento configurado para end',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          const Spacer(),
          Text(
            'esse texto nao tem alinhamento',
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
          const Text(
            'alinhamento configurado para center',
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
