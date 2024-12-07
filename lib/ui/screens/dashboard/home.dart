import 'package:eatos/logic/eat_os_logic.dart';
import 'package:eatos/service_locator.dart';
import 'package:eatos/ui/components/eat_os_components.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardBLoC dashboardBLoC = locator.get();
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            StreamBuilder<bool?>(
                stream: dashboardBLoC.showGuestList,
                builder: (context, snapshot) {
                  return Visibility(
                    visible: snapshot.data ?? false,
                    child: Expanded(
                      flex: 3,
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            // EatOsSearchField(),
                            ...List.generate(
                                10,
                                (index) => Column(
                                      children: [
                                        const EatOsGuestBookCard(
                                          name: "Daniel Folorunso",
                                          email: "folorunsodaniel5@gmail.com",
                                          phone_number: "+2349015598060",
                                        ),
                                        if (index != 9)
                                          const SizedBox(
                                            height: 16,
                                          )
                                      ],
                                    ))
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            StreamBuilder<bool?>(
                stream: dashboardBLoC.showGuestList,
                builder: (context, snapshot) {
                  return Visibility(
                      visible: snapshot.data ?? false,
                      child: const VerticalDivider());
                }),
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () => dashboardBLoC.toggleShowGuestList(false),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StreamBuilder<bool?>(
                          stream: dashboardBLoC.showGuestList,
                          builder: (context, snapshot) {
                            return Visibility(
                              visible: snapshot.hasData && snapshot.data != null
                                  ? !snapshot.data!
                                  : true,
                              child: GestureDetector(
                                onTap: () =>
                                    dashboardBLoC.toggleShowGuestList(true),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.arrow_back_ios),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Text("Guest Book", style: TextStyle(fontSize: 16),)
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 32,
                                ),
                                Text("Daniel Folorunso"),
                                Text("folorunsodaniel5@gmail.com"),
                                Text("+2349015598060"),
                                EatOsButton(
                                  label: "Add Tags",
                                )
                              ],
                            ),
                            VerticalDivider(),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      EatOsAnalyticsUnit(
                                        text: "-- -- --",
                                        metric: "Last Visit",
                                      ),
                                      VerticalDivider(),
                                      EatOsAnalyticsUnit(
                                        text: "\$0.00",
                                        metric: "Average Spend",
                                      ),
                                      VerticalDivider(),
                                      EatOsAnalyticsUnit(
                                        text: "\$0.00",
                                        metric: "Lifetime Spend",
                                      ),
                                      VerticalDivider(),
                                      EatOsAnalyticsUnit(
                                        text: "0",
                                        metric: "Total Orders",
                                      ),
                                      VerticalDivider(),
                                      EatOsAnalyticsUnit(
                                        text: "\$0.00",
                                        metric: "Average Tip",
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("LOYALTY"),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              EatOsAnalyticsUnit(),
                                              VerticalDivider(),
                                              EatOsAnalyticsUnit(),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              EatOsAnalyticsUnit(),
                                              VerticalDivider(),
                                              EatOsAnalyticsUnit(),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("LOYALTY"),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              EatOsAnalyticsUnit(),
                                              VerticalDivider(),
                                              EatOsAnalyticsUnit(),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              EatOsAnalyticsUnit(),
                                              VerticalDivider(),
                                              EatOsAnalyticsUnit(),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: EatOsTabSwitch(
                          items:
                              "Profile,Reservation,Payment,Feedback,Order History"
                                  .split(","),
                          stream: locator.get<DashboardBLoC>().currentTab,
                          onTap: locator.get<DashboardBLoC>().selectTab,
                        ),
                      ),
                      const EatOsHomeSections(
                        section_title: "ALLERGIES",
                        section_widget: EatOsEmptySectionCard(
                          icon: Icons.dining,
                          text: "No Allergies",
                          button_text: "Add",
                        ),
                      ),
                      const EatOsHomeSections(
                        section_title: "UPCOMING VISITS",
                        section_widget: EatOsEmptySectionCard(
                          icon: Icons.storefront_rounded,
                          text: "No Upcoming Visits",
                          button_text: "Book A Visit",
                        ),
                      ),
                      const EatOsHomeSections(section_title: "NOTES"),
                      const EatOsHomeSections(
                        section_title: "RECENT ORDERS",
                        section_widget: EatOsEmptySectionCard(
                          icon: Icons.dinner_dining_sharp,
                          text: "No Recent Orders to Show",
                        ),
                      ),
                      const EatOsHomeSections(
                        section_title: "ONLINE REVIEWS",
                        section_widget: EatOsEmptySectionCard(
                          icon: Icons.chat,
                          text: "No Online Review to Show",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
