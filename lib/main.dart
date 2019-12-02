import 'package:movieapp/App.dart';
import 'package:movieapp/Core/BlocProvider.dart';
import 'package:movieapp/People/PeopleBloc.dart';
import 'package:flutter/material.dart';

void main() => runApp(BlocProvider<PeopleBloc>(bloc: PeopleBloc(), child: App()));
