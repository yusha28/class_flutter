import 'package:batch32/model/arithmetic_model.dart';
import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final mykey = GlobalKey<FormState>();
  ArithmeticModel? arithmeticModel;
// Delcare variables
  int? first;
  int? second;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: mykey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter the number';
                  }
                  return null;
                },
                onChanged: (value) {
                  first = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First No',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter the number';
                  }
                  return null;
                },
                onChanged: (value) {
                  second = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
                ),
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        arithmeticModel =
                            ArithmeticModel(first: first!, second: second!);
                        result = arithmeticModel!.add();
                      });
                    }
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        arithmeticModel =
                            ArithmeticModel(first: first!, second: second!);
                        result = arithmeticModel!.sub();
                      });
                    }
                  },
                  child: const Text(
                    'Subtract',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'The number is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
