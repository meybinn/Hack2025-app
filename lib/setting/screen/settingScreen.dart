import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/commons/constant/gaps.dart';
import 'package:hack2025_mobile_app/commons/themes.dart';
import 'package:hack2025_mobile_app/setting/screen/accessibilityScreenl.dart';
import 'package:hack2025_mobile_app/setting/screen/modifyProfileScreen.dart';
import 'package:hack2025_mobile_app/setting/widget/user_buttons.dart';
import 'package:hack2025_mobile_app/setting/widget/userInfoContainer.dart';

class Settingscreen extends StatefulWidget {
  const Settingscreen({super.key});

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
void _onBackTap() {
    Navigator.pop(context);
    // print("작동 완료!!!!!!!!! $id , $password");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gaps.v56,
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text("계정 세부정보", textAlign: TextAlign.start, style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600, fontSize: MediaQuery.of(context).size.height * 0.045,),),
              const Userinfocontainer(),
              Gaps.v16,
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Modifyprofile(),
                        ),
                      );},
                child: Container(
                      padding: const EdgeInsets.all(8),
                       width: MediaQuery.of(context).size.width * 0.425,
                        height: MediaQuery.of(context).size.width * 0.45,
                      decoration: const BoxDecoration(
                        color: Themes.mint,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.settings,color: Colors.black,size:MediaQuery.of(context).size.height * 0.055, ),
                       Gaps.v10,
                          Text('개인정보\n재설정',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize:MediaQuery.of(context).size.height * 0.035,fontWeight: FontWeight.w700)),
                        
                        ],
                      ),
                    ),
              ),
     Container(
      padding: const EdgeInsets.all(8),
       width: MediaQuery.of(context).size.width * 0.425,
        height: MediaQuery.of(context).size.width * 0.45,
      decoration: const BoxDecoration(
        color: Themes.mint,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Icon(Icons.phone,color: Colors.black,size:MediaQuery.of(context).size.height * 0.055,),
       Gaps.v10,
          Text('콜센터',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize:MediaQuery.of(context).size.height * 0.035,fontWeight: FontWeight.w700)),
        
        ],
      ),
    ),
             ],
           ), ],),
          ),
          Gaps.v16,
           GestureDetector(
              onTap: (){
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Accessibilityscreenl(),
                        ),
                      );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Themes.mint,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Row(
                    children: [ 
                     Icon(Icons.accessibility ,color: Colors.black,size:MediaQuery.of(context).size.height * 0.09,),
                     Gaps.h36,
                      Text(
                        '접근성 설정',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * 0.04,
                      fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Gaps.v28,
           // 돌아가기
      GestureDetector(
              onTap: _onBackTap,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Themes.mint,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Row(
                    children: [ 
                     Icon(Icons.arrow_back ,color: Colors.black,size:MediaQuery.of(context).size.height * 0.07,),
                     Gaps.h36, 
                      Text(
                        '돌아가기',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * 0.04,
                      fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      )
    );
  }
}