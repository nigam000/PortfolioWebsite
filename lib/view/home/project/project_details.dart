import 'package:om_chauhan/all_imports.dart';

class ProjectDetails extends StatefulWidget {
  final ProjectModel data;
  const ProjectDetails({Key? key, required this.data}) : super(key: key);

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBuilder(
                    text: widget.data.title,
                    color: kBlack,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: kBlack,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close,
                        color: kWhite,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              TextBuilder(
                text: widget.data.description,
                color: kBlack,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 20.0),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.end,
                runAlignment: WrapAlignment.spaceBetween,
                children: [
                  if (widget.data.playStore.isNotEmpty)
                    ActionButton(
                      buttonType: ButtonType.playStore,
                      buttonShape: ButtonShape.rect,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: widget.data.playStore);
                      },
                    ),
                  if (widget.data.miStore.isNotEmpty)
                    ActionButton(
                      buttonType: ButtonType.miStore,
                      buttonShape: ButtonShape.rect,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: widget.data.miStore);
                      },
                    ),
                  if (widget.data.gitHub.isNotEmpty)
                    ActionButton(
                      buttonType: ButtonType.github,
                      buttonShape: ButtonShape.circle,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: widget.data.gitHub);
                      },
                    ),
                  if (widget.data.website.isNotEmpty)
                    ActionButton(
                      buttonType: ButtonType.website,
                      buttonShape: ButtonShape.circle,
                      onTap: () {
                        UrlLaunch.launchInBrowser(url: widget.data.website);
                      },
                    ),
                ],
              ),
              
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
