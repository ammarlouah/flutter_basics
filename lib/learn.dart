import 'package:flutter/material.dart';

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  bool isSwitch = false;
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Botona hhh');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/jackieBoy.jpg',
              height: 300,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Texto',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('Hadi Potona');
              },
              child: const Text(
                'Botona 3awtani hh',
              ),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Hadi Potona akhra');
              },
              child: const Text(
                'Botona 3awtani 3awtani hhh',
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Hadi Potona akhra akhra');
              },
              child: const Text(
                'Botona 3awtani 3awtani 3awtani hhh',
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('Hada Row hh');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text(
                    'Row text',
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              activeColor: Colors.blue,
              value: isCheck,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheck = newBool;
                });
              },
            ),
            Image.network(
              'https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2014/12/10/1418230653695/5a092e63-3853-4da8-acd4-fc4e10787b11-1020x612.jpeg?width=620&quality=85&auto=format&fit=max&s=7d0db699aa00fb8d80766cb24ba1ae81',
            ),
          ],
        ),
      ),
    );
  }
}
