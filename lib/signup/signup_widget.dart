import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signup_e1/signup_e1_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupWidget extends StatefulWidget {
  SignupWidget({Key key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  TextEditingController birthController;
  TextEditingController nomController;
  TextEditingController prenomController;
  TextEditingController emailController;
  TextEditingController phoneController;
  TextEditingController passwordController;
  bool passwordVisibility;
  TextEditingController password2Controller;
  bool password2Visibility;
  bool checkboxListTileValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    birthController = TextEditingController();
    nomController = TextEditingController();
    prenomController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController(text: '+33');
    passwordController = TextEditingController();
    passwordVisibility = false;
    password2Controller = TextEditingController();
    password2Visibility = false;
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
          title: Text(
            'Travaille sur Side',
            style: FlutterFlowTheme.bodyText1.override(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 4,
        ),
        backgroundColor: Color(0xFFF5F5F5),
        body: SafeArea(
          child: Stack(
            children: [
              Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          'assets/images/pexels-photo-6257296.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.4,
                          fit: BoxFit.cover,
                        ),
                        TextFormField(
                          controller: prenomController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Prénom',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                          keyboardType: TextInputType.name,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Un prénom est requis';
                            }

                            return null;
                          },
                        ),
                        TextFormField(
                          controller: nomController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Nom',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.name,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Un nom est requis';
                            }

                            return null;
                          },
                        ),
                        TextFormField(
                          controller: birthController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: '  Date de naissance',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                          keyboardType: TextInputType.number,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Format: jj/mm/aaaa';
                            }
                            if (val.length < 10) {
                              return 'Requires at least 10 characters.';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: emailController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Field is required';
                            }

                            return null;
                          },
                        ),
                        TextFormField(
                          controller: phoneController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Numéro de téléphone',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                          keyboardType: TextInputType.phone,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Field is required';
                            }
                            if (val.length < 9) {
                              return 'Requires at least 9 characters.';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: !passwordVisibility,
                          decoration: InputDecoration(
                            labelText: 'Mot de passe',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => passwordVisibility = !passwordVisibility,
                              ),
                              child: Icon(
                                passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF757575),
                                size: 25,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Un mot de passe de 6 caracter minimum';
                            }
                            if (val.length < 6) {
                              return 'Requires at least 6 characters.';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: password2Controller,
                          obscureText: !password2Visibility,
                          decoration: InputDecoration(
                            labelText: 'Confirmer Mot de passe',
                            labelStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () =>
                                    password2Visibility = !password2Visibility,
                              ),
                              child: Icon(
                                password2Visibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF757575),
                                size: 25,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Un mot de passe de 6 caracter minimum';
                            }
                            if (val.length < 6) {
                              return 'Requires at least 6 characters.';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color(0xFF95B1C4),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Text(
                                'En poursuivant ton inscription; tu acceptes nos conditions générales d\'utilisation.\n\nEn t\'inscrivant sur Side, tu acceptes que nous collections et utilisons certaines de tes données personnelles dans le but de créer ton compte, te sélectionner sur des missions, communiquer avec nous ou les entreprises et, le cas échéant, mettre un terme à notre relation.\nConformément à la réglementation en matière de protection des données, tu disposes d\'un droit d\'accès, de rectification, d\'opposition, de suppression, limitation et portabilité des données te concernant en accord avec notre politique de protection des données.',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 10, 100),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color(0xFF95B1C4),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    value: checkboxListTileValue ??= false,
                                    onChanged: (newValue) => setState(
                                        () => checkboxListTileValue = newValue),
                                    title: Text(
                                      'J\'ai bien compris et j\'accepte',
                                      style: FlutterFlowTheme.title3.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF13459D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (!formKey.currentState.validate()) {
                      return;
                    }

                    if ((passwordController.text) ==
                        (password2Controller.text)) {
                      if (passwordController.text != password2Controller.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Passwords don't match!",
                            ),
                          ),
                        );
                        return;
                      }

                      final user = await createAccountWithEmail(
                        context,
                        emailController.text,
                        passwordController.text,
                      );
                      if (user == null) {
                        return;
                      }

                      final userCreateData = createUserRecordData(
                        prenom: prenomController.text,
                        nom: nomController.text,
                        email: emailController.text,
                        dateDeNaisance: int.parse(birthController.text),
                        numeroDeTelephone: int.parse(phoneController.text),
                      );
                      await UserRecord.collection
                          .doc(user.uid)
                          .update(userCreateData);
                    }
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: Duration(milliseconds: 10),
                        reverseDuration: Duration(milliseconds: 10),
                        child: SignupE1Widget(),
                      ),
                    );
                  },
                  text: 'S\'inscrire',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50,
                    color: Color(0xFF595C6A),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Color(0xFFFBFBFB),
                      width: 1,
                    ),
                    borderRadius: 0,
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
