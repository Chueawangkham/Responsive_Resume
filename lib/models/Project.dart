class Project {
  final String? title, description;

  Project({this.title, this.description});
}

// ignore: non_constant_identifier_names
List<Project> demo_projects = [
  Project(
    title: "Responsive Resume - Flutter UI",
    description:
        "I don't have a lot of project Flutter because I am just starting to learn. Web Application that you are opening is one of those. It can be opened with flutter responsive on everywhere on the phone, Tap or Web. I chose to try creating it. I created it in order to tell that I can do it. Even though it is easy, I confirm that it is harder than describing my ability into one paper. It is a place to collect my work in the future.",
  ),
  Project(
    title: "Instagram Clone - Flutter UI",
    description:
        "It's one of the project flutters I use to practice my skills and get used to it. Aligning the layout of the mobile screen and try to connect to Firebase to add data and retrieve that data to display on the Application.",
  ),
  Project(
    title: "Login Page - Flutter UI",
    description:
        "This is an application that I will create in the future, but I don’t finish designing. There is an only login page.",
  ),
];
