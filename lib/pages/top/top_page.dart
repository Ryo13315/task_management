import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/pages/top/side_menu.dart';
import 'package:task_management/provider/page_provider.dart';

import '../../config/size_config.dart';
import '../../util/color.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {

  late PageProvider _pageProvider;

  @override
  Widget build(BuildContext context) {
    _pageProvider = Provider.of<PageProvider>(context);
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: UtilColor.greyColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.blockSizeVertical*100,
            width: SizeConfig.blockSizeHorizontal*15,
            child: const SideMenu(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.blockSizeVertical*10,),
              Container(
                height: SizeConfig.blockSizeVertical*90,
                width: SizeConfig.blockSizeHorizontal*85,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80))
                ),
                child: _pageProvider.pageList.elementAt(_pageProvider.pageNum),
              ),
            ],
          )
        ],
      ),
    );
  }
}
