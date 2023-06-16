import 'package:om_chauhan/all_imports.dart';

class Project extends StatefulWidget {
  const Project({
    Key? key,
  }) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  final project = ProjectController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isDesktop(context) ? 120 : 20,
        vertical: Responsive.isDesktop(context) ? 50 : 20,
      ),
      child: Column(
        children: [
          TextBuilder(
            text: 'Project',
            color: kWhite,
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
          const SizedBox(height: 30.0),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            runSpacing: 50,
            spacing: 50,
            children: [
              for (int i = 0; i < project.projectList.length; i++)
                ProjectCard(
                  onTap: () {
                    if (kDebugMode) {
                      print('Github Button Clicked');
                    }
                    if (i == 0) {
                      UrlLaunch.launchInBrowser(url: github0);
                    }
                    if (i == 1) {
                      UrlLaunch.launchInBrowser(url: github1);
                    }
                    if (i == 2) {
                      UrlLaunch.launchInBrowser(url: github2);
                    }
                    if (i == 3) {
                      UrlLaunch.launchInBrowser(url: github3);
                    }
                  },
                  project: project.projectList[i],
                  top: project.projectList[i].top,
                )
            ],
          ),
        ],
      ),
    );
  }
}
