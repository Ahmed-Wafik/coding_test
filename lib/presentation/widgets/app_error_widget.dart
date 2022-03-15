import 'package:flutter/material.dart';

import '../../domain/entities/app_error.dart';

class AppErrorWidget extends StatelessWidget {
  final AppError? appError;

  const AppErrorWidget({Key? key, this.appError}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(appError?.e ?? ''));
  }
}
