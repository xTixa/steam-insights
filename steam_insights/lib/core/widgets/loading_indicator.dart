import 'package:flutter/material.dart';

/// Shared loading widget for `AsyncValue.when(loading: ...)`.
class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
