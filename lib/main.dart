import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:signbase/page_route_animation/PageRouteFadeAnimation.dart';
import 'package:signbase/general_classes/learning_general.dart';
import 'package:signbase/general_classes/scan_general.dart';
import 'package:signbase/general_classes/text_general.dart';
import 'package:signbase/general_classes/voice_general.dart';
import 'package:signbase/page_route_animation/PageRouteSizeAnimation.dart';
import 'package:signbase/page_route_animation/PageRouteSlideAnimation.dart';

import 'CharToImageClass.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      title: 'OpenSign',
    );
  }

}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }

}

class SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1),
            ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0x1a7c94ea),
        child: Image.asset('assets/images/default.png'),
      ),
    );
    // 6C48FF
  }

}

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }

}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  List<Image> listEnteredText = [
    // Image.asset("assets/images/dataset/alphabets/H.jpg"),
    // Image.asset("assets/images/dataset/alphabets/E.jpg"),
    // Image.asset("assets/images/dataset/alphabets/L.jpg"),
    // Image.asset("assets/images/dataset/alphabets/L.jpg"),
    // Image.asset("assets/images/dataset/alphabets/O.jpg"),
  ];

  List charToImg = CharToImageClass.charToImg;
  TextEditingController engIpController = TextEditingController();

  void charToImgListFun(String value){
    listEnteredText.clear();
    value = value.toUpperCase();
    for(int i=0;i<value.length;i++){
      for(int j=0;j<charToImg.length;j++){
        if(charToImg[j].character == value[i]){
          listEnteredText.add(charToImg[j].image);
        }
      }
    }
    setState(() { });
  }


@override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: const Color(0xffd0d4ec),
        appBar: AppBar(
            backgroundColor: const Color(0xff6C48FF),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:const [
                // Image.asset("assets/images/logo.png", width: 45, height: 45,),
                Text('OpenSign', style: TextStyle(
                    fontFamily: 'Martel',
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
                ),
              ],
            )

        ),
        body: Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0x1a7c94ea),
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 25,
              ),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const HomeIconScreen(),

                      const EngToSignScreen(),

                    Container(
                      width: double.infinity,
                      height: 180,
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff5f38fa), width: 2),
                          color: const Color(0xd96c48ff),
                          borderRadius: const BorderRadius.all(Radius.circular(25))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("English", style: TextStyle(fontSize: 35, color: Colors.white),),
                                SizedBox(
                                  width: 80,

                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        child: const Icon(Icons.copy, color: Colors.white, size: 26,),
                                        onTap: () async {
                                            await Clipboard.setData(ClipboardData(text: engIpController.text));
                                        },
                                      ),
                                      InkWell(
                                          child: Image.asset("assets/images/icons/cross_close.png", width: 20, height: 20,),
                                        onTap: (){
                                          engIpController.clear();
                                        },
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 70,
                            alignment: Alignment.centerLeft,
                            child: TextFormField(
                              onFieldSubmitted: (value){
                                charToImgListFun(value);
                              },
                              controller: engIpController,
                              // initialValue: "Hello",
                              cursorColor: Colors.white,
                              style: const TextStyle(fontSize: 28, color: Colors.white),
                              decoration: const InputDecoration(
                                hintText: 'Tap to Enter Text',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25
                                )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                      Container(
                        width: double.infinity,
                        height: 180,
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff5f38fa), width: 2),
                            color: const Color(0xd96c48ff),
                            borderRadius: const BorderRadius.all(Radius.circular(25))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Sign Language", style: TextStyle(fontSize: 25, color: Colors.white),),
                                SizedBox(
                                  width: 120,

                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        child: const Icon(Icons.share, color: Colors.white, size: 26,),
                                        onTap: () async {
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
                                            listEnteredText.clear();
                                            setState(() { });
                                        },
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                                width: double.infinity,
                                height: 70,
                                alignment: Alignment.centerLeft,
                                child: rowSignOutput()
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            ),

    );
  }

  Widget rowSignOutput() => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for(int i=0;i<listEnteredText.length;i++) ...[
            Container(
              margin: const EdgeInsets.only(right: 15),
              width: 50,
              height: 50,
              child: listEnteredText[i],
            ),
          ]
        ],
      )
  );

  Future<String> saveImage() async{
    if(listEnteredText.isNotEmpty){
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
    if(listEnteredText.isNotEmpty){
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

}

class HomeIconScreen extends StatelessWidget{
  const HomeIconScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 75,
            height: double.infinity,
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(seconds: 1),
                        transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
                        animation = CurvedAnimation(parent: animation, curve: Curves.easeInCirc);
                          return ScaleTransition(
                            alignment: Alignment.center,
                              scale: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                          return const LearningGeneral();
                       }

                )
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/images/icons/learning.png', width: 50, height: 70,),
                  const Text("Learning", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                  ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 75,
            height: double.infinity,
            child: InkWell(
              onTap: (){
                Navigator.push(context, PageRouteSizeAnimation(duration: 2, widget: const TextGeneral()));
              },
              child: Column(
                children: [
                  Image.asset('assets/images/icons/text.png', width: 50, height: 70,),
                  const Text("Text", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                  ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 75,
            height: double.infinity,
            child: InkWell(
              onTap: (){
                Navigator.push(context, PageRouteFadeAnimation(duration: 2, widget: const ScanGeneral())
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/images/icons/scan.png', width: 50, height: 70,),
                  const Text("Scan", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                  ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 75,
            height: double.infinity,
            child: InkWell(
              onTap: (){
                Navigator.push(context, PageRouteSlideAnimation(duration: 2, widget: const VoiceGeneral())
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/images/icons/voice.png', width: 50, height: 70,),
                  const Text("Voice", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class EngToSignScreen extends StatelessWidget{
  const EngToSignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
                primary: const Color(0xd96c48ff),
                shape: const StadiumBorder()
              // textStyle: const TextStyle(fontSize: 25)
            ),

            child: const Text("English", style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
          InkWell(
              onTap: (){

              },
              child: Image.asset('assets/images/icons/bidirectional_arrow.png', width: 40, height: 50,)
          ),
          ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xd96c48ff),
                  // 0xffFFBBA4
                  shape: const StadiumBorder()
              ),
              child: const Text("Sign Language", style: TextStyle(color: Colors.white, fontSize: 20),)
          ),
        ],
      ),
    );
  }

}
