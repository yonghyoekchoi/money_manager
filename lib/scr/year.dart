import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_manager/scr/month.dart';

class YearScreen extends StatefulWidget {
  const YearScreen({super.key});

  @override
  State<YearScreen> createState() => _YearScreenState();
}

class _YearScreenState extends State<YearScreen> {
  String _selectedItem = DateTime.now().year.toString();
  List<String> monthList = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: OutlinedButton(
                child: Text(
                  _selectedItem,
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
                onPressed: () {
                  _showModalPicker(context);
                },
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: monthList.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MonthPage(month: index),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(monthList[index],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 6),
                            const Text(
                              "money",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Years List +/-50
  List<String> years = [];

  void _showModalPicker(BuildContext context) {
    for (int i = DateTime.now().year - 50; i <= DateTime.now().year + 50; i++) {
      years.add(i.toString());
    }
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
              scrollController: FixedExtentScrollController(
                  initialItem: years.indexOf(_selectedItem)),
              children: years.map(_pickerItem).toList(),
            ),
          ),
        );
      },
    );
  }

  Widget _pickerItem(String str) {
    return Text(
      str,
      style: const TextStyle(fontSize: 32),
    );
  }

  void _onSelectedItemChanged(int index) {
    setState(() {
      _selectedItem = years[index];
    });
  }
}
