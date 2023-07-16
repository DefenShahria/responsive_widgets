import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrientationChange(),
    );
  }
}

class OrientationChange extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        // Allow both portrait and landscape orientations
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);

        // React to the current orientation
        if (orientation == Orientation.portrait) {
          // Render portrait layout
          return Scaffold(
            appBar: AppBar(
              title: Text('Profile'),
            ),
            body:SingleChildScrollView(
              child: Column(
                
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 150,
                    backgroundImage: NetworkImage(
                        'https://scontent.fdac27-2.fna.fbcdn.net/v/t39.30808-6/342387205_748389876740561_8931737806619195749_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeEcFkMDprpHO3-nSycjRK-WG3_EK7gdflMbf8QruB1-U4NPo1s8MPhlcZ73L30g51riQs1JRejzfkZ4E6ExLO0h&_nc_ohc=zTkMumiOeLcAX93mBxf&_nc_ht=scontent.fdac27-2.fna&oh=00_AfCDsvykOfl-V5SY_Xan0Y4sDSFfylcHEHlAWk35yHxBuQ&oe=64B9E8B2'
                    ),
                  ),
                  Text('Mohammad Ali',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Study at B.Sc in Computer Science & Engineering(CSE) at Bangladesh University Of Business & Technology(BUBT)',style: TextStyle(fontSize: 10),),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),


                  Wrap(
                    spacing: 10,
                    children: [
                      MyElevatedButton(1),
                      MyElevatedButton(2),
                      MyElevatedButton(3),
                      MyElevatedButton(4),
                      MyElevatedButton(5),
                      MyElevatedButton(6),

                    ],
                  ),



                ],
              ),


            ),
          );
        } else {
          // Render landscape layout
          return Scaffold(
            appBar: AppBar(
              title: Text('Profile'),
            ),
            body: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5.0),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  radius: 150,
                  backgroundImage: NetworkImage(
                    'https://scontent.fdac27-2.fna.fbcdn.net/v/t39.30808-6/342387205_748389876740561_8931737806619195749_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeEcFkMDprpHO3-nSycjRK-WG3_EK7gdflMbf8QruB1-U4NPo1s8MPhlcZ73L30g51riQs1JRejzfkZ4E6ExLO0h&_nc_ohc=zTkMumiOeLcAX93mBxf&_nc_ht=scontent.fdac27-2.fna&oh=00_AfCDsvykOfl-V5SY_Xan0Y4sDSFfylcHEHlAWk35yHxBuQ&oe=64B9E8B2',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mohammad Ali',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('Study at B.Sc in Computer Science & Engineering(CSE) ',style: TextStyle(fontSize: 10),),
                    Text('at Bangladesh University Of Business & Technology(BUBT) ',style: TextStyle(fontSize: 10),),

                    SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      children: [
                        MyElevatedButton(1),
                        MyElevatedButton(2),
                        MyElevatedButton(3),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Wrap(
                      spacing: 10,
                      children: [

                        MyElevatedButton(4),
                        MyElevatedButton(5),
                        MyElevatedButton(6),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        }
      },
    );
  }
  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}



class MyElevatedButton extends StatelessWidget {
  final int photoNumber;

  MyElevatedButton(this.photoNumber);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showSnackBar(context, 'Clicked on photo');
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Stack(
        children: [
          Image.network(
            'https://scontent.fdac27-2.fna.fbcdn.net/v/t39.30808-6/342387205_748389876740561_8931737806619195749_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeEcFkMDprpHO3-nSycjRK-WG3_EK7gdflMbf8QruB1-U4NPo1s8MPhlcZ73L30g51riQs1JRejzfkZ4E6ExLO0h&_nc_ohc=zTkMumiOeLcAX93mBxf&_nc_ht=scontent.fdac27-2.fna&oh=00_AfCDsvykOfl-V5SY_Xan0Y4sDSFfylcHEHlAWk35yHxBuQ&oe=64B9E8B2',
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),

        ],
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}