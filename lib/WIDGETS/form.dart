import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class FORMWIDGET extends StatefulWidget {
  const FORMWIDGET({super.key});

  @override
  State<FORMWIDGET> createState() => _FORMWIDGETState();
}

class _FORMWIDGETState extends State<FORMWIDGET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:const EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration:const InputDecoration(
                  hintText: "Enter Your Name",
                  labelText: "Name",
                ),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Something";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration:const InputDecoration(
                  hintText: "Enter Your Phone Number",
                  labelText: "Phone Number",
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Something";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                     const SnackBar(
                        content: Text("Greate"),
                      ),
                    );
                  }
                },
                child:const Text("Validate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
