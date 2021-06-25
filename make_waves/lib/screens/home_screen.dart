import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:make_waves/widgets/make_waves_app_bar.dart';
import 'package:make_waves/widgets/make_waves_footer.dart';
import 'package:make_waves/widgets/make_waves_hero.dart';
import 'package:make_waves/widgets/make_waves_input.dart';
import 'package:make_waves/widgets/make_waves_partnership.dart';
import 'package:make_waves/widgets/make_waves_prizes.dart';
import 'package:make_waves/widgets/make_waves_reg_one.dart';
import 'package:make_waves/widgets/make_waves_reg_three.dart';
import 'package:make_waves/widgets/make_waves_reg_two.dart';
import 'package:make_waves/widgets/make_waves_spacer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../exports.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final teamController = TextEditingController();
  final memName1Controller = TextEditingController();
  final memEmail1Controller = TextEditingController();
  final memName2Controller = TextEditingController();
  final memEmail2Controller = TextEditingController();
  final memName3Controller = TextEditingController();
  final memEmail3Controller = TextEditingController();
  final memName4Controller = TextEditingController();
  final memEmail4Controller = TextEditingController();
  final solutionController = TextEditingController();
  dynamic sector = 'Agriculture';

  void changeSector(value) {
    setState(() {
      sector = value;
    });
  }

  Future sendEmail() async {
    Loader.show(
      context,
      progressIndicator: SpinKitWave(
        color: theme.makeWavesColor,
        size: 100.0,
      ),
    );
    CollectionReference teams = FirebaseFirestore.instance.collection('teams');
    try {
      await teams.doc().set({
        'team_name': teamController.value.text,
        'team_members': [
          {
            'member_1_name': memName1Controller.value.text,
            'member_1_email': memEmail1Controller.value.text,
            'member_2_name': memName2Controller.value.text,
            'member_2_email': memEmail2Controller.value.text,
            'member_3_name': memName3Controller.value.text,
            'member_3_email': memEmail3Controller.value.text,
            'member_4_name': memName4Controller.value.text,
            'member_4_email': memEmail4Controller.value.text,
          },
        ],
        'proposed_sector': sector,
        'proposed_solution': solutionController.value.text,
      });
      final snackBar = SnackBar(content: Text('Yay! Registered succesfully!'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
      final snackBar = SnackBar(content: Text('Oops! Registered succesfully!'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      print(e.toString());
    }
    Loader.hide();
  }

  @override
  Widget build(BuildContext context) {
    final display = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
          child: MakeWavesAppBar(), preferredSize: Size.fromHeight(120.0)),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                width: display > 430 ? 720 : 430,
                child: Column(
                  children: [
                    MakeWavesSpacer(),
                    MakeWavesHero(),
                    MakeWavesSpacer(),
                    MakeWavesPartnership(),
                    MakeWavesSpacer(),
                    MakeWavesPrizes(),
                    MakeWavesSpacer(),
                    MakeWavesRegOne(
                      teamController: teamController,
                      memName1Controller: memName1Controller,
                      memEmail1Controller: memEmail1Controller,
                      memName2Controller: memName2Controller,
                      memEmail2Controller: memEmail2Controller,
                      memName3Controller: memName3Controller,
                      memEmail3Controller: memEmail3Controller,
                      memName4Controller: memName4Controller,
                      memEmail4Controller: memEmail4Controller,
                    ),
                    MakeWavesSpacer(),
                    MakeWavesRegTwo(
                        changeSector: changeSector,
                        solutionController: solutionController),
                    MakeWavesSpacer(),
                    MakeWavesRegThree(registerAction: sendEmail),
                    MakeWavesSpacer(),
                  ],
                ),
              ),
              MakeWavesFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
