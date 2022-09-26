import 'package:flutter/material.dart';

class NavBarButton extends StatelessWidget {
  final String pageName;
  const NavBarButton({required this.pageName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context)
            .pushNamed(pageName == 'home' ? '/' : '/$pageName');
      },
      child: Text(
        pageName.toUpperCase(),
        style: const TextStyle(
          color: Color(0xff303f7b),
          fontSize: 20,
        ),
      ),
    );
  }
}

class NavBarDDButton extends StatelessWidget {
  final String title;
  final Widget subpages;
  const NavBarDDButton({required this.title, required this.subpages, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(-15, 20),
      elevation: 0,
      position: PopupMenuPosition.under,
      itemBuilder: (context) => [
        PopupMenuItem(
          padding: EdgeInsets.zero,
          child: MouseRegion(
              onExit: (value) {
                Navigator.pop(context);
              },
              child: subpages),
        ),
      ],
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          color: Color(0xff303f7b),
          fontSize: 20,
        ),
      ),
    );
  }
}

class NavBarTile extends StatelessWidget {
  final String pageName;
  const NavBarTile({required this.pageName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        pageName.toUpperCase(),
      ),
      onTap: () {
        Navigator.of(context)
            .pushNamed(pageName == 'home' ? '/' : '/$pageName');
        Navigator.of(context)
            .pushNamed(pageName == 'home' ? '/' : '/$pageName');
      },
    );
  }
}
