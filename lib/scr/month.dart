import 'package:flutter/material.dart';

class MonthPage extends StatefulWidget {
  final int month;
  const MonthPage({super.key, required this.month});

  @override
  State<MonthPage> createState() => _MonthPageState();
}

class _MonthPageState extends State<MonthPage> {
  late int month;

  @override
  void initState() {
    super.initState();

    // 受け取ったデータを状態を管理する変数に格納
    month = widget.month + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(month.toString()),
      ),
    );
  }
}
