import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: const Color.fromARGB(255, 76, 108, 134),
      semanticContainer: true,
      shadowColor: Colors.black,
      surfaceTintColor: const Color.fromARGB(255, 18, 73, 98),
      elevation: 10,
      borderOnForeground: false,
      child: ListTile(
        minVerticalPadding: BorderSide.strokeAlignCenter,
        onLongPress: () {
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 238, 223, 91),
          );
        },
        iconColor: Colors.black38,
        selected: true,
        focusNode: FocusNode(),
        selectedColor: const Color.fromARGB(255, 223, 252, 255),
        splashColor: const Color.fromARGB(255, 178, 223, 228),
        shape: const Border(bottom: BorderSide(color: Colors.white)),
        focusColor: const Color.fromARGB(255, 126, 57, 52),
        hoverColor: const Color.fromARGB(255, 235, 138, 201),
        dense: true,
        contentPadding: const EdgeInsets.all(20),
        autofocus: true,
        leading: Image.asset(
          "assets/images/istockphoto-1515913422-1024x1024.jpg",
          height: 80,
          width: 100,
          fit: BoxFit.fill,
        ),
        title: const Text('Create text'),
        onTap: () {},
        isThreeLine: true,
        subtitle: const Text('Subtitle'),
        trailing: const Icon(Icons.person),
      ),
    );
  }
}
