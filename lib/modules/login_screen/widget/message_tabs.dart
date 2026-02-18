import 'package:flutter/material.dart';

enum TabType { message, gender }

class CustomTabs extends StatefulWidget {
  final TabType type;
  final int initialIndex;
  final ValueChanged<int> onChanged;

  const CustomTabs({
    this.type = TabType.message,
    this.initialIndex = 0,
    required this.onChanged,
    super.key,
  });

  @override
  State<CustomTabs> createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tabs = widget.type == TabType.message
        ? ['СМС', 'WhatsApp', 'Telegram']
        : ['Мужской', 'Женский'];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: theme.colorScheme.outline), // ← серая граница как на скриншоте
      ),
      child: Row(
        children: List.generate(
          tabs.length,
          (index) => _buildTab(index, tabs[index], theme),
        ),
      ),
    );
  }

  Widget _buildTab(int index, String label, ThemeData theme) {
    final isSelected = _selectedIndex == index;
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            _selectedIndex = index;
          });
          widget.onChanged(index);
        },
        style: TextButton.styleFrom(
          backgroundColor: isSelected ? theme.colorScheme.primary : Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected
                ? theme.colorScheme.onPrimary
                : theme.textTheme.bodyMedium?.color,
            fontSize: 16,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}