import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  static const String routeName = 'Home Screen';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff19488E),
        leading: InkWell(
            onTap: () {},
            child: Image.asset(
                width: 24,
                height: 24,
                'assets/images/home/menu.png')),
        actions: [
          Image.asset(
            'assets/images/home/circle_profile.png',
            width: 53,
            height: 53,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              "assets/images/home/home2.png",
              height: 193,
              width: 391,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: const Text(
              'You can enjoy some ArabAl features :',
              maxLines: 1,
              style: TextStyle(
                color: Color(0xff092147),
                fontFamily: 'Cairo',
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeatureBox(
                  icon: Icons.star,
                  label: "Feature 1",
                  onTap: () {
                    print('Feature 1 tapped');
                  },
                ),
                FeatureBox(
                  icon: Icons.access_alarm,
                  label: "Feature 2",
                  onTap: () {
                    print('Feature 2 tapped');
                  },
                ),
              ],
            ),
          ),
          // ElevatedButton at the bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Home button action
                print('Home button pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Home'),
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const FeatureBox({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 167, // عرض الصندوق
        height: 140, // ارتفاع الصندوق
        padding: const EdgeInsets.all(16.0), // المسافات الداخلية
        decoration: BoxDecoration(
          color: Colors.white, // لون الخلفية
          borderRadius: BorderRadius.circular(30), // جعل الحواف مستديرة أكثر
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // تقليل كثافة الظل
              spreadRadius: 3, // تأثير الانتشار
              blurRadius: 6, // تأثير التمويه
              offset: const Offset(0, 4), // ضبط موقع الظل
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60, // زيادة حجم الأيقونة
              color: Color(0xff19488E), // لون الأيقونة كالأزرق
            ),
            const SizedBox(height: 12), // مسافة بين الأيقونة والنص
            Text(
              label,
              textAlign: TextAlign.center, // توسيط النص
              style: const TextStyle(
                fontSize: 18, // تكبير حجم الخط
                fontWeight: FontWeight.w700, // جعل الخط عريضًا
                color: Color(0xff092147), // تغيير لون النص
              ),
            ),
          ],
        ),
      ),
    );
  }
}
