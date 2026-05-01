# EvalGuide

EvalGuide is a full-stack evaluation guidance application designed and built for Viola C. Rop, a Monitoring, Evaluation and Learning Specialist with 15+ years of experience across East and Southern Africa. 

This app serves as a flagship digital product for independent consulting and coaching practices, and functions as a standalone tool licensed to development sector organisations. EvalGuide is designed to work seamlessly as both a responsive web application and a mobile app, providing a structured, 7-phase approach to mastering programme evaluation.

## App Features

EvalGuide walks users through the complete lifecycle of programme evaluation with seven distinct phases:
- **Phase 1: Scoping Your Evaluation** - Define the purpose, stakeholders, and boundaries of the evaluation.
- **Phase 2: Evaluation Design** - Determine what will be measured and how, using ToC reviews and AI-assisted methodology selection.
- **Phase 3: Evaluation Planning** - Prepare timelines, budgets, team roles, and data management plans.
- **Phase 4: Data Collection** - Monitor field deployment, track progress, and ensure data quality.
- **Phase 5: Data Analysis** - Process both quantitative and qualitative data, using AI to identify themes and patterns.
- **Phase 6: Reporting** - Compile findings into actionable, professional reports with AI drafting assistance.
- **Phase 7: Learning and Adaptation** - Ensure evaluation results lead to meaningful change through action plans and management responses.

The application uses a clean, professional colour palette consisting of deep teal (`#006064`) and soft purple (`#7E57C2`) to convey trust, clarity, and innovation.

## Built With

- **Framework:** Flutter
- **Language:** Dart
- **Design System:** Material Design 3

## Project Structure

```text
lib/
  main.dart                           # App entry point, routing, and overarching configuration
  theme.dart                          # Centralised theme data (Teal and Purple palette)
  widgets/
    app_drawer.dart                   # Global navigation drawer connecting all phases
  screens/
    workspace_screen.dart             # The central dashboard / workspace home screen
    phase1_scoping_screen.dart        # Phase 1 details
    phase2_design_screen.dart         # Phase 2 details
    phase3_planning_screen.dart       # Phase 3 details
    phase4_collection_screen.dart     # Phase 4 details
    phase5_analysis_screen.dart       # Phase 5 details
    phase6_reporting_screen.dart      # Phase 6 details
    phase7_learning_screen.dart       # Phase 7 details
```

## Getting Started

1. Ensure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.
2. Clone the repository and navigate to the project directory.
3. Fetch dependencies:
   ```bash
   flutter pub get
   ```
4. Run the application (web, mobile, or desktop):
   ```bash
   flutter run
   ```

## Development Notes

The project relies heavily on Material 3 components. The navigation is managed via `Navigator.pushReplacementNamed` in the `AppDrawer` to ensure smooth transitions between phases without building up a massive navigation stack.

## About CouldAI

This app was generated with [CouldAI](https://could.ai), the AI app builder for cross-platform apps. CouldAI turns prompts into real native iOS, Android, Web, and Desktop apps with autonomous AI agents that architect, build, test, deploy, and iterate production-ready applications.

Use CouldAI at [could.ai](https://could.ai) to build and iterate cross-platform apps with AI.
