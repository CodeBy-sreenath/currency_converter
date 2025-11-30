import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  State<CurrencyConvertorMaterialPage> createState() =>
      _CurrencyConvertorMaterialPageState();
}

class _CurrencyConvertorMaterialPageState
    extends State<CurrencyConvertorMaterialPage> {
  final TextEditingController amountController = TextEditingController();
  double convertedValue = 0.0;

  String fromCurrency = "USD";
  String toCurrency = "INR";

  void convertCurrency() {
    double amount = double.tryParse(amountController.text) ?? 0;

    // Simple conversion logic
    if (fromCurrency == "USD" && toCurrency == "INR") {
      convertedValue = amount * 83.5; // sample rate
    } else if (fromCurrency == "INR" && toCurrency == "USD") {
      convertedValue = amount / 83.5;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Currency Converter',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 30),

              // Input box
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Enter amount",
                  hintStyle: const TextStyle(color: Colors.black54),
                  prefixIcon: const Icon(Icons.money, color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Currency dropdowns
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton<String>(
                    value: fromCurrency,
                    items: const [
                      DropdownMenuItem(value: "USD", child: Text("USD")),
                      DropdownMenuItem(value: "INR", child: Text("INR")),
                    ],
                    onChanged: (value) {
                      setState(() => fromCurrency = value!);
                    },
                  ),
                  const Icon(Icons.swap_horiz, size: 30),
                  DropdownButton<String>(
                    value: toCurrency,
                    items: const [
                      DropdownMenuItem(value: "USD", child: Text("USD")),
                      DropdownMenuItem(value: "INR", child: Text("INR")),
                    ],
                    onChanged: (value) {
                      setState(() => toCurrency = value!);
                    },
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Convert button
              ElevatedButton(
                onPressed: convertCurrency,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),

              const SizedBox(height: 30),

              // Output
              Text(
                "Converted Value: $convertedValue $toCurrency",
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
