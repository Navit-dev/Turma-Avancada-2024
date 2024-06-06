import 'package:aula_01/src/ds/themes/themes.dart';
import 'package:aula_01/src/widgets/icon_button/icon_button.widget.dart';
import 'package:aula_01/src/widgets/ribbon/ribbon.dart';
import 'package:aula_01/src/widgets/scafold.widget.dart';
import 'package:aula_01/src/widgets/vitrine_with_elements.dart';
import 'package:aula_01/src/widgets/vitrine_with_texts.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
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
              const SizedBox(
                height: 8,
              ),
              const VitrineWithTexts(
                title: 'Titulo Grande',
                descriptions: [
                  'Descriptions menores',
                  'Descriptions menores',
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              VitrineWithElements(
                title: 'Essse é o titulo',
                description: 'Essa é a descrição',
                children: [
                  ...List.generate(
                    10,
                    (i) => AspectRatio(
                      aspectRatio: 450 / 800,
                      child: Column(
                        children: [
                          Expanded(
                            child: HeroControllerScope(
                              controller: HeroController(),
                              child: Hero(
                                transitionOnUserGestures: true,
                                tag:
                                    '$i-assets/visa-classic-recto-450x800.png-image',
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
                          ),
                          Hero(
                            transitionOnUserGestures: true,
                            tag:
                                '$i-assets/visa-classic-recto-450x800.png-text',
                            child: const Text('data').h4(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              VitrineWithElements(
                title: 'Essse é o titulo',
                description: 'Essa é a descrição',
                children: [
                  ...List.generate(
                    10,
                    (i) => AspectRatio(
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
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              VitrineWithElements(
                title: 'Essse é o titulo',
                description: 'Essa é a descrição',
                children: [
                  ...List.generate(
                    10,
                    (i) => AspectRatio(
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
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              // Center(
              //   child: IconButton(
              //     onPressed: (){},
              //     icon: Icon(Icons.dangerous),
              //   ),
              // ),
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Ribbon(
              height: 4,
            ),
            BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.map_outlined),
                  label: 'map_outlined',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: 'favorite_border',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  label: 'add',
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: const NavitIconButton(
          icon: Icons.search,
        ),
      ),
    );
  }
}
