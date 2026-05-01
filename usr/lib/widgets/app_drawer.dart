import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'EvalGuide',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Created by Viola C. Rop',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          _buildDrawerItem(
            context,
            title: 'Evaluation Workspace',
            icon: Icons.home_outlined,
            route: '/',
            currentRoute: currentRoute,
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'PHASES',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          _buildDrawerItem(context, title: '1. Scoping', icon: Icons.map_outlined, route: '/phase1', currentRoute: currentRoute),
          _buildDrawerItem(context, title: '2. Design', icon: Icons.design_services_outlined, route: '/phase2', currentRoute: currentRoute),
          _buildDrawerItem(context, title: '3. Planning', icon: Icons.event_note_outlined, route: '/phase3', currentRoute: currentRoute),
          _buildDrawerItem(context, title: '4. Data Collection', icon: Icons.dataset_outlined, route: '/phase4', currentRoute: currentRoute),
          _buildDrawerItem(context, title: '5. Data Analysis', icon: Icons.analytics_outlined, route: '/phase5', currentRoute: currentRoute),
          _buildDrawerItem(context, title: '6. Reporting', icon: Icons.article_outlined, route: '/phase6', currentRoute: currentRoute),
          _buildDrawerItem(context, title: '7. Learning', icon: Icons.lightbulb_outline, route: '/phase7', currentRoute: currentRoute),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required String title,
    required IconData icon,
    required String route,
    String? currentRoute,
  }) {
    final isSelected = currentRoute == route;
    return ListTile(
      leading: Icon(icon, color: isSelected ? Theme.of(context).colorScheme.primary : null),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected ? Theme.of(context).colorScheme.primary : null,
        ),
      ),
      selected: isSelected,
      selectedTileColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      onTap: () {
        Navigator.pop(context); // Close drawer
        if (!isSelected) {
          Navigator.pushReplacementNamed(context, route);
        }
      },
    );
  }
}
