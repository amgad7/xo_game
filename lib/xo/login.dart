import 'package:flutter/material.dart';
import 'package:xo_game/xo/players_model.dart';
import 'package:xo_game/xo/xo_game.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName="login";
  LoginScreen({super.key});

  String player1 = "";
  TextEditingController controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                player1 = value;
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  label: Text("Player one"),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  )),
            ),
            SizedBox(
              height: 14,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                label: Text("Player two"),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            SizedBox(height: 12,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, XoGame.routeName,
                arguments: PlayersModel(player1, controller1.text)
                );

              },
              child: Text("lets go"),
            )
          ],
        ),
      ),
    );
  }
}
