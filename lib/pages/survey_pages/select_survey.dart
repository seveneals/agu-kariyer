import 'package:agucareer/pages/survey_pages/survey_questions.dart';
import 'package:agucareer/pages/survey_pages/survey_questions2.dart';
import 'package:agucareer/pages/survey_pages/survey_questions3.dart';
import 'package:agucareer/pages/survey_pages/survey_questions4.dart';
import 'package:agucareer/pages/survey_pages/survey_questions5.dart';
import 'package:agucareer/values/colors.dart';
import 'package:agucareer/viewmodels/user_model.dart';
import 'package:agucareer/widgets/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectSurvey extends StatefulWidget {
  @override
  _SelectSurveyState createState() => _SelectSurveyState();
}

class _SelectSurveyState extends State<SelectSurvey> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final UserModel _userModel = Provider.of<UserModel>(context);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: _getCustomAppBar(),
      drawer: DrawerWidget().drawerMenu(context, _userModel),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Builder(
              builder: (context) {
                return _buildSurveyPart(context, _userModel);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSurveyPart(BuildContext context, UserModel _userModel) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: <Widget>[
          Text("Anket Seç",
              style: TextStyle(
                  color: AppColors.acikMavi.withOpacity(1),
                  letterSpacing: 1.5,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans')),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
            color: AppColors.koyuMor.withOpacity(1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                title: Text(
                  '1. Görüşmeni Değerlendir',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SurveyQuestions()));
                  setState(() {
                    //  _selectedName = filteredUsers[index].name;
                  });
                },
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
            color: AppColors.koyuMor.withOpacity(1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                title: Text(
                  '2. Görüşmeni Değerlendir',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SurveyQuestions2()));
                  setState(() {
                    //  _selectedName = filteredUsers[index].name;
                  });
                },
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
            color: AppColors.koyuMor.withOpacity(1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                title: Text(
                  '3. Görüşmeni Değerlendir',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SurveyQuestions3()));
                  setState(() {
                    //  _selectedName = filteredUsers[index].name;
                  });
                },
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
            color: AppColors.koyuMor.withOpacity(1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                title: Text(
                  '4. Görüşmeni Değerlendir',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SurveyQuestions4()));
                  setState(() {
                    //  _selectedName = filteredUsers[index].name;
                  });
                },
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
            color: AppColors.koyuMor.withOpacity(1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                title: Text(
                  '5. Görüşmeni Değerlendir',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SurveyQuestions5()));
                  setState(() {
                    //  _selectedName = filteredUsers[index].name;
                  });
                },
              ),
            ),
          ),
        ],
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
              "ANKET DOLDUR",
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
