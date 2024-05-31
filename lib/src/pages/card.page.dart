import 'package:aula_01/src/ds/themes/themes.dart';
import 'package:aula_01/src/widgets/scafold.widget.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  final String id;
  const CardPage({super.key, required this.id});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return ScafoldWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                transitionOnUserGestures: true,
                tag: '${widget.id}-image',
                child: AspectRatio(
                  aspectRatio: 450 / 800,
                  child: ClipRRect(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/visa-classic-recto-450x800.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Hero(
                transitionOnUserGestures: true,
                tag: '${widget.id}-text',
                child: const Text('data').h4(),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
