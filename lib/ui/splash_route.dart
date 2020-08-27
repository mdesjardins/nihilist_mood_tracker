import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'dark_mode_prompt_route.dart';

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

class SplashRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(),
              Text(
                  '“Everything in the world displeases me: but, above all, my displeasure in everything displeases me.”',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline6
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 0.0,
                ),
                child: Text(
                    '- Friedrich Nietsche',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Theme.of(context).colorScheme.primaryVariant,
                  )
                ),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                child: FlatButton(
                  color: Theme.of(context).colorScheme.primaryVariant,
                  textColor: Theme.of(context).colorScheme.onPrimary,
                  onPressed: () {
                    //_showNotification();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DarkModePromptRoute()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        "Continue",
                        style: GoogleFonts.specialElite(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 24.0,
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Future<void> _showNotification() async {
//  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
//      'your channel id', 'your channel name', 'your channel description',
//      importance: Importance.Max, priority: Priority.High, ticker: 'ticker');
//  var iOSPlatformChannelSpecifics = IOSNotificationDetails();
//  var platformChannelSpecifics = NotificationDetails(
//      androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
//  await flutterLocalNotificationsPlugin.show(
//      0, 'plain title', 'plain body', platformChannelSpecifics,
//      payload: 'item x');
//}

