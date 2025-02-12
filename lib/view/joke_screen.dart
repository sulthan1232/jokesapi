import 'package:flutter/material.dart';
import 'package:jokegenerator/Provider/provider.dart';
import 'package:provider/provider.dart';

class JokeScreen extends StatelessWidget {
  const JokeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text(
          "Random Jokes Gnerator",
          style: TextStyle(fontSize: 27),
        ),
        centerTitle: true,
      ),
      body: Consumer<JokeproviderServices>(
        builder: (context, jokeController, _) {
          return Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (jokeController.jokes != null) ...[
                    Image.network(jokeController.jokes!.iconUrl),
                    //
                    SizedBox(
                      height: 20,
                    ),
                    //
                    Text(
                      jokeController.jokes!.value,
                      style: TextStyle(fontSize: 20),
                    ),
                    //
                    SizedBox(
                      height: 20,
                    ),
                  ],
                  ElevatedButton(
                    onPressed: () {
                      jokeController.getData();
                    },
                    child: Text(jokeController.jokes == null
                        ? "Start Reading Jokes"
                        : "Next Joke"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
