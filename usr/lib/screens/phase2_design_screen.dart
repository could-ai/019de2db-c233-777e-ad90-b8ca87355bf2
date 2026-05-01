import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class Phase2DesignScreen extends StatelessWidget {
  const Phase2DesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phase 2: Design'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Evaluation Design',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Determine what you will measure and how you will measure it.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 24),
            _buildStepCard(
              context,
              stepNumber: '2.1',
              title: 'Theory of Change Review',
              description: 'Upload or build a simplified ToC.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '2.2',
              title: 'Evaluation Questions',
              description: 'AI drafts questions mapped to OECD-DAC criteria.',
              isCompleted: false,
              isAiPowered: true,
            ),
            _buildStepCard(
              context,
              stepNumber: '2.3',
              title: 'Approach & Methodology',
              description: 'Experimental, quasi-experimental, or mixed methods.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '2.4',
              title: 'Methods Selection',
              description: 'AI recommends surveys, KIIs, FGDs, etc.',
              isCompleted: false,
              isAiPowered: true,
            ),
            _buildStepCard(
              context,
              stepNumber: '2.5',
              title: 'Sampling Guidance',
              description: 'Sample size, approach, and equity disaggregation.',
              isCompleted: false,
            ),
            _buildStepCard(
              context,
              stepNumber: '2.6',
              title: 'Ethical Considerations',
              description: 'Consent, do-no-harm, and privacy checklist.',
              isCompleted: false,
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.design_services),
                label: const Text('Generate Design Brief'),
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
