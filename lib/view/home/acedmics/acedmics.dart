import 'package:om_chauhan/all_imports.dart';

class Acedmics extends StatefulWidget {
  const Acedmics({
    Key? key,
  }) : super(key: key);

  @override
  State<Acedmics> createState() => _AcedmicsState();
}

class _AcedmicsState extends State<Acedmics> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: Responsive.isDesktop(context) ? 450 : null,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 120 : 20),
      child: Responsive.isDesktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextBuilder(
                        text: "Academics",
                        color: kWhite,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w600,
                        fontSize: 50,
                      ),
                      const SizedBox(height: 10.0),
                      TextBuilder(
                        text: acedmics,
                        color: kWhite,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        fontSize: 14,
                      ),
                      const SizedBox(height: 50.0),
                      // CustomButton(
                      //   title: 'Linkedin',
                      //   icon: FontAwesomeIcons.linkedin,
                      //   onTap: () {
                      //     if (kDebugMode) {
                      //       print('Linkedin Button Clicked');
                      //     }
                      //     UrlLaunch.launchInBrowser(url: linkedin);
                      //   },
                      // ),
                      // const CustomDivider(),
                      // const SizedBox(width: 50.0),
                      CustomButton(
                        title: 'Resume',
                        icon: FontAwesomeIcons.download,
                        onTap: () {
                          if (kDebugMode) {
                            print('Resume Button Clicked');
                          }

                          UrlLaunch.launchInBrowser(url: resume);
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.all(20),
                    child: const CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 150,
                      backgroundImage: AssetImage(
                        'assets/images/acedmics.png',
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(20),
                  child: const CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 300,
                    backgroundImage: AssetImage(
                      'assets/images/acedmics.png',
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBuilder(
                      text: "Academics",
                      color: kWhite,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                    const SizedBox(height: 10.0),
                    TextBuilder(
                      text: acedmics,
                      color: kWhite,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      fontSize: 14,
                    ),
                    const SizedBox(height: 50.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // CustomButton(
                        //   title: 'Linkedin',
                        //   icon: FontAwesomeIcons.linkedin,
                        //   onTap: () {
                        //     if (kDebugMode) {
                        //       print('Linkedin Button Clicked');
                        //     }

                        //     UrlLaunch.launchInBrowser(url: linkedin);
                        //   },
                        // ),
                        // const SizedBox(width: 50.0),
                        // const CustomDivider(),
                        CustomButton(
                          title: 'Resume',
                          icon: FontAwesomeIcons.download,
                          onTap: () {
                            if (kDebugMode) {
                              print('Resume Button Clicked');
                            }

                            UrlLaunch.launchInBrowser(url: resume);
                          },
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
              ],
            ),
    );
  }
}
