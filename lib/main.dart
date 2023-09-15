import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  runApp(const NotesApp());
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);

}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: false,
          fontFamily: 'Poppins'),
      home: const NotesView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
