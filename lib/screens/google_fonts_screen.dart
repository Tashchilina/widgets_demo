import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsDemoScreen extends StatelessWidget {
  const GoogleFontsDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Fonts Demo',
          style: GoogleFonts.sansitaSwashed(),),
        ),
        body: Center(
          child: Column(
            children: [
              Text('This is Google Fonts',
              style: GoogleFonts.dancingScript(),
              ),
              Text('This is Google Fonts',
                style: GoogleFonts.getFont('Lato'),
              ),
              Text('use GoogleFonts with an existing TextStyle',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.purple, letterSpacing: .5),
                ),
              ),
              Text('This is Google Fonts',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4),
              ),
              Text('override params',
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 48,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
