import 'package:movieapp/Core/BlocProvider.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/People/Person.dart';
import 'package:movieapp/People/PeopleBloc.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final PeopleBloc peopleBloc = BlocProvider.of<PeopleBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.amber),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: StreamBuilder<List<Person>>(
          stream: peopleBloc.peopleObservable,
          initialData: [],
          builder: (BuildContext context, AsyncSnapshot<List<Person>> snapshot) {
            if (snapshot.data == null || snapshot.data.isEmpty) {
              return Center(
                child: Text(
                  'Loading...',
                  style: TextStyle(color: Colors.amber),
                  )
                );
            }
            return Center(
              child: ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.black,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                                snapshot.data[index].name,
                                style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                              )
                            ),
                            Text(snapshot.data[index].mass, style: TextStyle(color: Colors.amber))
                          ],
                        ),
                      ),
                    )
                  );
                },
              ),
            );
          }
        ),
      ) ,
    );
  }
}
