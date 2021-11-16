import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignHomePageWidget extends StatefulWidget {
  SignHomePageWidget({Key key}) : super(key: key);

  @override
  _SignHomePageWidgetState createState() => _SignHomePageWidgetState();
}

class _SignHomePageWidgetState extends State<SignHomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Well played',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.bodyText1.override(
              fontFamily: 'Poppins',
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
