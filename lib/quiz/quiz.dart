import 'package:flutter/material.dart';
import 'package:chemistry_app/quiz/model.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
    setState(() {
      _isLocked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz Page')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          const SizedBox(height: 32),
          Text('Question $_questionNumber/${questions.length}'),
          const Divider(thickness: 1, color: Colors.grey),
          Expanded(
              child: PageView.builder(
            controller: _controller,
            itemCount: questions.length,
            itemBuilder: (context, index) {
              final question = questions[index];
              return buildQuestion(question);
            },
            physics: const NeverScrollableScrollPhysics(),
          )),
          _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }

  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
          question.text,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 32),
        Expanded(
          child: OptionsWidget(
            question: question,
            onClickedOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
                _isLocked = question.isLocked;
                if (question.selectedOption!.isCorrect) {
                  _score++;
                }
              }
            },
          ),
        )
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        if (_questionNumber < questions.length) {
          _controller.nextPage(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInExpo,
          );

          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(score: _score),
              ));
        }
      },
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(300, 50), maximumSize: const Size(300, 50)),
      child:
          Text(_questionNumber < questions.length ? 'Next Page' : 'See Result'),
    );
  }
}

class OptionsWidget extends StatefulWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: widget.question.options
              .map((option) => buildOption(context, option))
              .toList(),
        ),
      );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, widget.question);
    return GestureDetector(
      onTap: () => widget.onClickedOption(option),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color),
          color: Colors.grey.shade200,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.code,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              option.text,
              style: const TextStyle(fontSize: 20),
            ),
            getIconForOption(option, widget.question)
          ],
        ),
      ),
    );
  }

  Color getColorForOption(option, question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.grey.shade300;
  }

  Widget getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? const Icon(Icons.check_circle, color: Colors.green)
            : const Icon(Icons.cancel, color: Colors.red);
      } else if (option.isCorrect) {
        return const Icon(Icons.check_circle, color: Colors.green);
      }
    }
    return const SizedBox.shrink();
  }
}

class ResultPage extends StatefulWidget {
  final int score;
  const ResultPage({super.key, required this.score});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  // void resetQuiz() {
  //   for (var question in questions) {
  //     question.reset();
  //   }
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('You got ${widget.score}/${questions.length}')),
          ElevatedButton(
              onPressed: () {
                // resetQuiz();

                Navigator.of(context).pop();
              },
              child: const Text('Go back to Home Page'))
        ],
      ),
    );
  }
}
