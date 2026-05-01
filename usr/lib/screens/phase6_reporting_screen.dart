import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class Phase6ReportingScreen extends StatelessWidget {
  const Phase6ReportingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phase 6: Reporting'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Reporting',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Compile findings into actionable, professional reports.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 24),
            _buildStepCard(
              context,
              stepNumber: '6.1',
              title: 'Report Structure Selector',
              description: 'Select report format (Full, Exec Summary, etc.).',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '6.2',
              title: 'Report Drafting Assistant',
              description: 'AI generates a first draft from structured inputs.',
              isCompleted: false,
              isAiPowered: true,
            ),
            _buildStepCard(
              context,
              stepNumber: '6.3',
              title: 'Report Review Checklist',
              description: 'QA checklist for the completed draft.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '6.4',
              title: 'Stakeholder Review Tracker',
              description: 'Track feedback and revisions.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '6.5',
              title: 'Dissemination Planner',
              description: 'Plan audiences, formats, and channels.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '6.6',
              title: 'Report Export',
              description: 'Export branded PDF, Word, or Web Summary.',
              isCompleted: false,
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.picture_as_pdf),
                label: const Text('Export Report Package'),
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
