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
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        title: const Center(child: Text('Регистрация', style: AppTextStyle.style1)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20),
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
                labelText: 'Имя',
                  hintText: 'Алексей',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            const SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Фамилия",
                  hintText: 'Алексеев',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            const SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Почта',
                  hintText: 'aleksei@mail.ru',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            const SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Пароль',
                  hintText: '******',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            const SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Повторите пароль',
                  hintText: '******',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
               style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: Colors.purple,
                    fixedSize: const Size(250, 40)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> const Page3()));
              }, child: const Text('Зарегистрироваться', style: AppTextStyle.style2)),
          ],
         
        ),
        
      ),
    );
  }
}
