import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_model.dart';
export 'nav_model.dart';

class NavWidget extends StatefulWidget {
  const NavWidget({super.key});

  @override
  State<NavWidget> createState() => _NavWidgetState();
}

class _NavWidgetState extends State<NavWidget> {
  late NavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 82.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Color(0xFF0F1925),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.menu_book,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              Text(
                'Explore',
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
        Container(
          width: 82.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Color(0xFF0F1925),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.library_books,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              Text(
                'Program',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
        Container(
          width: 82.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Color(0xFF0F1925),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.quiz,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              Text(
                'Doubts',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
        Container(
          width: 82.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Color(0xFF0F1925),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.stars_sharp,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              Text(
                'Break',
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
        Container(
          width: 82.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Color(0xFF0F1925),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.content_paste_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              Text(
                'Test',
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
