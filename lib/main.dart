import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MouseRegion(
          onEnter: (value) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (value) {
            setState(() {
              isHovered = false;
            });
          },
          child: Container(
            height: 400.0,
            width: 320.0,
            decoration: BoxDecoration(
              color: const Color(0xFF242324),
              borderRadius: BorderRadius.circular(15.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: [
                Positioned(
                  left: -40.0,
                  top: 120.0,
                  child: Text(
                    'Nike',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      fontSize: 170.0,
                      color: Colors.white10,
                    ),
                    softWrap: false,
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 375),
                  curve: Curves.easeOut,
                  top: isHovered ? -240.0 : -80.0,
                  right: isHovered ? -100.0 : -80.0,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 375),
                    curve: Curves.easeOut,
                    height: isHovered ? 450.0 : 280.0,
                    width: isHovered ? 450.0 : 280.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0063d7),
                      borderRadius: BorderRadius.circular(500),
                    ),
                  ),
                ),
                AnimatedAlign(
                  duration: const Duration(milliseconds: 375),
                  curve: Curves.easeOut,
                  alignment: isHovered
                      ? const Alignment(0.0, -0.8)
                      : const Alignment(0.0, 0.0),
                  child: SizedBox(
                    height: 170,
                    width: 320.0,
                    child: Image.asset('assets/shoe.png'),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 375),
                  curve: Curves.easeOut,
                  bottom: isHovered ? 0.0 : -110.0,
                  child: SizedBox(
                    height: 230.0,
                    width: 320.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nike Shoes',
                          style: GoogleFonts.quicksand(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        AnimatedOpacity(
                          opacity: isHovered ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 375),
                          curve: Curves.easeOut,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'SIZE: ',
                                style: GoogleFonts.quicksand(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              const SizeButton(
                                value: '7',
                              ),
                              const SizeButton(
                                value: '8',
                              ),
                              const SizeButton(
                                value: '9',
                              ),
                              const SizeButton(
                                value: '10',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        AnimatedOpacity(
                          opacity: isHovered ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 375),
                          curve: Curves.easeOut,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'COLOR: ',
                                style: GoogleFonts.quicksand(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const CircleAvatar(
                                radius: 9.0,
                                backgroundColor: Colors.red,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const CircleAvatar(
                                radius: 9.0,
                                backgroundColor: Colors.blue,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const CircleAvatar(
                                radius: 9.0,
                                backgroundColor: Colors.green,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        AnimatedOpacity(
                          opacity: isHovered ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 1075),
                          curve: Curves.easeOut,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.black87,
                              padding: const EdgeInsets.all(20.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Buy Now',
                              style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SizeButton extends StatefulWidget {
  final String? value;
  const SizeButton({Key? key, this.value}) : super(key: key);

  @override
  _SizeButtonState createState() => _SizeButtonState();
}

class _SizeButtonState extends State<SizeButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: MouseRegion(
        onEnter: (value) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (value) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
            color: isHovered ? const Color(0xFF0063d7) : Colors.white,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: Text(
              widget.value!,
              style: GoogleFonts.quicksand(
                color: isHovered ? Colors.white : Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
