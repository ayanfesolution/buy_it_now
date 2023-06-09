import 'package:auto_adjust/auto_adjust.dart';
import 'package:buy_it_now/screens/dashboard/other_screens.dart';
import 'package:buy_it_now/utils/app_colors.dart';
import 'package:buy_it_now/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../home/home_page.dart';

class BottomNavPage extends StatefulHookWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screensToShow = [
      const HomePage(),
      const OtherScreens(name: 'Voucher'),
      const OtherScreens(name: 'Wallet'),
      const OtherScreens(name: 'Settings'),
    ];
    var indexToShow = useState(0);
    return Scaffold(
        body: screensToShow[indexToShow.value],
        bottomNavigationBar: DashboardButtomNavBar(indexToShow: indexToShow));
  }
}

class DashboardButtomNavBar extends StatelessWidget {
  const DashboardButtomNavBar({
    super.key,
    required this.indexToShow,
  });

  final ValueNotifier<int> indexToShow;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWHTCOLOUR,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DashboardButtomNavBarWidget(
            name: 'Home',
            svgImagePathInactive:
                PhosphorIcon(PhosphorIcons.regular.houseSimple),
            svgImagePathActive: PhosphorIcon(
              PhosphorIcons.fill.houseSimple,
              color: kPRYCOLOUR,
            ),
            isActive: indexToShow.value == 0,
            onTap: () {
              indexToShow.value = 0;
            },
          ),
          DashboardButtomNavBarWidget(
            name: 'Voucer',
            svgImagePathInactive: PhosphorIcon(PhosphorIcons.regular.ticket),
            svgImagePathActive: PhosphorIcon(
              PhosphorIcons.fill.ticket,
              color: kPRYCOLOUR,
            ),
            isActive: indexToShow.value == 1,
            onTap: () {
              indexToShow.value = 1;
            },
          ),
          DashboardButtomNavBarWidget(
            name: 'Wallet',
            svgImagePathInactive: PhosphorIcon(PhosphorIcons.regular.wallet),
            svgImagePathActive: PhosphorIcon(
              PhosphorIcons.fill.wallet,
              color: kPRYCOLOUR,
            ),
            isActive: indexToShow.value == 2,
            onTap: () {
              indexToShow.value = 2;
            },
          ),
          DashboardButtomNavBarWidget(
            name: 'Settings',
            svgImagePathInactive: PhosphorIcon(PhosphorIcons.regular.gearSix),
            svgImagePathActive: PhosphorIcon(
              PhosphorIcons.fill.gearSix,
              color: kPRYCOLOUR,
            ),
            isActive: indexToShow.value == 3,
            onTap: () {
              indexToShow.value = 3;
            },
          ),
        ],
      ),
    );
  }
}

class DashboardButtomNavBarWidget extends StatelessWidget {
  const DashboardButtomNavBarWidget({
    super.key,
    required this.svgImagePathActive,
    required this.svgImagePathInactive,
    required this.name,
    required this.isActive,
    required this.onTap,
  });
  final Widget svgImagePathActive;
  final Widget svgImagePathInactive;
  final String name;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: autoAdjustHeight(25),
      ),
      child: SizedBox(
        height: autoAdjustHeight(83),
        child: InkWell(
          onTap: onTap,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Gap(autoAdjustHeight(16)),
              SizedBox(
                height: autoAdjustHeight(48),
                //     width: getScreenWidth(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isActive ? svgImagePathActive : svgImagePathInactive,
                    Text(
                      name,
                      style: kTextStyleCustom(
                          fontSize: autoAdjustHeight(12),
                          fontWeight: FontWeight.w600,
                          color: isActive ? kBLKCOLOUR : kINACTIVECOLOR),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
