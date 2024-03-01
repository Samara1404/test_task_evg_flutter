import 'package:flutter/material.dart';
import 'package:test_task_evg_flutter/page2.dart';
import 'style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Логотип/картинка', style: AppTextStyle.style1),
            const SizedBox(height: 50),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: Colors.purple,
                    fixedSize: const Size(250, 40)),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context)=> Page2()));
                },
                child: const Text('Регистрация', style: AppTextStyle.style2)),
            const SizedBox(height: 8),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: Colors.grey,
                    fixedSize: const Size(250, 40)),
                onPressed: () {},
                child: const Text('Пропустить', style: AppTextStyle.style2)),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(60),
              child: Row(
                children: [
                  Text('Вы тренер или другой специалист? ',
                      style: AppTextStyle.style3),
                  Text('Нажмите здесь', style: AppTextStyle.style4),
                ],
              ),
            ),
            const Text('Или зарегистрируйтесь с помощью'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(80, 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: Image.asset('/icon1.png'),
                    ),
                    const SizedBox(width: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(80, 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: Image.asset('/icon2.png'),
                    ),
                    const SizedBox(width: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(80, 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: Image.asset('/icon3.png'),
                    ),
                    const SizedBox(width: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(80, 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: Image.asset('/icon4.png'),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                'Перед входом в приложение ознакомьтесь с Пользовательским согласшением и Политикой конфиденциальности',
                style: AppTextStyle.style3,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
