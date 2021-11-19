import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../mission_detail/mission_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return StreamBuilder<UserRecord>(
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
        final signHomePageUserRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFEEEEEE),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFFDBDEE5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                            child: Text(
                              'Side',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF0A42A1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              // concaténation Bienvenue + variable prenom du user
                              'Bienvenue ${signHomePageUserRecord.prenom}',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          NavBarPage(initialPage: 'Profil'),
                                    ),
                                  );
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  height: 60,
                                  constraints: BoxConstraints(
                                    maxWidth: 400,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color:
                                              FlutterFlowTheme.secondaryColor,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                            color:
                                                FlutterFlowTheme.secondaryColor,
                                          ),
                                        ),
                                        child: Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child:
                                              StreamBuilder<List<UserRecord>>(
                                            stream: queryUserRecord(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<UserRecord>
                                                  textUserRecordList =
                                                  snapshot.data;
                                              return Text(
                                                '${textUserRecordList.length.toString()} / 8',
                                                style:
                                                    FlutterFlowTheme.bodyText1,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Complète ton profil',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'Voir les étapes',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.black,
                                        size: 24,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                      child: StreamBuilder<List<MissionRecord>>(
                        stream: queryMissionRecord(),
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
                          List<MissionRecord> textMissionRecordList =
                              snapshot.data;
                          return Text(
                            '${textMissionRecordList.length.toString()} missions disponibles',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: StreamBuilder<List<MissionRecord>>(
                          stream: queryMissionRecord(),
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
                            List<MissionRecord> containerMissionRecordList =
                                snapshot.data;
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              height: MediaQuery.of(context).size.height * 1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Builder(
                                builder: (context) {
                                  final missions =
                                      // Retourne une liste de valeurs contenant les valeurs de champ de l’entrée record "mission".
                                      containerMissionRecordList?.toList() ??
                                          [];
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: missions.length,
                                    itemBuilder: (context, missionsIndex) {
                                      final missionsItem =
                                          missions[missionsIndex];
                                      return Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 10),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  // passage des reférences des datas pour la page mission_detail
                                                  builder: (context) =>
                                                      MissionDetailWidget(
                                                    missionDetail:
                                                        missionsItem.reference,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 252,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFE3DFDF),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: Color(0xFF0A42A1),
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.85,
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF0A42A1),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(0),
                                                        bottomRight:
                                                            Radius.circular(0),
                                                        topLeft:
                                                            Radius.circular(10),
                                                        topRight:
                                                            Radius.circular(10),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.85,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFF323232),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      5, 0, 0),
                                                          child: Text(
                                                            missionsItem
                                                                .intitule,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      2, 0, 0),
                                                          child: Text(
                                                            missionsItem
                                                                .entreprise,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      5, 0, 5),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .calendarAlt,
                                                                  color: FlutterFlowTheme
                                                                      .primaryColor,
                                                                  size: 24,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  missionsItem
                                                                      .dateDebut,
                                                                  style: FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                child: Icon(
                                                                  Icons
                                                                      .chevron_right_sharp,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 24,
                                                                ),
                                                              ),
                                                              Text(
                                                                missionsItem
                                                                    .dateFin,
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.85,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(10),
                                                        bottomRight:
                                                            Radius.circular(10),
                                                        topLeft:
                                                            Radius.circular(0),
                                                        topRight:
                                                            Radius.circular(0),
                                                      ),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFF323232),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          5,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Salaire total estimé : ',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                missionsItem
                                                                    .salaireTotal
                                                                    .toString(),
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme
                                                                      .primaryColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          2,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Salaire horaire brut : ',
                                                                style: FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              missionsItem
                                                                  .salaireHoraire
                                                                  .toString(),
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
