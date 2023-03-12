import 'package:flutter/material.dart';
import 'im.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[700],
          title: Center(
            child: Text('Rock Paper Scissor'),
          ),
        ),
        backgroundColor: Colors.blue,
        body: Game(),
      ),
    );
  }
}

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var left = randomizer();
  var right = randomizer();
  String whoWon() {

    if (left == right) {
      return 'Draw';
    } else if (left == 'rock' && right == 'paper') {
      return 'Player 2 Won';
    } else if (left == 'paper' && right == 'rock') {
      return 'Player 1 Won';
    } else if (left == 'paper' && right == 'scissor') {
      return 'Player 2 Won';
    }else if (left == 'scissor' && right == 'paper') {
      return 'Player 1 Won';
    }else if (left == 'rock' && right == 'scissor') {
      return 'Player 1 Won';
    }else if (left == 'scissor' && right == 'rock') {
      return 'Player 2 Won';
    }else{
      return "null";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Player 1',
                style: TextStyle(fontSize: 25, fontFamily: 'Pacifico'),
              ),
              Text(
                'Player 2',
                style: TextStyle(fontSize: 25, fontFamily: 'Pacifico'),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Image(
                  image: AssetImage(
                    'images/$left.png',
                  ),
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage(
                    'images/$right.png',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                left = randomizer();
                right = randomizer();
              });
            },
            child: Text('start'),
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.purple[900]!)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            whoWon(),
            style: TextStyle(fontSize: 25, fontFamily: 'Pangolin'),
          )
        ],
      ),
    );
  }
}
