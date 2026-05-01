import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class Phase1ScopingScreen extends StatelessWidget {
  const Phase1ScopingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phase 1: Scoping'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Scoping Your Evaluation',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Define what kind of evaluation you need and why.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 24),
            _buildStepCard(
              context,
              stepNumber: '1.1',
              title: 'Evaluation Purpose',
              description: 'What is prompting this evaluation? (e.g., donor requirement, learning)',
              isCompleted: true,
            ),
            _buildStepCard(
              context,
              stepNumber: '1.2',
              title: 'Programme Context',
              description: 'Sector, geography, and programme phase.',
              isCompleted: true,
            ),
            _buildStepCard(
              context,
              stepNumber: '1.3',
              title: 'Evaluation Type Recommender',
              description: 'AI suggests the best evaluation type based on your context.',
              isCompleted: false,
              isAiPowered: true,
            ),
            _buildStepCard(
              context,
              stepNumber: '1.4',
              title: 'OECD-DAC Criteria',
              description: 'Select Relevance, Coherence, Effectiveness, Efficiency, Impact, or Sustainability.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '1.5',
              title: 'Stakeholder Mapping',
              description: 'Identify primary users, key informants, and communities.',
              isCompleted: false,
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.document_scanner),
                label: const Text('Generate Scoping Summary'),
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
