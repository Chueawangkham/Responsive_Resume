class Project {
  final String? title, description;

  Project({this.title, this.description});
}

// ignore: non_constant_identifier_names
List<Project> demo_projects = [
  Project(
    title: "Responsive Admin Panel or Dashboard - Flutter UI",
    description:
        "On Flutter V2.* web officially supported on a stable branch. Today I share an Admin panel or you can call it dashboard UI build with flutter. Now you can build your app dashboard using flutter. This dashboard contains almost everything that you need like a chart, table, nice small card for showing info.",
  ),
  Project(
    title: "Instagram Clone - Flutter UI",
    description:
        "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
  ),
  Project(
    title: "Outlook Email App Redesign - Flutter Fully Responsive Design UI",
    description:
        "We redesign the outlook app also make it responsive so that you can run it everywhere on your phone, tab, or web. In this flutter responsive video, we will show you the real power of flutter. Make mobile, web, and desktop app from a single codebase.",
  ),
];
