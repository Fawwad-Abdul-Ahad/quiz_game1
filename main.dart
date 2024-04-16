import 'dart:io';

void main() {
  List<Map<String, String>> quiz = [
    {
      "question": "What is the chemical symbol for water ?",
      "options": "1.H2O    2.CO2    3.SO4",
      "answer1": "H2O"
    },
    {
      "question": "what is the capital city of France ?",
      "options": "1.Berlin    2.Madrid    3.Paris",
      "answer1": "Paris"
    },
    {
      "question": " Which actor played the character Harry Potter in the film series ?",
      "options": "1.Daniel Radcliffe    2.Emma Watson    3.Tom Felton",
      "answer1": "Daniel Radcliffe "
    },
    {
      "question": " In which sport would you perform a slam dunk",
      "options": "1.Tennis    2.Basketball    3.Golf",
      "answer1": "Basketball"
    },
     {
      "question": " What does CPU stand for in computing",
      "options": "1.Central Processing Unit    2.Computer Personal Unit    3.Central Personal Unit",
      "answer1": "Central Processing Unit"
    },
  ];

  int score = 0;
  for (int i = 0; i < quiz.length; i++) {
    print(
        "Question ${i + 1}: ${quiz[i]["question"]} \n${quiz[i]["options"]}");

    print("Give me answer for question ${i + 1}");
    String answer = stdin.readLineSync()!;

    if (answer.toLowerCase() == quiz[i]["answer1"]!.toLowerCase()) {
      print("Congratulations! Your answer is correct");
      score = score + 1;
    } else {
      print("Wrong answer. The correct answer is: ${quiz[i]["answer1"]}");
    }
  }

  print("\nQuiz completed! Your final score is: $score out of ${quiz.length}");
}
