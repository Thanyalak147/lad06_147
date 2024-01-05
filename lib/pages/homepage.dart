import 'package:flutter/material.dart';
import 'package:lad06_147/pages/hobby.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Hobby> hobbies = [];
  List _selectedItem = [];
  bool tiktok = false;

  @override
  void initState() {
    super.initState();
    hobbies = Hobby.getHobby();
    print(hobbies);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("งานอดิเรก"),
      ),
      body: Column(
        children: [
          Column(
            children: createCheckbox(),
          )
          // CheckboxListTile(
          //   value: tiktok,
          //   onChanged: (value) {
          //     setState(() {
          //       tiktok = value!;
          //     });
          //   },
          //   title: Text("Tiktok"),
          // ),
          // CheckboxListTile(
          //   value: false,
          //   onChanged: (value) {},
          //   title: Text("Netflix"),
          // ),
        ],
      ),
    );
  }

  List<Widget> createCheckbox() {
    List<Widget> Widgets = [];

    for (Hobby hb in hobbies) {
      Widgets.add(CheckboxListTile(
        value: hb.value,
        onChanged: (value) {
          setState(() {
            hb.value = value!;

            if (value) {
              _selectedItem.add(hb.name);
            } else {
              _selectedItem.remove(hb.name);
            }
          });
        },
        title: Text(hb.name),
      ));
    }

    return Widgets;
  }
}
