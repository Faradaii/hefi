import 'package:HEFI/data/data.dart';
import 'package:HEFI/widgets/customAppbar.dart';
import 'package:HEFI/widgets/customCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.2,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const CustomAppbar(),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return GridView.builder(
              itemCount: hackathons.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth <= 600 ? 2 : 4),
              itemBuilder: (context, index) {
                final hackathonItem = hackathons[index];
                return CustomCard(hackathonItem: hackathonItem);
              });
        },
      ),
    );
  }
}
