import 'package:flutter/material.dart';
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
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(children: <Widget>[
                          Container(
                            height: 42,
                            width: 43,
                            decoration: const BoxDecoration(
                              color: kBlueColor,
                            ),
                          )
                        ]),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
