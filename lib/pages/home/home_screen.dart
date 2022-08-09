import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      key: _refreshIndicatorKey,
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
        return;
      },
      child: const SingleChildScrollView(
        child: Center(
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
