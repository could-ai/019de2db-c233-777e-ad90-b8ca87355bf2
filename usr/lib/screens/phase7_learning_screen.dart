import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class Phase7LearningScreen extends StatelessWidget {
  const Phase7LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phase 7: Learning'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Learning and Adaptation',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Ensure evaluation results lead to meaningful change.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 24),
            _buildStepCard(
              context,
              stepNumber: '7.1',
              title: 'Action Plan Builder',
              description: 'Turn recommendations into accountable actions.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '7.2',
              title: 'Management Response',
              description: 'Track management agreement and timeline for actions.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '7.3',
              title: 'Knowledge Base Integrator',
              description: 'Save methodologies or findings for future use.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '7.4',
              title: 'Lessons Learned Log',
              description: 'What went well and what needs improvement.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '7.5',
              title: 'Reflection Workshop Planner',
              description: 'Agenda and facilitation guide for learning sessions.',
              isCompleted: false,
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.school),
                label: const Text('Generate Learning Brief'),
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
