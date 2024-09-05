import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_application/widgets/custem_appBar.dart';

import 'Note_item.dart';
import 'custom_notes_list_view.dart';




class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          notesListView(),
        ],
      ),
    );
  }
}
