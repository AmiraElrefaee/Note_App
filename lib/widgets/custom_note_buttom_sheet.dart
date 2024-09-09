import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../add_note_cubit/add_note_cubit.dart';
import 'Custom_botton.dart';
import 'add_note_form.dart';
import 'custom_text_field.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNotetFailure) {
              print(' failde  ${state.errMessage}');
            }
            else if (state is AddNoteSucces) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const SingleChildScrollView(
                    child: addNoteForm()));
          },
        ),
      ),
    );
  }
}

