import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

import '../data_classes/CharToImageDataClass.dart';

class VoiceGeneral extends StatefulWidget{
  const VoiceGeneral({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return VoiceGeneralState();
  }

}

class VoiceGeneralState extends State<VoiceGeneral>{

  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _text = "Press the button to start speaking.";

  List selectedCharToImg = [];
  List charToImg = [
    CharToImageDataClass(character: "A", image: Image.asset("assets/images/dataset/alphabets/A.jpg")),
    CharToImageDataClass(character: "B", image: Image.asset("assets/images/dataset/alphabets/B.jpg")),
    CharToImageDataClass(character: "C", image: Image.asset("assets/images/dataset/alphabets/C.jpg")),
    CharToImageDataClass(character: "D", image: Image.asset("assets/images/dataset/alphabets/D.jpg")),
    CharToImageDataClass(character: "E", image: Image.asset("assets/images/dataset/alphabets/E.jpg")),
    CharToImageDataClass(character: "F", image: Image.asset("assets/images/dataset/alphabets/F.jpg")),
    CharToImageDataClass(character: "G", image: Image.asset("assets/images/dataset/alphabets/G.jpg")),
    CharToImageDataClass(character: "H", image: Image.asset("assets/images/dataset/alphabets/H.jpg")),
    CharToImageDataClass(character: "I", image: Image.asset("assets/images/dataset/alphabets/I.jpg")),
    CharToImageDataClass(character: "J", image: Image.asset("assets/images/dataset/alphabets/J.jpg")),
    CharToImageDataClass(character: "K", image: Image.asset("assets/images/dataset/alphabets/K.jpg")),
    CharToImageDataClass(character: "L", image: Image.asset("assets/images/dataset/alphabets/L.jpg")),
    CharToImageDataClass(character: "M", image: Image.asset("assets/images/dataset/alphabets/M.jpg")),
    CharToImageDataClass(character: "N", image: Image.asset("assets/images/dataset/alphabets/N.jpg")),
    CharToImageDataClass(character: "O", image: Image.asset("assets/images/dataset/alphabets/O.jpg")),
    CharToImageDataClass(character: "P", image: Image.asset("assets/images/dataset/alphabets/P.jpg")),
    CharToImageDataClass(character: "Q", image: Image.asset("assets/images/dataset/alphabets/Q.jpg")),
    CharToImageDataClass(character: "R", image: Image.asset("assets/images/dataset/alphabets/R.jpg")),
    CharToImageDataClass(character: "S", image: Image.asset("assets/images/dataset/alphabets/S.jpg")),
    CharToImageDataClass(character: "T", image: Image.asset("assets/images/dataset/alphabets/T.jpg")),
    CharToImageDataClass(character: "U", image: Image.asset("assets/images/dataset/alphabets/U.jpg")),
    CharToImageDataClass(character: "V", image: Image.asset("assets/images/dataset/alphabets/V.jpg")),
    CharToImageDataClass(character: "W", image: Image.asset("assets/images/dataset/alphabets/W.jpg")),
    CharToImageDataClass(character: "X", image: Image.asset("assets/images/dataset/alphabets/X.jpg")),
    CharToImageDataClass(character: "Y", image: Image.asset("assets/images/dataset/alphabets/Y.jpg")),
    CharToImageDataClass(character: "Z", image: Image.asset("assets/images/dataset/alphabets/Z.jpg")),
  ];

  void _startListening() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (status) {
          if (status == stt.SpeechToText.listeningStatus) {
            setState(() {
              _isListening = true;
              _text = "Listening...";
            });
          } else if (status == stt.SpeechToText.notListeningStatus) {
            setState(() {
              _isListening = false;
            });
          }
        },
        onError: (errorNotification) {
          print("Error: $errorNotification");
        },
      );

      if (available) {
        _speech.listen(
          onResult: (result) {
            setState(() {
              _text = result.recognizedWords;
            });
            textToSign(_text);
          },
        );
      }
    } else {
      _speech.stop();
      setState(() {
        _isListening = false;
        _text = "Stopped listening.";
      });
    }
  }

  @override
  void dispose() {
    _speech.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6C48FF),
        automaticallyImplyLeading: false,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Voice to Sign', style: TextStyle(
                  fontFamily: 'Martel',
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
              ),
              ),
              VerticalDivider(width: 7,),
              Icon(Icons.record_voice_over_outlined, color: Colors.white, size: 30,)
            ],
          )
      ),
      body: Container(
        color: const Color(0x1a7c94ea),
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _text,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _startListening,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xff6C48FF))
              ),
              child: Text(_isListening ? "Stop Listening" : "Start Listening"),
            ),
            const SizedBox(height: 20.0,),
            Container(
              width: double.infinity,
              height: 225,
              margin: const EdgeInsets.only(top: 25, left: 30, right: 30),
              decoration: BoxDecoration(
                  color: const Color(0xd96c48ff),
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xd96c48ff),
                        offset: Offset(0, 3)
                    ),
                  ]
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Output", style: TextStyle(fontSize: 25, color: Colors.white),),
                        SizedBox(
                          width: 130,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                child: const Icon(Icons.share, color: Colors.white, size: 26,),
                                onTap: (){
                                  shareImg();
                                },
                              ),
                              InkWell(
                                child: const Icon(Icons.copy, color: Colors.white, size: 26,),
                                onTap: () async {
                                  // var data = await rootBundle.load('assets/images/icons/back.png');
                                  await saveImage();
                                },
                              ),
                              InkWell(
                                child: Image.asset("assets/images/icons/cross_close.png", width: 20, height: 20,),
                                onTap: (){
                                  selectedCharToImg.clear();
                                  setState(() { });
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Expanded(
                    child: Container(
                      child: rowSignOutput(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void textToSign(String sb){
    selectedCharToImg.clear();
    sb = sb.toUpperCase();
    for(int i=0;i<sb.length;i++){
      for(int j=0;j<charToImg.length;j++){
        if(charToImg[j].character == sb[i]){
          // CharToImageDataClass(character: "A", image: Image.asset("assets/images/dataset/alphabets/A.jpg")),
          selectedCharToImg.add(CharToImageDataClass(character: sb[i], image: charToImg[j].image));
          break;
        }
      }
    }
    print("yes" + selectedCharToImg.length.toString());
  }

  Future<String> saveImage() async{
    if(selectedCharToImg.isNotEmpty){
      final controller = ScreenshotController();
      final bytes = await controller.captureFromWidget(rowSignOutput());
      await [Permission.storage].request();
      final time = DateTime.now().toIso8601String().replaceAll('.', '-').replaceAll(':', '-');
      final name = "SignLangOutput_$time";
      final result = await ImageGallerySaver.saveImage(bytes, name: name);
      print(result['filePath']);
      return result['filePath'];
    }
    else{
      return "";
    }
  }

  Future shareImg() async {
    if(selectedCharToImg.isNotEmpty){
      final controller = ScreenshotController();
      final bytes = await controller.captureFromWidget(rowSignOutput());
      final directory = await getApplicationDocumentsDirectory();
      final image = File('${directory.path}/flutter.png');
      image.writeAsBytesSync(bytes);

      await Share.shareFiles([image.path]);
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please Enter Text First")));
    }
  }

  Widget rowSignOutput() => SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        for(int i = 0; i < selectedCharToImg.length; i++) ...[
          Container(
            margin: const EdgeInsets.all(5),
            child: Column(
              children:[
                selectedCharToImg[i].image,
                Text(selectedCharToImg[i].character, style: const TextStyle(fontSize: 25),)
              ],
            ),
          )
        ],
      ],
    ),
  );

}