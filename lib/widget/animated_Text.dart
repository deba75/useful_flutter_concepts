import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Dabasis Das',
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    speed: Duration(milliseconds: 200))
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText(
                  'Hello',
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                RotateAnimatedText(
                  'World',
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
              // totalRepeatCount: 4,
              // pause: Duration(milliseconds: 200),
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Dabasis',
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                WavyAnimatedText(
                  'Dabasis',
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
