import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwicth = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwicth ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('Elevate Button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Elevate Button');
              },
              child: const Text('Elevated Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Elevate Button');
              },
              child: const Text('Elevated Button'),
            ),
            GestureDetector(
              onTap: (){
                debugPrint('Gesture detector');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                      color: Colors.red,
                  )
                ],
              ),
            ),
            Switch(
              value: isSwicth,
               onChanged: (bool newbool) {
                setState(() {
                  isSwicth = newbool;                
                });
               }),
               Checkbox(value: isCheckbox, onChanged: (bool? newBool){
                setState(() {
                  isCheckbox = newBool;
                });
               }),
               Image.network('https://depor.com/resizer/Gw-z0L4FTEQg4xUw8lic7OX7LN4=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/5IZPJCFHKRH4JIUMTEA2OPINF4.jpg')
          ],
        ),
      ),
    );
  }
}
