import 'package:flutter/material.dart';

class VoiceGeneral extends StatefulWidget{
  const VoiceGeneral({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return VoiceGeneralState();
  }

}

class VoiceGeneralState extends State<VoiceGeneral>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff6C48FF),
          automaticallyImplyLeading: false,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:const [
              Text('OpenSign', style: TextStyle(
                  fontFamily: 'Martel',
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
              ),
              ),
            ],
          )

      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0x1a7c94ea),
        child: const Center(
          child: Text("We will implement this feature for SAP in Future.", style: TextStyle(fontSize: 17),),
        ),
      )
    );
  }

}