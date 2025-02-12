import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PickerScreen yearManage() {
  return const PickerScreen();
}

class PickerScreen extends StatefulWidget {
  const PickerScreen({super.key});

  @override
  _PickerScreenState createState() => _PickerScreenState();
}

class _PickerScreenState extends State<PickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text(
                _selectedItem,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                _showModalPicker(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showModalPicker(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CupertinoPicker(
              itemExtent: 40,
              onSelectedItemChanged: _onSelectedItemChanged,
              children: _items.map(_pickerItem).toList(),
            ),
          ),
        );
      },
    );
  }

  String _selectedItem = DateTime.now().year.toString();

  final List<String> _items = [
    'item142',
    'item22',
    'item32',
    'item4',
    'item5',
    'item6',
  ];

  Widget _pickerItem(String str) {
    return Text(
      str,
      style: const TextStyle(fontSize: 32),
    );
  }

  void _onSelectedItemChanged(int index) {
    setState(() {
      _selectedItem = _items[index];
    });
  }
}
