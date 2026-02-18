import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jetkir/layout/bloc/app_bar_bloc/bloc/app_bar_bloc.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, this.isHome = false});

  final bool isHome;

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<AppBarBloc, AppBarState>(
      builder: (context, state) {
        final bool isCollapsed = state is AppBarCollapsed;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          height: isCollapsed ? 0 : preferredSize.height,
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: isHome
                    ? BorderRadius.zero
                    : const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
              ),
              child: SafeArea(
                child: isCollapsed
                    ? const SizedBox.shrink()
                    : Center(
                        child: Image.asset(
                          'assets/image/white_logo.png',
                          // width: 85,
                          height: 120,
                          fit: BoxFit.contain,
                        ),
                        
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
