import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationsPromptRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            // maybe someday add:
            // "“I like the idea of a black sun; like a black hole in space,
            // sucking everything into darkness, where we came from and where
            // we're heading” ― Irvine Welsh, The Blade Artist
            //
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(),
              Text(
                  'Enabling notifications lets us to remind you to create a journal entry as part of your tedious daily routine.',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline6
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                child: Container(
                  width: double.infinity,
                  child: FlatButton(
                    color: Theme.of(context).colorScheme.primaryVariant,
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    onPressed: () {
                      _saveNotificationsPreference(false);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                          "Whatever. I guess so.",
                          style:  GoogleFonts.specialElite(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 24.0,
                          )
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                child: Container(
                  width: double.infinity,
                  child: FlatButton(
                    color: Theme.of(context).colorScheme.primaryVariant,
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    onPressed: () {
                      _saveNotificationsPreference(true);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                          "No. What's the point?",
                          style: GoogleFonts.specialElite(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 24.0,
                          )
                      ),
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

  _saveNotificationsPreference(enable) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("notifications", enable);
  }
}
