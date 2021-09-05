import 'package:flutter/material.dart';

class CustomConnectionErrorUI extends StatelessWidget {
  const CustomConnectionErrorUI({
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
                Icons.error_outline,
                size: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "No Internet Connection !\nTap to retry",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
    );
  }
}
