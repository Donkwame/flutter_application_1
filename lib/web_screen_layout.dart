import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/contacts_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Web Profile Bar
                // Web Search ContactsList({Key? key})
                ContactsList(),
              ],
            ),
          ),
        ),

        // Web Screen
        Container(
          width: MediaQuery.of(context).size.width * .75,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover),
          ),
        )
      ],
    ));
  }
}
