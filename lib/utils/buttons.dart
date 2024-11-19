// import 'package:flutter/material.dart';
// import 'package:indeed_ui/views/home_screen/home_screen.dart';

// class Buttons extends StatelessWidget {
//   const Buttons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ElevatedButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => HomeScreen(),
//             ),
//           );
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Color(0xfff177ff2),
//           ),
//           padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 125),
//           child: Text(
//             'Sign in',
//             style: TextStyle(color: Colors.white, fontSize: 24),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:indeed_ui/views/dataloading_screen/dataloading_screen.dart';
// import 'package:indeed_ui/views/home_screen/home_screen.dart';

class buttons extends StatelessWidget {
  const buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => DataloadingScreen(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xfff177ff2),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 125),
        child: Text(
          'Sign in',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
