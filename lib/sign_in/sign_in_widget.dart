import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInWidget extends StatefulWidget {
  SignInWidget({Key key}) : super(key: key);

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  bool _loadingButton = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.primaryColor,
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Text(
              'Bonjour !',
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            FFButtonWidget(
              onPressed: () async {
                setState(() => _loadingButton = true);
                try {
                  if (!formKey.currentState.validate()) {
                    return;
                  }
                  final user = await signInWithEmail(
                    context,
                    emailTextController.text,
                    passwordTextController.text,
                  );
                  if (user == null) {
                    return;
                  }

                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          NavBarPage(initialPage: 'SignHomePage'),
                    ),
                    (r) => false,
                  );
                } finally {
                  setState(() => _loadingButton = false);
                }
              },
              text: 'SE CONNECTER',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: FlutterFlowTheme.primaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 14,
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
          centerTitle: true,
          elevation: 4,
        ),
        backgroundColor: Color(0xFFF5F5F5),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TextFormField(
                controller: emailTextController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: FlutterFlowTheme.bodyText1,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: true,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(10, 25, 0, 25),
                ),
                style: FlutterFlowTheme.bodyText1,
                keyboardType: TextInputType.emailAddress,
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Field is required';
                  }

                  return null;
                },
              ),
              TextFormField(
                controller: passwordTextController,
                obscureText: !passwordVisibility,
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  labelStyle: FlutterFlowTheme.bodyText1,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: true,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(10, 25, 0, 25),
                  suffixIcon: InkWell(
                    onTap: () => setState(
                      () => passwordVisibility = !passwordVisibility,
                    ),
                    child: Icon(
                      passwordVisibility
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Color(0xFF757575),
                      size: 22,
                    ),
                  ),
                ),
                style: FlutterFlowTheme.bodyText1,
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Field is required';
                  }

                  return null;
                },
              ),
              Align(
                alignment: AlignmentDirectional(-0.55, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text(
                    'Mot de passe oublié ?',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF0A42A1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
