import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:when_do_i_have_to_leave/services/get_time_until_arrival.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    getTimeUntilArrival();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
