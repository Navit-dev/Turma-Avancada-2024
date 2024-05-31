import 'dart:math';

import 'package:aula_01/src/ds/themes/default.theme.dart';
import 'package:aula_01/src/pages/card.page.dart';
import 'package:flutter/material.dart';

class VitrineWithElements extends StatelessWidget {
  final String title;
  final String description;
  final List<Widget> children;

  const VitrineWithElements(
      {super.key,
      required this.title,
      this.description = '',
      this.children = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
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
                    ).h3(),
                    Text(
                      description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).h5(),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        AspectRatio(
          aspectRatio: 8 / 3,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int i) {
              return GestureDetector(
                child: children[i],
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => CardPage(
                        id: '$i-assets/visa-classic-recto-450x800.png',
                      ),
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, i) {
              return const SizedBox(
                width: 8,
              );
            },
            itemCount: children.length,
          ),
        ),
      ],
    );
  }
}
