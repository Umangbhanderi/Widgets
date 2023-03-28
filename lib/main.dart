import 'WIDGETS/new.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animation",
      theme: ThemeData.dark(),
      // home:const HomePage(),
      // home:const Transaction_Animation(),
      // home:const PopUp(),
      // home:const CustomAppBar(),
      // home:const ModelBottomSheet(),
      // home:const DraggableIMG(),
      // home:const InteractiveViewers(),
      // home:const ListDrawable(),
      // home:const ListTileCheckBox(),
      // home:const CircleAVTAR(),
      // home:const CupertinoMENU(),
      // home:const TableWidget(),
      // home:const ALERTDIALOG(),
      // home:const AniCONTAINER(),
      // home:const PikerDATE(),
      // home:const TIMEPIKER(),
      // home:const RangeOFDATE(),
      // home:const DeleteItem(),
      // home:const  GraggableLIST(),
      // home:const CLRCNGCONTAINER(),
      // home:const CROSFADE(),
      // home:const DrawerWidget(),
      // home:const POPUPMENU(),
      // home:const TextANI(),
      // home:const ASPRatio(),
      // home:const AUTOCOMP(),
      // home:const EXPANDWIDGET(),
      // home:const FLEXWIDGET(),
      // home:const FORMWIDGET(),
      // home:const AnimatedICONS(),
      // home:const ChoiceChipWIDGET(),
      // home:const FADEImage(),
      // home:const Loading(),
      // home: const GestureDetecWIDGET(),
      // home: const GRIDWIDGET(),
      // home: const RotateANIMATIONWIDGET(),
      // home: const heroWIDGET(),
      // home: IgnoreWIDGET(),
      // home: IndexedStackWIDGET(),
      // home: NavIBAR(),
      // home: OPACITYWIDGET(),
      // home: StepWIDGET(),
      // home: STREAMBUILDERWIDGET(),
      // home: TABPAGESELECTORWIDGET(),
      // home: const TABBARWIDGET(),
      // home: const PAGEVIEWWIDGET(),
      // home: const PositionedWIDGET(),
      // home: const REFRESHWIDGET(),
      home: CountdownTimer(),
    );
  }
}
