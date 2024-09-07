import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Custom_bottom.dart';
import 'add_note_form.dart';
import 'custom_text_field.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: addNoteForm(),
      ),
    );
  }
}

