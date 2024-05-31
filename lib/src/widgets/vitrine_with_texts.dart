import 'package:aula_01/src/ds/themes/themes.dart';
import 'package:flutter/material.dart';

class VitrineWithTexts extends StatelessWidget {
  final String title;
  final List<String> descriptions;

  const VitrineWithTexts({
    super.key,
    required this.title,
    this.descriptions = const [],
  });

  @override
  Widget build(BuildContext context) {
    

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).h2(),
                ...descriptions.map(
                  (description) => Text(
                    description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).h3(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
