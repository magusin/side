import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signup_e3/signup_e3_widget.dart';
import 'package:flutter/material.dart';

class SignupE2Widget extends StatefulWidget {
  SignupE2Widget({
    Key key,
    this.disponible,
  }) : super(key: key);

  final int disponible;

  @override
  _SignupE2WidgetState createState() => _SignupE2WidgetState();
}

class _SignupE2WidgetState extends State<SignupE2Widget> {
  TextEditingController textController;
  bool _loadingButton = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: StreamBuilder<UserRecord>(
        stream: UserRecord.getDocument(currentUserReference),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.primaryColor,
                ),
              ),
            );
          }
          final signupE2UserRecord = snapshot.data;
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
                    'ETAPE 2 SUR 3',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: Image.asset(
                          'assets/images/logo_calendrier.png',
                        ).image,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    'Quand es-tu disponible ?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Nous avons besoin de connaître tes disponibilités pour te proposer des missions qui correspondent à ton agenda.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1,
                  ),
                  TextFormField(
                    controller: textController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Disponibilités',
                      labelStyle: FlutterFlowTheme.bodyText1,
                      hintText: 'jj/mm/aaaa',
                      hintStyle: FlutterFlowTheme.bodyText1,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      filled: true,
                    ),
                    style: FlutterFlowTheme.bodyText1,
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'jj/mm/aaaa';
                      }
                      if (val.length < 10) {
                        return 'Requires at least 10 characters.';
                      }
                      return null;
                    },
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() => _loadingButton = true);
                      try {
                        if (!formKey.currentState.validate()) {
                          return;
                        }
                        final userUpdateData = createUserRecordData(
                          disponibilite: textController.text,
                        );
                        await signupE2UserRecord.reference
                            .update(userUpdateData);
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupE3Widget(),
                          ),
                        );
                      } finally {
                        setState(() => _loadingButton = false);
                      }
                    },
                    text: 'Renseigner mes disponibilités',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.primaryColor,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                    loading: _loadingButton,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
