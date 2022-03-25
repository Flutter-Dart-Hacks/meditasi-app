import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditasi_app/constants.dart';
import 'package:meditasi_app/widgets/searchbar.dart';

class DetailMenuScreen extends StatefulWidget {
  const DetailMenuScreen({Key? key}) : super(key: key);

  @override
  State<DetailMenuScreen> createState() => _DetailMenuScreenState();
}

class _DetailMenuScreenState extends State<DetailMenuScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.55,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/meditation_bg.png',
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Meditation',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "3-10 minute course",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: Text(
                        descMeditation,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      child: const SearchBar(),
                      width: size.width * 0.5,
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      direction: Axis.horizontal,
                      children: <Widget>[
                        SessionCard(
                          sessionNumber: 1,
                          isDone: true,
                          pressCallback: () {},
                        ),
                        SessionCard(
                          sessionNumber: 2,
                          isDone: false,
                          pressCallback: () {},
                        ),
                        SessionCard(
                          sessionNumber: 3,
                          isDone: false,
                          pressCallback: () {},
                        ),
                        SessionCard(
                          sessionNumber: 4,
                          isDone: false,
                          pressCallback: () {},
                        ),
                        SessionCard(
                          sessionNumber: 5,
                          isDone: false,
                          pressCallback: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Meditation',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                    ),
                    Container(
                      height: 90,
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          )
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg',
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  'Basic 2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                ),
                                Text(
                                  'Mulai memperdalam latihan meditasi anda',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(10))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int sessionNumber;
  final bool isDone;
  final Function pressCallback;
  const SessionCard({
    Key? key,
    required this.sessionNumber,
    this.isDone = false,
    required this.pressCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          // Mendapatkan max width dari layout yang ada untuk widget ini
          width: (constraint.maxWidth / 2) - 10,
          // padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              )
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                pressCallback();
              },
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(children: <Widget>[
                  Container(
                    height: 42,
                    width: 43,
                    decoration: BoxDecoration(
                      color: isDone ? kBlueColor : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: kBlueColor),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: isDone ? Colors.white : kBlueColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Session $sessionNumber',
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                  )
                ]),
              ),
            ),
          ),
        ),
      );
    });
  }
}
