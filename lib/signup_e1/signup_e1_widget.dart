import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupE1Widget extends StatefulWidget {
  SignupE1Widget({Key key}) : super(key: key);

  @override
  _SignupE1WidgetState createState() => _SignupE1WidgetState();
}

class _SignupE1WidgetState extends State<SignupE1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'ETAPE 1 SUR 3',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Où habites-tu ?',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Nous avons besoin de connaître ton adresse pour te proposer des missions proches de chez toi.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
