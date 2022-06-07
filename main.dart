import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('تطابق الصور'),
        backgroundColor: Colors.indigo[800],
      ),
      body: Exampage(),
    ),
  ));
}

class Exampage extends StatefulWidget {
  const Exampage({Key? key}) : super(key: key);

  @override
  State<Exampage> createState() => _ExampageState();
}

class _ExampageState extends State<Exampage> {
  List<Widget> answerresult = [];
  /*List<String> question = [
    'هل هذا جمل',
    'هل هذه قطة',
    'هل هذه كليوبترا',
    'هل هذه عين رمسيس',
    'هل هذا علم اليمن',
  ];
  List<String> questionimage = [
    'images/images-1.png',
    'images/images-2.png',
    'images/images-3.png',
    'images/images-4.png',
    'images/images-5.png',
  ];
  List<bool> answer = [true, true, false, true, false];
*/

  List<Question> qgroup = [
    Question(
      q: 'هل هذا جمل',
      i: '../images/images-1.png',
      a: true,
    ),
    Question(
      q: 'هل هذه قطة',
      i: '../images/images-2.png',
      a: true,
    ),
    Question(
      q: 'هل هذه كليوبترا',
      i: '../images/images-3.png',
      a: false,
    ),
    Question(
      q: 'هل هذه عين رمسيس',
      i: '../images/images-4.png',
      a: true,
    ),
    Question(
      q: 'هل هذا علم اليمن',
      i: '../images/images-5.png',
      a: false,
    )
  ];
  // Question q1 = Question(q: 'هل هذا جمل', i: 'images/images-1.png', a: true);

  int questionnumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: answerresult,
        ),
        Expanded(
          flex: 8,
          child: Column(
            children: [
              Image.asset(qgroup[questionnumber].qimage),
              SizedBox(
                height: 10,
              ),
              Text(
                qgroup[questionnumber].qtext,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              color: Colors.green[900],
              child: Text(
                'صح',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correct = qgroup[questionnumber].qanswer;
                if (correct == true) {
                  print('صح');
                } else {
                  print('غلط');
                }
                setState(() {
                  questionnumber++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              color: Colors.red[900],
              child: Text(
                'خطاء',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correct = qgroup[questionnumber].qanswer;
                if (correct == false) {
                  print('صح');
                } else {
                  print('غلط');
                }
                setState(() {
                  questionnumber++;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
