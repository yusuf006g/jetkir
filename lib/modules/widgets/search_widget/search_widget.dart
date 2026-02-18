import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final double price;
  final String userName;
  final String idCode;

  const SearchWidget({
    super.key,
    required this.price,
    required this.userName,
    required this.idCode,
  });

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
        ),
        color: Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.userName,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              'Код клиента: ${widget.idCode}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              'Тарифный план: ${widget.price}\$',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: maxWidth * 0.8,
              height: 50,
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Введите штрих-код',
                  // hintStyle: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: maxWidth * 0.8,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [const Text('Найти ',), const Icon(Icons.search)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
