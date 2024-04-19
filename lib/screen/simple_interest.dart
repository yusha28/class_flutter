import 'package:batch32/model/simple_interest_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: SimpleInterestScreen(),
  ));
}

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final mykey = GlobalKey<FormState>();
  SimpleInterestModel? simpleInterestModel;
  double? principal;
  double? rate;
  double? time;
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text("Simple Interest Calculator"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: mykey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter the number';
                  }
                  return null;
                },
                onChanged: (value) {
                  principal = double.tryParse(value);
                },
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Principal Amount',
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
                  rate = double.tryParse(value);
                },
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Rate of Interest',
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
                  time = double.tryParse(value);
                },
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Time (years)',
                ),
              ),
              const SizedBox(height: 8),
              // Calculate Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        simpleInterestModel = SimpleInterestModel(
                            first: principal!, second: time!, third: rate!);
                        result = simpleInterestModel!.si();
                      });
                    }
                  },
                  child: const Text(
                    'Calculate Simple Interest',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Display Result
              Text(
                'Simple Interest: $result',
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
