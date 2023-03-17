import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/pages/top/side_menu_tab.dart';
import 'package:task_management/provider/page_provider.dart';
import 'package:task_management/util/color.dart';

import '../../config/size_config.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  late PageProvider _pageProvider;
  @override
  Widget build(BuildContext context) {
    _pageProvider = Provider.of<PageProvider>(context);
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: UtilColor.greyColor,
      body: SizedBox(
        height: SizeConfig.blockSizeVertical*100,
        width: SizeConfig.blockSizeHorizontal*15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.black,

              ),
              child: const Center(
                child: Text('画像が入ります'),
              ),
            ),
            const SizedBox(height: 20,),
            _tabItem(0, "タスク一覧"),
            const SizedBox(height: 20,),
            _tabItem(1, "カレンダー"),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  _tabItem(int i,String title){
    return InkWell(
      onTap: (){
        _pageProvider.onChangePageNum(i);
        setState(() {});
      },
      child: SideMenuTab(
        menuTitle: title,
        tabColor: Colors.green,
        tabWidth: SizeConfig.blockSizeHorizontal*15,
      ),
    );
  }

}
