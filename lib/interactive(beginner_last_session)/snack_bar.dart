import 'package:flutter/material.dart';

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Hello!'),
              action: SnackBarAction(
                label: 'close',
                onPressed: (){},
              ),

              showCloseIcon: true,
              closeIconColor: Colors.red,
              duration: const Duration(milliseconds: 1),
              width: 400, // only used with SnackBarBehavior.floating ... not used with SnackBarBehavior.fixed
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          );
        },
        child: const Text('show snack bar'),
      ),
    );
  }
}
