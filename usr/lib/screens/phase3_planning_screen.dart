import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class Phase3PlanningScreen extends StatelessWidget {
  const Phase3PlanningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phase 3: Planning'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Evaluation Planning',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Prepare the team, timeline, budget, and tools.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 24),
            _buildStepCard(
              context,
              stepNumber: '3.1',
              title: 'Workplan Builder',
              description: 'Interactive timeline and task assignment.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '3.2',
              title: 'Budget Estimator',
              description: 'Build budget lines with regional cost guidance.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '3.3',
              title: 'Team & TOR Builder',
              description: 'Define roles and auto-generate a TOR.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '3.4',
              title: 'Data Collection Tools',
              description: 'Draft or adapt questionnaires, KII/FGD guides.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '3.5',
              title: 'Data Management Plan',
              description: 'Storage, version control, and security.',
              isCompleted: false,
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.inventory_2),
                label: const Text('Generate Inception Report'),
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
