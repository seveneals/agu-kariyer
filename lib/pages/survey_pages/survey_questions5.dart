import 'package:agucareer/values/colors.dart';
import 'package:agucareer/viewmodels/user_model.dart';
import 'package:agucareer/widgets/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SurveyQuestions5 extends StatefulWidget {
  @override
  _SurveyQuestions5State createState() => _SurveyQuestions5State();
}

class _SurveyQuestions5State extends State<SurveyQuestions5> {

  @override
  Widget build(BuildContext context) {
    final UserModel _userModel = Provider.of<UserModel>(context);
    return Align(
      alignment: Alignment.topLeft,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _getCustomAppBar(),
        drawer: DrawerWidget().drawerMenu(context, _userModel),
        body: SafeArea(
          child: Builder(
            builder: (context) {
              if (_userModel.user.type == "STUDENT") {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 50),
                      Container(
                        alignment: Alignment.center,
                        height: 220,
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "1. Tamamlamış olduğunuz bu sürecin tümünü nasıl değerlendirirsiniz?"
                                  " Farkındalık yaratma ve kariyer gelişimi açısından size katkısı olduğunu düşünüyor musunuz?",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                labelText: "Cevabınızı Yazınız.",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "2. En yararlı bulduğunuz görüşme/çalışma hangisiydi?",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                labelText: "Cevabınızı Yazınız.",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 220,
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "3. En az faydalandığınız görüşme/çalışma hangisiydi?",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                labelText: "Cevabınızı Yazınız.",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 220,
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "4. Gelecek sene bu programa katılacak arkadaşların için neden katılmalı / katılmamalılar sence?",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                labelText: "Cevabınızı Yazınız.",
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                      Container(
                        height: 180,
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "5. Varsa önerileriniz veya eklemek istedikleriniz nelerdir?",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                labelText: "Cevabınızı Yazınız.",
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 130,
                            height: 60,
                            margin: EdgeInsets.only(right: 20),
                            child: FlatButton(
                              onPressed: () {},
                              color: AppColors.koyuMor.withOpacity(1),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                              ),
                              textColor: Colors.black,
                              padding: EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Anketi Gönder",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                );
              } else {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 50),
                      Container(
                        alignment: Alignment.center,
                        height: 220,
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "1. Kariyer Danışmanlığı son görüşmenizde, danışanın kendisi ile"
                                  " ilgili farkındalık süreci hakkında konuşabildiniz mi?",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                labelText: "Cevabınızı Yazınız.",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 300,
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "2. Tamamlamış olduğunuz bu sürecin tümünü nasıl değerlendirirsiniz?"
                                  " İçeriklerin uzmanlar tarafından daha fazla/az yapılandırılmış olması "
                                  "hakkındaki düşünceleriniz/önerileriniz nelerdir?",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                labelText: "Cevabınızı Yazınız.",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 220,
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "3. Varsa önerileriniz veya eklemek istedikleriniz nelerdir? "
                                  "(Görüşme sayısı hakkında, sizi etkileyen olumlu/olumsuz yönleri hakkında olabilir)",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                labelText: "Cevabınızı Yazınız.",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 130,
                            height: 60,
                            margin: EdgeInsets.only(right: 20),
                            child: FlatButton(
                              onPressed: () {},
                              color: AppColors.koyuMor.withOpacity(1),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                              ),
                              textColor: Colors.black,
                              padding: EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Anketi Gönder",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  _getCustomAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
          ),
          color: AppColors.koyuMor.withOpacity(1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    padding: EdgeInsets.all(20),
                    icon: Icon(
                      Icons.arrow_back,
                      size: 28,
                      color: AppColors.acikMavi.withOpacity(1),
                    ),
                    onPressed: () => Navigator.pop(context)),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Text(
              "ANKET SORULARI",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.acikMavi.withOpacity(1),
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
