import 'package:flutter/material.dart';
import 'package:test_task_evg_flutter/page3.dart';
import 'package:test_task_evg_flutter/style.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        title: Center(child: Text('Регистрация', style: AppTextStyle.style1)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('Войти', style: AppTextStyle.style4),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Имя',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Фамилия',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Почта',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Пароль',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Повторите пароль',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(height: 25),
            ElevatedButton(
               style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: Colors.grey,
                    fixedSize: const Size(250, 40)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> Page3()));
              }, child: Text('Зарегистрироваться', style: AppTextStyle.style2)),
          ],
         
        ),
        
      ),
    );
  }
}
