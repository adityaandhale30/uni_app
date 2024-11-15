import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uni_app/Models/home_tab_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            stretchTriggerOffset: 200,
            shadowColor: Color.fromARGB(255, 249, 66, 66),
            // expandedHeight: 100,
            shape: Border(
              bottom: BorderSide(
                  color: Color.fromARGB(255, 80, 191, 246), width: 5),
            ),
            floating: true,
            stretch: true,
            backgroundColor: Colors.blueGrey,
            title: Text(
              "Uni App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
          ),
          const SliverGap(35),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid.builder(
                itemCount: hometab.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5 / 7,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, idx) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 106, 106, 106),
                            blurRadius: 15,
                            spreadRadius: 0,
                            offset: Offset(0, 6))
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 160,
                            width: 160,
                            child: Image.asset(hometab[idx].imagePath)),
                        const Gap(24),
                        Text(
                          hometab[idx].name,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(25, 33, 38, 1),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
