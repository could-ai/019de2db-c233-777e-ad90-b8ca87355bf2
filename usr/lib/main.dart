import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/workspace_screen.dart';
import 'screens/phase1_scoping_screen.dart';
import 'screens/phase2_design_screen.dart';
import 'screens/phase3_planning_screen.dart';
import 'screens/phase4_collection_screen.dart';
import 'screens/phase5_analysis_screen.dart';
import 'screens/phase6_reporting_screen.dart';
import 'screens/phase7_learning_screen.dart';

void main() {
  runApp(const EvalGuideApp());
}

class EvalGuideApp extends StatelessWidget {
  const EvalGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EvalGuide',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const WorkspaceScreen(),
        '/phase1': (context) => const Phase1ScopingScreen(),
        '/phase2': (context) => const Phase2DesignScreen(),
        '/phase3': (context) => const Phase3PlanningScreen(),
        '/phase4': (context) => const Phase4CollectionScreen(),
        '/phase5': (context) => const Phase5AnalysisScreen(),
        '/phase6': (context) => const Phase6ReportingScreen(),
        '/phase7': (context) => const Phase7LearningScreen(),
      },
    );
  }
}
