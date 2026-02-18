import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarCodeWidget extends StatelessWidget {
  final String name;
  final String id;

  const BarCodeWidget({super.key, required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(name, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(id, style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 20),

            /// 🔥 Barcode
            BarcodeWidget(
              barcode: Barcode.code128(),
              data: id, 
              width: double.infinity,
              height: 80,
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Закрыть'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
