import 'package:flutter/material.dart';
import 'package:wracks/magicoon.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 25),
                height: MediaQuery.of(context).size.height * 0.2 - 27,
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Wracks",
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.indigo.withOpacity(0.23),
                      )
                    ],
                  ),
                  child: Row(
                    children: const <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Colors.indigo,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Magicoon.search_bold_outline)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
