import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PodCastPage extends StatefulWidget {
  static const route = '/podcast';
  const PodCastPage({super.key});

  @override
  State<PodCastPage> createState() => _PodCastPageState();
}

class _PodCastPageState extends State<PodCastPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
