import 'package:flutter/material.dart';// Material lib

class MyBody extends StatelessWidget{
  const MyBody({super.key});

    @override Widget build(BuildContext context) {
    return Center(child: Column(
        children: [
          const Text('Welcome'),
          TextButton(onPressed: (){}, style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return const Color.fromRGBO(59, 160, 255, 1);
                }
                return const Color.fromRGBO(0, 132, 255, 1);
              }
          ),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                return Colors.white;
              })),
              child: const Text('Log in'))]
    ));
  }
}

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false, // Without debug
      home: Scaffold(
        appBar: AppBar(title: const Text('Film Fusion')),
        body: const MyBody()
      )
    )
  );
}