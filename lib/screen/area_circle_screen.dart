
import 'dart:ffi';

import 'package:batch32/model/area_circle_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AreaCircle extends StatefulWidget {
  const AreaCircle({super.key});

  @override
  State<AreaCircle> createState() => _AreaCircleModelState();
}

class _AreaCircleModelState extends State<AreaCircle> {
  final mykey = GlobalKey<FormState>();
  double result = 0;
  double pi = (22/7);
  double? radius;
  AreaCircleModel? areaCircleModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Area of Circle"),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: mykey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter radius';
                  }
                  return null;
                },
                onChanged: (value) {
                  radius = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Enter radius', border: OutlineInputBorder()),
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        areaCircleModel = AreaCircleModel(radius: radius!);
                        result = areaCircleModel!.area();
                      });
                    }
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}