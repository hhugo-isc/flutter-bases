import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  static const String name = "CardsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) => _CardTypeOne(
                label: card['label'], elevation: card['elevation']),
          ),
          ...cards.map(
            (card) => _CardTypeTwo(
                label: card['label'], elevation: card['elevation']),
          ),
          ...cards.map(
            (card) => _CardTypeThree(
                label: card['label'], elevation: card['elevation']),
          ),
          ...cards.map(
            (card) => _CardTypeFour(
                label: card['label'], elevation: card['elevation']),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

class _CardTypeOne extends StatelessWidget {
  const _CardTypeOne({required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_outlined),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}

class _CardTypeTwo extends StatelessWidget {
  const _CardTypeTwo({required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colors.outline),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_outlined),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outline'),
            )
          ],
        ),
      ),
    );
  }
}

class _CardTypeThree extends StatelessWidget {
  const _CardTypeThree({required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surface,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_outlined),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - filled'),
            )
          ],
        ),
      ),
    );
  }
}

class _CardTypeFour extends StatelessWidget {
  const _CardTypeFour({required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      color: colors.surface,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/350',
            height: 350,
            width: 600,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20))),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.accessibility_new_outlined)),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text('$label - filled'),
          )
        ],
      ),
    );
  }
}
