import 'package:flutter/material.dart';

class TopicsPage extends StatefulWidget {
  const TopicsPage({super.key});

  @override
  State<TopicsPage> createState() => _TopicsPageState();
}

final List<Map> chapters =
    List.generate(12, (index) => {"id": index, "name": "Chapter ${index + 1}"})
        .toList();

final List<Map<String, dynamic>> chapterName = [
  {'name': 'ATOMIC THEORY AND NATURE OF ATOMS', 'page': '/chapterone'},
  {'name': 'THE PERIODIC TABLE', 'page': '/chaptertwo'},
  {'name': 'THE QUANTUM MECHANICAL MODEL', 'page': '/chapterthree'},
  {'name': 'CHEMICAL SYMBOLS, FORMULAS AND EQUATIONS', 'page': '/chapterfour'},
  {'name': 'STOICHIOMETRY AND MOLE CONCEPT', 'page': '/chapterfive'},
  {'name': 'STATE OF MATTER AND THE GAS LAWS', 'page': '/chaptersix'},
  {
    'name': 'CHEMISTRY OF THE GROUP 1, 2 AND 3 ELEMENTS',
    'page': '/chapterseven'
  },
  {'name': 'ELECTROLYSIS', 'page': '/chaptereight'},
  {'name': 'OXIDATION AND REDUCTION REACTION', 'page': '/chapternine'},
  {'name': 'CHEMICAL EQUILIBRIUM', 'page': '/chapterten'},
  {'name': 'CHEMICAL BONDING', 'page': '/chaptereleven'},
  {'name': 'ACID BASES & SALTS', 'page': '/chaptertwelve'},
];

class _TopicsPageState extends State<TopicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapters'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        // implement GridView.builder
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 40),
            itemCount: chapters.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, '${chapterName[index]["page"]}'),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(chapters[index]["name"],
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Text(
                          chapterName[index]["name"],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                ),
              );
            }),
      ),
    );
  }

  //  Widget _card2(String text1) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Kindacode.com'),
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       // implement GridView.builder
  //       child: GestureDetector(
  //         onTap: () => Navigator.pushNamed(context, text1),
  //         child: GridView.builder(
  //             gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
  //                 maxCrossAxisExtent: 200,
  //                 childAspectRatio: 3 / 2,
  //                 crossAxisSpacing: 30,
  //                 mainAxisSpacing: 30),
  //             itemCount: chapters.length,
  //             itemBuilder: (BuildContext ctx, index) {
  //               return Container(
  //                 alignment: Alignment.center,
  //                 decoration: BoxDecoration(
  //                     color: Colors.amber,
  //                     borderRadius: BorderRadius.circular(15)),
  //                 child: Column(
  //                     // crossAxisAlignment: CrossAxisAlignment.center,
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: <Widget>[
  //                       Text(chapters[index]["name"]),
  //                       Text(
  //                         chapterName[index]["name"],
  //                         textAlign: TextAlign.center,
  //                       ),
  //                     ]),
  //               );
  //             }),
  //       ),
  //     ),
  //   );
  // }

}
