import 'package:flutter/material.dart';

import '../People/Person.dart';


class WidgetPeopleListItem extends StatelessWidget {

  final Person person;

  WidgetPeopleListItem({
    @required this.person
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  this.person.name,
                  style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                )
              ),
              Text(this.person.mass, style: TextStyle(color: Colors.amber))
            ],
          ),
        ),
      )
    );
  }
}
