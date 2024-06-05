import 'package:acessonovo/app/pages/home/home_page.dart';
import 'package:acessonovo/app/widget/app_color.dart';
import 'package:acessonovo/app/widget/tringulo_pointer.dart';
import 'package:acessonovo/flavors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SucessoPage extends StatelessWidget {
  SucessoPage({super.key});
  Color darkBlueColor = const Color(0xFF0C2356);
  @override
  Widget build(BuildContext context) {
    final double buttonWidth = MediaQuery.of(context).size.width * 0.95;
    final double buttonHeight = MediaQuery.of(context).size.height * 0.07;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: darkBlueColor,
       title: Image.asset(
            F.imageComLogoBranca,
            height: 100,
            width: 250,
          ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: CustomPaint(
          painter: TrianguloPainter(),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.4,
                  width: 350,
                  child: Image.asset(F.semImagemTriste)
                ),
                SizedBox(
                  height: screenHeight * 0.08,
                ),
                Text(
                  'Maravilha',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: darkBlueColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Senha alterada com sucesso',
                  style: GoogleFonts.dosis(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: screenHeight * 0.2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
                  child: SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: yellowColor,
                        minimumSize: const Size(
                          double.infinity,
                          50,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(
                              initialHomePage: InitialHomePage.config,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Voltar',
                        style: GoogleFonts.dosis(
                          textStyle: const TextStyle(
                            fontSize: 17,
                            color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
