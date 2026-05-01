import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class Phase5AnalysisScreen extends StatelessWidget {
  const Phase5AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phase 5: Data Analysis'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Data Analysis',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Process data, generate insights, and build recommendations.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 24),
            _buildStepCard(
              context,
              stepNumber: '5.1',
              title: 'Data Upload & Organisation',
              description: 'Upload quantitative (CSV) and qualitative data.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '5.2',
              title: 'Quantitative Analysis',
              description: 'Descriptive stats and basic visualisations.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '5.3',
              title: 'Qualitative Analysis',
              description: 'AI assists with thematic coding and pattern ID.',
              isCompleted: false,
              isAiPowered: true,
            ),
            _buildStepCard(
              context,
              stepNumber: '5.4',
              title: 'Triangulation Guide',
              description: 'Map findings across methods to assess convergence.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '5.5',
              title: 'Findings Organiser',
              description: 'Record key findings by evaluation question.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '5.6',
              title: 'Conclusions & Recommendations',
              description: 'Structured logic chain from findings to action.',
              isCompleted: false,
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.analytics),
                label: const Text('Generate Analysis Summary'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCard(
    BuildContext context, {
    required String stepNumber,
    required String title,
    required String description,
    required bool isCompleted,
    bool isAiPowered = false,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isCompleted ? Theme.of(context).colorScheme.primary : Colors.grey[300],
          foregroundColor: isCompleted ? Colors.white : Colors.black54,
          child: isCompleted ? const Icon(Icons.check) : Text(stepNumber),
        ),
        title: Row(
          children: [
            Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold))),
            if (isAiPowered)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.auto_awesome, size: 14, color: Theme.of(context).colorScheme.secondary),
                    const SizedBox(width: 4),
                    Text('AI', style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
          ],
        ),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
