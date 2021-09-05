import 'package:flutter/material.dart';

class CustomErrorUI extends StatelessWidget {
  const CustomErrorUI({
    Key? key, this.onRefresh,
  }) : super(key: key);

  final Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onRefresh,
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sync_problem,
                size: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Something went Wrong !\nTap to retry",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
    );
  }
}
