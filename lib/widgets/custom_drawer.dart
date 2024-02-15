import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_otem_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_list_view.dart';
import 'package:responsive_dash_board/widgets/inactive&active_drawert_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfolistTile(
              title: 'HnoOd ALnjjar',
              subTitle: 'demo@gmail.com',
              image: Assets.imagesAvatar,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DraweritemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                  listTileData: DrawerItmeModel(
                      title: 'Settings', image: Assets.imagesSetting),
                ),
                InActiveDrawerItem(
                  listTileData: DrawerItmeModel(
                      title: 'Logout account', image: Assets.imagesLogout),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
