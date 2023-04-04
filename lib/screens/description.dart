import 'package:flutter/material.dart';

String docText =
    'Sending appointment instructions, healthcare tips, promotional communications, or reminding patients of their upcoming appointments, this channel is a fantastic opportunity to reduce no-shows and scheduling mistakes, build trust with your clientele, and facilitate administrative tasks with less effort. All of this, paired with the fact that 76% of people worldwide want to be reminded of their medical appointments and 71% are actively open to offers of relevant healthcare services, seems to point to a clear conclusion: text messaging is key to improving doctor-patient connections and boosting efficiency in the management of the healthcare system. It’s crucial, however, to ensure you don’t forget to get consent from your patients before using their information for this purpose. Sending texts can bring many benefits to this industry’s communication, such as being more direct, less intrusive, less time-consuming, and offering the possibility of even being automated, making it extra convenient for everyone involved';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.title,
    required this.imagePath,
  });
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                scale: 2,
              ),
              const SizedBox(height: 20.0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                docText,
                style: const TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
