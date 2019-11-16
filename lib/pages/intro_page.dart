import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tractiv/theme/custom_colors.dart';

class IntroPage extends StatelessWidget {
  final theme = CustomTheme();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: theme.drab,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: size.height * 0.55,
              width: double.infinity,
              decoration: BoxDecoration(color: theme.fossil),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image(
                    width: double.infinity,
                    image: AssetImage('assets/image_20.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                  Positioned(
                    top: 60.0,
                    left: 0.0,
                    right: 0.0,
                    child: Image(
                      width: 157.31,
                      height: 86.09,
                      image: AssetImage('assets/logo_stacked_white.png'),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 190.0,
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Track Your Active Lifestyle',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: theme.snow,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: theme.fossil,
                    height: 2.0,
                    width: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'With goal a driven approach',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: theme.snow,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: theme.rust,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  highlightColor: theme.rust,
                  onTap: () {
                    print('get started');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        constraints:
                            BoxConstraints(maxWidth: size.width - 60.0),
                        child: Center(
                          child: Text(
                            'GET STARTED',
                            style: TextStyle(color: theme.snow),
                          ),
                        ),
                      ),
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration:
                            BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.2)),
                        child: Center(
                            child: Icon(
                          Icons.keyboard_arrow_right,
                          color: theme.snow,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
