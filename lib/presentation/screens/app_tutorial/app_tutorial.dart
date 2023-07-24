import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Buscar comida',
      'Labore nisi incididunt do consectetur mollit veniam nostrud consequat dolore pariatur laboris adipisicing duis. Dolor quis reprehenderit cillum aliqua et nulla velit culpa. Eu Lorem aute mollit ex officia dolore et consequat ea aliqua ex anim sint. Exercitation ex aute eu culpa excepteur excepteur nisi magna. Nisi nisi ea reprehenderit reprehenderit do nostrud enim est ad reprehenderit officia aliquip commodo voluptate.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rápida',
      'Tempor adipisicing exercitation commodo veniam duis et nisi ut esse ad. Tempor enim irure mollit aliquip deserunt id aute dolor. Commodo anim in minim consectetur Lorem aliqua enim irure in veniam dolore voluptate.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Dolor amet qui dolore quis sit proident occaecat voluptate excepteur aliqua exercitation. Voluptate consectetur consectetur velit id laborum fugiat laboris anim in adipisicing pariatur reprehenderit. Culpa nulla dolore eiusmod mollit nostrud consectetur consequat exercitation nostrud pariatur.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const String name = "Tutorial Screen";
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  late final PageController pageViewController;
  bool endReached = false;
  @override
  void initState() {
    super.initState();
    pageViewController = PageController();
    pageViewController.addListener(_onPageChanged);
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  void _onPageChanged() {
    final page = pageViewController.page ?? 0;
    if (!endReached && page >= slides.length - 1.5) {
      setState(() {
        endReached = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        PageView(
          controller: pageViewController,
          physics: const BouncingScrollPhysics(),
          children: slides
              .map((slideInfo) => _Slide(
                  title: slideInfo.title,
                  caption: slideInfo.caption,
                  imageUrl: slideInfo.imageUrl))
              .toList(),
        ),
        Positioned(
          right: 20,
          top: 50,
          child: TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Skip'),
          ),
        ),
        endReached
            ? Positioned(
                right: 30,
                bottom: 30,
                child: FadeInRight(
                  from: 15,
                  delay: const Duration(seconds: 1),
                  child: FilledButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: const Text('Comenzar')),
                ),
              )
            : const SizedBox()
      ]),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide(
      {super.key,
      required this.title,
      required this.caption,
      required this.imageUrl});

  final String title;
  final String caption;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: textStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              caption,
              style: captionStyle,
            )
          ],
        ),
      ),
    );
  }
}
