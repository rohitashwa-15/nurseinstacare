import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

class BookingIDView extends StatefulWidget {
  const BookingIDView({Key? key}) : super(key: key);

  @override
  State<BookingIDView> createState() => _BookingIDViewState();
}

class _BookingIDViewState extends State<BookingIDView>
    with TickerProviderStateMixin {
  late TabController _tabController;
  Color colorCare = Colors.white;
  Color colorPatients = Colors.white;
  Color colorPastReports = Colors.white;
  var _listTextTabToggle = ["Tab A (10)", "Tab B (6)", "Tab C (9)"];
  var _tabTextIndexSelected = 0;
  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      initialIndex: 1,
      vsync: this,
    );
    _tabController.addListener(() {
      Get.find<BookingIDController>()
          .updateUiForCurrentTab(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomActionAppBar(
          title: '#1234567890',
          subtitle: StringConstants.bookingID,
          actionIcon: IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: ListView(
            children: [
              ListTile(
                leading: Image.asset(IconConstants.userIcon),
                title: Text(
                  'Sarah Mills',
                  style: Styles.blackBold15,
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      color: Colors.red.withOpacity(0.2)),
                  child: Padding(
                    padding: Dimens.edgeInsets2,
                    child: Text(
                      'CRITICAL',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w900,
                          fontSize: Dimens.ten),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.3),
                child: TabBar(
                  controller: _tabController,
                  //  labelStyle: Styles.black15,
                  // labelColor: Colors.white,
                  unselectedLabelColor: Colors.blue,
                  padding: Dimens.edgeInsets10,
                  indicatorSize: TabBarIndicatorSize.tab,
                  // unselectedLabelStyle: Styles.black15,
                  indicator: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue,
                  ),
                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Center(child: Text('CARE MOMENT')),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Center(child: Text('PATIENT DETAILS')),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('PAST REPORTS'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Dimens.percentWidth(1),
                height: Dimens.percentHeight(1),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    const CareMoment(),
                    const PatientDetails(),
                    const PastReport(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: Dimens.edgeInsets10,
          child:  RightArrowButton(title: StringConstants.startJob,),
        ),
      );
}
