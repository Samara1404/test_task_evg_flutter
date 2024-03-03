import 'package:flutter/material.dart';
import 'package:test_task_evg_flutter/style.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: Center(child: Text('Введите код', style: AppTextStyle.style1)),
      ),
      body: const Column(
        children: [
          Center(
              child: Text('Мы отправили код на почту',
                  style: AppTextStyle.style5)),
          Text(
            'ivanivanov@gmail.com',
            style: AppTextStyle.style6,
          ),
         
        ],
        
      ),
      
    );
  }
}
