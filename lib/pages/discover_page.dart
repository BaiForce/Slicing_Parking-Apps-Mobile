import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_parkcar_app/theme/app_pallate.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppPallate.white,
      selectedItemColor: AppPallate.colorPrimary,
      unselectedItemColor: AppPallate.colorGray,
      showSelectedLabels: true,
      selectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      items: [
        bottomNavigationItemBar(
          icon: 'assets/svgs/discover.svg',
          label: 'Discover',
        ),
        bottomNavigationItemBar(
          icon: 'assets/svgs/orders.svg',
          label: '  Orders',
        ),
        bottomNavigationItemBar(
          icon: 'assets/svgs/wallet.svg',
          label: 'Wallet',
        ),
        bottomNavigationItemBar(
          icon: 'assets/svgs/settings.svg',
          label: 'Setting',
        ),
      ],
    );
  }

  BottomNavigationBarItem bottomNavigationItemBar({
    required String label,
    required String icon,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(AppPallate.colorGray, BlendMode.srcIn),
      ),
      activeIcon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(AppPallate.colorPrimary, BlendMode.srcIn),
      ),
      label: label,
    );
  }
}
