import 'package:om_chauhan/all_imports.dart';

class MobileHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState>? drawerKey;
  const MobileHeader({
    Key? key,
    this.drawerKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    drawerKey!.currentState!.openDrawer();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Icon(
                      Icons.menu,
                      color: kBlack,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                TextBuilder(
                  text: 'Nigam Portfolio',
                  fontSize: 22,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w800,
                  color: kWhite,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
