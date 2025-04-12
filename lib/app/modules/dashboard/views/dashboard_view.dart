// ignore_for_file: prefer_const_constructors

import 'package:abo_halab_app/app/modules/categories/views/categories_view.dart';
import 'package:abo_halab_app/app/modules/home/views/home_view.dart';
import 'package:abo_halab_app/app/modules/messages/views/messages_view.dart';
import 'package:abo_halab_app/app/modules/profile/views/profile_view.dart';
import 'package:abo_halab_app/app/modules/sell/views/sell_view.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:abo_halab_app/app/resource/app_images/app_images.dart';

class DashboardView extends StatefulWidget {
  DashboardView({super.key,});

  @override
  State<DashboardView> createState() => _BrokerHomeState();
}

class _BrokerHomeState extends State<DashboardView> {
  int currentIndex = 0;

  // List of body views based on selected index
  static List<Widget> screens = <Widget>[
    HomeView(),
    CategoriesView(),
    SellView(),
    MessagesView(),
    ProfileView(),
  ];

  // Active icon list for each tab
  final List<String> activeIcons = [
    AppImages.homeActive,
    AppImages.categoryActive,
    AppImages.addActive,
    AppImages.messageActive,
    AppImages.profileActive
  ];

  // Inactive icon list for each tab
  final List<String> inactiveIcons = [
    AppImages.homeInactive,
    AppImages.categoryInactive,
    AppImages.addInactive,
    AppImages.messagesInactive,
    AppImages.profileInactive
  ];

  // Titles for bottom navigation
  List<String> listOfTitles = [
    'Home',
    'Categories',
    'Sell',
    'Messages',
    'Profile',
  ];

  bool get isTablet {
    return MediaQuery.of(context).size.width > 600.0;
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen size using MediaQuery
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: screens[currentIndex],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height:  isTablet ? size.height * 0.10 : size.height * 0.08,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(5, (index) {
            return Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Animated top border (highlight) when selected
                    AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      margin: EdgeInsets.only(
                        bottom: index == currentIndex ? 0 : (isTablet ? size.width * 0.018 : size.width * 0.025),
                        right: size.width * .0400,
                        left: size.width * .0400,
                      ),
                      width: size.width * 0.128,
                      height: index == currentIndex ? (isTablet ? size.width * 0.006 : size.width * 0.010) : 0,
                    ),
                    // Custom icon using Image.asset (active/inactive)
                    Image.asset(
                      index == currentIndex
                          ? activeIcons[index]  // Active icon from the list
                          : inactiveIcons[index],  // Inactive icon from the list
                      width: isTablet ? size.width * 0.035 :size.width * 0.060,
                      height: isTablet ? size.height * 0.035 :size.height * 0.030,
                      color: index == currentIndex
                          ? AppColors.mainColor
                          : Colors.black,
                    ),

                    // Show the title only when currentIndex == index
                    Text(
                      listOfTitles[index],
                      style: GoogleFonts.poppins(
                        color: index == currentIndex? AppColors.mainColor : Colors.black,
                        fontSize: isTablet ? 12 : 12,
                      ),
                    ),

                    // Animated bottom border (highlight) when selected
                    AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      margin: EdgeInsets.only(
                        top: index == currentIndex ? 0 : (isTablet ? size.width * .006 : size.width * .010),
                        right: size.width * .0422,
                        left: size.width * .0422,
                      ),
                      width: size.width * 0.300,
                      height: index == currentIndex ? (isTablet ? size.width * 0.006 : size.width * 0.010) : 0,
                      decoration: BoxDecoration(
                        color: Color(0xffFDFDFD),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
