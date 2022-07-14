import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';

import 'project_card.dart';

class MyProject extends StatelessWidget {
  const MyProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Responsive(
            mobile: ProjectGridView(
              crossAixCount: 1,
              childAspecRatio: 1.5,
            ),
            mobileLarge: ProjectGridView(
              crossAixCount: 1,
              childAspecRatio: 2.5,
            ),
            tablet: ProjectGridView(childAspecRatio: 0.9),
            desktop: ProjectGridView(),
          ),
        ],
      ),
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    this.crossAixCount = 3,
    this.childAspecRatio = 1.3,
  }) : super(key: key);

  final int crossAixCount;
  final double childAspecRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAixCount,
        childAspectRatio: childAspecRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
