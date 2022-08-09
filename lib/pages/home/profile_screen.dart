import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          return;
        },
        child: const SingleChildScrollView(
          child: Center(
            child: Text(
              'Profile',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
