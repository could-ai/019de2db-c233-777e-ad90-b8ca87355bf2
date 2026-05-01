import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class Phase4CollectionScreen extends StatelessWidget {
  const Phase4CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phase 4: Data Collection'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Data Collection',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Monitor the field deployment, track progress, and ensure data quality.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 24),
            _buildStepCard(
              context,
              stepNumber: '4.1',
              title: 'Field Readiness Checklist',
              description: 'Pre-deployment check of tools, team, and logistics.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '4.2',
              title: 'Data Collection Tracker',
              description: 'Live logging of completed vs planned interviews/surveys.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '4.3',
              title: 'Data Quality Monitoring',
              description: 'Back-checking, completeness, and reliability checks.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '4.4',
              title: 'Integration with Platforms',
              description: 'Link KoboToolbox, ODK, SurveyCTO, etc.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '4.5',
              title: 'Mid-Collection Review',
              description: 'Review findings at 50% completion to course-correct.',
              isCompleted: false,
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.done_all),
                label: const Text('Generate Completion Report'),
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
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isCompleted ? Theme.of(context).colorScheme.primary : Colors.grey[300],
          foregroundColor: isCompleted ? Colors.white : Colors.black54,
          child: isCompleted ? const Icon(Icons.check) : Text(stepNumber),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
