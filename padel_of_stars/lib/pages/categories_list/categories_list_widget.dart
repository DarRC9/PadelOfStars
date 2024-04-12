import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'categories_list_model.dart';
export 'categories_list_model.dart';

class CategoriesListWidget extends StatefulWidget {
  const CategoriesListWidget({
    super.key,
    required this.idtournament,
  });

  final int? idtournament;

  @override
  State<CategoriesListWidget> createState() => _CategoriesListWidgetState();
}

class _CategoriesListWidgetState extends State<CategoriesListWidget>
    with TickerProviderStateMixin {
  late CategoriesListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesListModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: FutureBuilder<List<TorneosRow>>(
            future: TorneosTable().querySingleRow(
              queryFn: (q) => q.eq(
                'id',
                widget.idtournament,
              ),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              List<TorneosRow> textTorneosRowList = snapshot.data!;
              final textTorneosRow = textTorneosRowList.isNotEmpty
                  ? textTorneosRowList.first
                  : null;
              return GradientText(
                valueOrDefault<String>(
                  textTorneosRow?.nombre,
                  'Nombre Torneo',
                ),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                    ),
                colors: [
                  FlutterFlowTheme.of(context).primary,
                  FlutterFlowTheme.of(context).tertiary
                ],
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
              );
            },
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            GradientText(
              'Categorías',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Outfit',
                    letterSpacing: 0.0,
                  ),
              colors: [
                FlutterFlowTheme.of(context).primary,
                FlutterFlowTheme.of(context).tertiary
              ],
              gradientDirection: GradientDirection.ltr,
              gradientType: GradientType.linear,
            ),
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: const Alignment(0.0, 0),
                    child: FlutterFlowButtonTabBar(
                      useToggleButtonStyle: false,
                      isScrollable: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                      unselectedLabelStyle: const TextStyle(),
                      labelColor: const Color(0xFF4B39EF),
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      backgroundColor: const Color(0x4C4B39EF),
                      borderColor: const Color(0xFF4B39EF),
                      borderWidth: 2.0,
                      borderRadius: 12.0,
                      elevation: 0.0,
                      labelPadding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      buttonMargin:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 16.0, 0.0),
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      tabs: const [
                        Tab(
                          text: 'Masculino',
                        ),
                        Tab(
                          text: 'Femenino',
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [() async {}, () async {}][i]();
                      },
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 0.0, 0.0),
                              child: GradientText(
                                'Ligas',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                colors: [
                                  FlutterFlowTheme.of(context).primary,
                                  FlutterFlowTheme.of(context).secondary
                                ],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FutureBuilder<List<CategoriasRow>>(
                                future: CategoriasTable().queryRows(
                                  queryFn: (q) => q.eq(
                                    'Sexo',
                                    true,
                                  ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<CategoriasRow>
                                      containerCategoriasRowList =
                                      snapshot.data!;
                                  return Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.95,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.5,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          FlutterFlowTheme.of(context).primary,
                                          FlutterFlowTheme.of(context).secondary
                                        ],
                                        stops: const [0.0, 1.0],
                                        begin: const AlignmentDirectional(0.0, -1.0),
                                        end: const AlignmentDirectional(0, 1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: FutureBuilder<
                                        List<CategoriasTorneosRow>>(
                                      future:
                                          CategoriasTorneosTable().queryRows(
                                        queryFn: (q) => q
                                            .in_(
                                              'idCategoria',
                                              containerCategoriasRowList
                                                  .map((e) => e.id)
                                                  .toList(),
                                            )
                                            .eq(
                                              'idTorneo',
                                              widget.idtournament,
                                            ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<CategoriasTorneosRow>
                                            listViewCategoriasTorneosRowList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: const EdgeInsets.fromLTRB(
                                            0,
                                            5.0,
                                            0,
                                            0,
                                          ),
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewCategoriasTorneosRowList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewCategoriasTorneosRow =
                                                listViewCategoriasTorneosRowList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'CategoryGamePage',
                                                    queryParameters: {
                                                      'idcategorytournament':
                                                          serializeParam(
                                                        listViewCategoriasTorneosRow
                                                            .id,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                12.0, 8.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        FutureBuilder<
                                                            List<
                                                                CategoriasRow>>(
                                                          future:
                                                              CategoriasTable()
                                                                  .querySingleRow(
                                                            queryFn: (q) =>
                                                                q.eq(
                                                              'id',
                                                              listViewCategoriasTorneosRow
                                                                  .idCategoria,
                                                            ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<CategoriasRow>
                                                                imageCategoriasRowList =
                                                                snapshot.data!;
                                                            final imageCategoriasRow =
                                                                imageCategoriasRowList
                                                                        .isNotEmpty
                                                                    ? imageCategoriasRowList
                                                                        .first
                                                                    : null;
                                                            return ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                imageCategoriasRow!
                                                                    .iconUrl!,
                                                                width: 65.0,
                                                                height: 65.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  CategoriasRow>>(
                                                            future: CategoriasTable()
                                                                .querySingleRow(
                                                              queryFn: (q) =>
                                                                  q.eq(
                                                                'id',
                                                                listViewCategoriasTorneosRow
                                                                    .idCategoria,
                                                              ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<CategoriasRow>
                                                                  textCategoriasRowList =
                                                                  snapshot
                                                                      .data!;
                                                              final textCategoriasRow =
                                                                  textCategoriasRowList
                                                                          .isNotEmpty
                                                                      ? textCategoriasRowList
                                                                          .first
                                                                      : null;
                                                              return Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  textCategoriasRow
                                                                      ?.nombre,
                                                                  'Nombre',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              );
                                                            },
                                                          ),
                                                        ),
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
                          ].divide(const SizedBox(height: 20.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 0.0, 0.0),
                              child: GradientText(
                                'Ligas',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                colors: [
                                  FlutterFlowTheme.of(context).primary,
                                  FlutterFlowTheme.of(context).secondary
                                ],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FutureBuilder<List<CategoriasRow>>(
                                future: CategoriasTable().queryRows(
                                  queryFn: (q) => q.eq(
                                    'Sexo',
                                    false,
                                  ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<CategoriasRow>
                                      containerCategoriasRowList =
                                      snapshot.data!;
                                  return Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.95,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.5,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          FlutterFlowTheme.of(context).tertiary,
                                          FlutterFlowTheme.of(context).primary
                                        ],
                                        stops: const [0.0, 1.0],
                                        begin: const AlignmentDirectional(0.0, -1.0),
                                        end: const AlignmentDirectional(0, 1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: FutureBuilder<
                                        List<CategoriasTorneosRow>>(
                                      future:
                                          CategoriasTorneosTable().queryRows(
                                        queryFn: (q) => q
                                            .in_(
                                              'idCategoria',
                                              containerCategoriasRowList
                                                  .map((e) => e.id)
                                                  .toList(),
                                            )
                                            .eq(
                                              'idTorneo',
                                              widget.idtournament,
                                            ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<CategoriasTorneosRow>
                                            listViewCategoriasTorneosRowList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: const EdgeInsets.fromLTRB(
                                            0,
                                            5.0,
                                            0,
                                            0,
                                          ),
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewCategoriasTorneosRowList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewCategoriasTorneosRow =
                                                listViewCategoriasTorneosRowList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'CategoryGamePage',
                                                    queryParameters: {
                                                      'idcategorytournament':
                                                          serializeParam(
                                                        listViewCategoriasTorneosRow
                                                            .id,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                12.0, 8.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        FutureBuilder<
                                                            List<
                                                                CategoriasRow>>(
                                                          future:
                                                              CategoriasTable()
                                                                  .querySingleRow(
                                                            queryFn: (q) =>
                                                                q.eq(
                                                              'id',
                                                              listViewCategoriasTorneosRow
                                                                  .idCategoria,
                                                            ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<CategoriasRow>
                                                                imageCategoriasRowList =
                                                                snapshot.data!;
                                                            final imageCategoriasRow =
                                                                imageCategoriasRowList
                                                                        .isNotEmpty
                                                                    ? imageCategoriasRowList
                                                                        .first
                                                                    : null;
                                                            return ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                imageCategoriasRow!
                                                                    .iconUrl!,
                                                                width: 65.0,
                                                                height: 65.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  CategoriasRow>>(
                                                            future: CategoriasTable()
                                                                .querySingleRow(
                                                              queryFn: (q) =>
                                                                  q.eq(
                                                                'id',
                                                                listViewCategoriasTorneosRow
                                                                    .idCategoria,
                                                              ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<CategoriasRow>
                                                                  textCategoriasRowList =
                                                                  snapshot
                                                                      .data!;
                                                              final textCategoriasRow =
                                                                  textCategoriasRowList
                                                                          .isNotEmpty
                                                                      ? textCategoriasRowList
                                                                          .first
                                                                      : null;
                                                              return Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  textCategoriasRow
                                                                      ?.nombre,
                                                                  'Nombre',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              );
                                                            },
                                                          ),
                                                        ),
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
                          ].divide(const SizedBox(height: 20.0)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ].addToStart(const SizedBox(height: 20.0)),
        ),
      ),
    );
  }
}
