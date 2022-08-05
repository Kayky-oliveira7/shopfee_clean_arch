import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class PastryPage extends StatefulWidget {
  const PastryPage({Key? key}) : super(key: key);

  @override
  State<PastryPage> createState() => _PastryPageState();
}

class _PastryPageState extends State<PastryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}
