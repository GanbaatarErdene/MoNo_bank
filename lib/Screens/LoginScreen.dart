import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/Constants.dart';
import 'package:mobile/Screens/home.dart';
import '../widgets/bottomnavigatiobar.dart';
import 'home.dart';

class LogInScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0),
                // padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset('images/man1.png',
                    height: 430,
                    // width: 400,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 0.0),
                // padding: const EdgeInsets.all(10.0),
                width: 250,
                child: Center(
                  child: Text(
                    'Spend Smarter Save More',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.teal,
                      // color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80), // <-- Radius
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Bottom()),);
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [gradient1, gradient2]),
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: Container(
                        width: 300,
                        height: 60,
                        alignment: Alignment.center,
                        child: Text('Get Started',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            textStyle: Theme.of(context).textTheme.bodyLarge,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Already Have Account?',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.bodyLarge,
                        fontSize: 14,
                        color: accountWord,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 5),
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.bodyLarge,
                        fontSize: 14,
                        // color: Colors.teal,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ]
        ),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/greenback.png'),
        //     fit: BoxFit.fitWidth,
        //     alignment: FractionalOffset.topCenter,
        //   ),
        // ),
      ),
    );
  }
}
// class LoginScreen extends StatelessWidget {
//   // const ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RaisedButton(
//           child: Text('Get Started',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//           ),
//           color: new Color(0xFF009688),
//           onPressed: (){
//             Navigator.push(context,
//             MaterialPageRoute(builder: (context)=>HomePage))
//           },
//         ),
//       ),
//     );
//   }
// }
