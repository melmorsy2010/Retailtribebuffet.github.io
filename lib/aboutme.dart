import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AboutMePage extends StatelessWidget {
  final String phoneNumber = '201011937796'; // replace with your phone number

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text('About Me'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.brown[400]!, Colors.brown[800]!],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage(
                  'assets/images/nazmy.jpg'), // replace with your profile photo
            ),
            SizedBox(height: 20.0),
            Text(
              'Mohamed Nazmy',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  'Be',
                  style: TextStyle(fontSize: 30.0,color: Colors.white),
                ),
                const SizedBox(width: 20.0, height: 100.0),
                DefaultTextStyle(
                  style:  GoogleFonts.cairo(
                    fontSize: 20.0,
                    color: Colors.amber
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true, // make the animation repeated

                    animatedTexts: [
                      RotateAnimatedText('AWESOME'),
                      RotateAnimatedText('OPTIMISTIC'),
                      RotateAnimatedText('DIFFERENT'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(FontAwesome.facebook),
                  color: Colors.white,
                  onPressed: () {
                    launchUrl('https://www.facebook.com/mhammednazmy');
                  },
                ),
                IconButton(
                  icon: Icon(FontAwesome.linkedin),
                  color: Colors.white,
                  onPressed: () {
                    launchUrl(
                        'https://www.linkedin.com/in/mohamed-nazmy-1b572656/');
                  },
                ),
                IconButton(
                  icon: Icon(FontAwesome.instagram),
                  color: Colors.white,
                  onPressed: () {
                    launchUrl(
                        'https://www.instagram.com/mohammed_nazmy/?hl=en');
                  },
                ),
                IconButton(
                  icon: Icon(FontAwesome.whatsapp),
                  color: Colors.white,
                  onPressed: () {
                    launchWhatsApp();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchWhatsApp() async {
    String url = 'https://wa.me/$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
