import 'package:flutter/material.dart';
// import 'models/user.model.dart'; OR controllers/user.controller.dart;

class AndroidApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Cadastro"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              onSaved: (value) => username = value,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: ElevatedButton(
                onPressed: () => save(context), 
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
      Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              onSaved: (value) => password_hash = value,
    );
  }
}
