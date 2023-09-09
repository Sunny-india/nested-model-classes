import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nested_model_class/sql_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SQLHelper.sqlHelper.getDB();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    ),
  );
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: CupertinoColors.systemRed,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddDetailPage();
          }));
        },
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}

class AddDetailPage extends StatefulWidget {
  const AddDetailPage({super.key});

  @override
  State<AddDetailPage> createState() => _AddDetailPageState();
}

class _AddDetailPageState extends State<AddDetailPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController userHouseNumberController = TextEditingController();
  TextEditingController userAreaController = TextEditingController();
  TextEditingController userCityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            hSpacer(mHeight: 40),
            //user name
            TextFormField(
              controller: userNameController,
            ),
            hSpacer(),
            //user house number
            TextFormField(
              controller: userHouseNumberController,
            ),
            hSpacer(),
            //user area
            TextFormField(
              controller: userAreaController,
            ),
            hSpacer(),
            //user city
            TextFormField(
              controller: userCityController,
            ),
            hSpacer(mHeight: 40),
            CupertinoButton(
              color: CupertinoColors.activeOrange,
              onPressed: () {},
              child: const Text('Enter Details.'),
            ),
          ].map((e) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: e,
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget hSpacer({double mHeight = 11}) {
    return SizedBox(
      height: mHeight,
    );
  }
}
