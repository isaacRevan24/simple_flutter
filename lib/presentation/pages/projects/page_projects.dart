import 'package:flutter/material.dart';
import 'local_widgets/project_app_bar.dart';
import 'local_widgets/active_layout.dart';
import 'local_widgets/finished_layout.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            // Active projects
            ActiveProjects(),
            // Finished projects
            FinishedProjects()
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: const Icon(Icons.add),
          backgroundColor: Colors.brown,
        ),
      ),
    );
  }
}
