import 'package:om_chauhan/all_imports.dart';

class TopMenu extends StatefulWidget {
  final Function()? home;
  final Function()? about;
  final Function()? project;
  final Function()? skills;
  final Function()? acedmics;
  const TopMenu({
    Key? key,
    this.home,
    this.about,
    this.project,
    this.skills,
    this.acedmics,
  }) : super(key: key);

  @override
  State<TopMenu> createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 90,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 120 : 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: widget.home,
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/logo.png',
                  height: 40,
                  width: 40,
                ),
                const SizedBox(width: 10.0),
                TextBuilder(
                  text: "Nigam's Portfolio",
                  fontSize: 26,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w600,
                  color: kWhite,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopMenuItem(
                title: 'About Me',
                onTap: widget.about,
              ),
              TopMenuItem(
                title: 'Projects',
                onTap: widget.project,
              ),
              TopMenuItem(
                title: 'Skills',
                onTap: widget.skills,
              ),
              TopMenuItem(
                title: 'Academics',
                onTap: widget.acedmics,
              ),
              TopMenuItem(
                title: 'AWS Certification',
                onTap: (){
                  if (kDebugMode) {
                            print('Certification Button Clicked');
                          }

                          UrlLaunch.launchInBrowser(url:certifications);
                },
              ),
              const SizedBox(width: 10.0),
            ],
          )
        ],
      ),
    );
  }
}
