import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class ClinicSingleView extends StatefulWidget {
  const ClinicSingleView({Key? key}) : super(key: key);

  @override
  State<ClinicSingleView> createState() => _ClinicSingleViewState();
}

class _ClinicSingleViewState extends State<ClinicSingleView> {
  int activeIndex = 0;
  final urlImages = [
    'https://mumbaimirror.indiatimes.com/thumb/msid-66001811,width-1200,height-900,resizemode-4/.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpzYcHItRpTbrRkvxjfLVfg5lQWc8jMChgalO_Ix3eO2E2mSS3FaDpGA4pgZgir39pHc0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMWt4cOxGgCPGmL3u_wNwoPgpOaJ9v1TPafmmMaGow6jxp4BX8LXb7Wb4CD9cpx-CcVDQ&usqp=CAU',
  ];
  List<ClinicDetails> values = Utils.getMockedClinicDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F4EF),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Clinic",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 20,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 5, right: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: CarouselSlider.builder(
                              options: CarouselOptions(
                                //height: 200,
                                viewportFraction: 1,
                                // aspectRatio: 12/2,
                                autoPlay: true,
                                reverse: false,
                                autoPlayInterval: Duration(seconds: 4),
                                onPageChanged: (index, reason) =>
                                    setState(() => activeIndex = index),
                              ),
                              itemCount: urlImages.length,
                              itemBuilder: (context, index, realIndex) {
                                final urlImage = urlImages[index];
                                return buildImage(urlImage, index);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: Center(
                        child: buildIndicator(),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 20, top: 0),
                            child: Text(
                              "Dr.Neha's Skin Clinic ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 25,
                                    right: 5,
                                    top: 20,
                                  ),
                                  child: Text('Address : ' + values[0].address,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 4,
                                      softWrap: false),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 5, top: 10),
                                  child: Text('State : ' + values[0].state,
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontSize: 14)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, right: 5, top: 10),
                                child: Text('District : ' + values[0].district,
                                    style: TextStyle(
                                        color: Colors.grey[800], fontSize: 14)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, right: 5, top: 10),
                                child: Text('City : ' + values[0].city),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, right: 5, top: 10),
                                child: Text('Contact No : ' + values[0].contact,
                                    style: TextStyle(
                                        color: Colors.grey[800], fontSize: 14)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, right: 5, top: 10),
                                child: Text(
                                  'Time : ' + values[0].time,
                                  style: TextStyle(
                                      color: Colors.grey[800], fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, right: 5, top: 10),
                                child: Text(
                                  'Days : ' + values[0].days,
                                  style: TextStyle(
                                      color: Colors.grey[800], fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Flexible(
                  child: Container(
                    width: double.infinity,

                    // height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        ExpansionTile(
                          title: Text('Dentistry'),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                              ),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1087304045235077120/2rLADCjK_400x400.jpg'),
                                ),
                                title: Text('Aswin'),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mon, Wed, Fry'),
                                    Text('09:00am - 06:00pml')
                                  ],
                                ),
                                trailing: Text('BDS'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1087304045235077120/2rLADCjK_400x400.jpg'),
                                ),
                                title: Text('Aswin'),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mon, Wed, Fry'),
                                    Text('09:00am - 06:00pml')
                                  ],
                                ),
                                trailing: Text('BDS'),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 15),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1087304045235077120/2rLADCjK_400x400.jpg'),
                                ),
                                title: Text('Aswin'),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mon, Wed, Fry'),
                                    Text('09:00am - 06:00pml')
                                  ],
                                ),
                                trailing: Text('BDS'),
                              ),
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text('Cosmetics'),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1087304045235077120/2rLADCjK_400x400.jpg'),
                                ),
                                title: Text('Aswin'),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mon, Wed, Fry'),
                                    Text('09:00am - 06:00pml')
                                  ],
                                ),
                                trailing: Text('BDS'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1087304045235077120/2rLADCjK_400x400.jpg'),
                                ),
                                title: Text('Aswin'),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mon, Wed, Fry'),
                                    Text('09:00am - 06:00pml')
                                  ],
                                ),
                                trailing: Text('BDS'),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 15),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1087304045235077120/2rLADCjK_400x400.jpg'),
                                ),
                                title: Text('Aswin'),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mon, Wed, Fry'),
                                    Text('09:00am - 06:00pml')
                                  ],
                                ),
                                trailing: Text('BDS'),
                              ),
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text('Detrmattology'),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1087304045235077120/2rLADCjK_400x400.jpg'),
                                ),
                                title: Text('Aswin'),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mon, Wed, Fry'),
                                    Text('09:00am - 06:00pml')
                                  ],
                                ),
                                trailing: Text('BDS'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1087304045235077120/2rLADCjK_400x400.jpg'),
                                ),
                                title: Text('Aswin'),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mon, Wed, Fry'),
                                    Text('09:00am - 06:00pml')
                                  ],
                                ),
                                trailing: Text('BDS'),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 15),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1087304045235077120/2rLADCjK_400x400.jpg'),
                                ),
                                title: Text('Aswin'),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mon, Wed, Fry'),
                                    Text('09:00am - 06:00pml')
                                  ],
                                ),
                                trailing: Text('BDS'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(urlImage),
            fit: BoxFit.cover,
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 12),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: ExpandingDotsEffect(
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: Colors.grey,
            dotColor: Colors.black),
      );
}

class ClinicDetails {
  String address;
  String state;
  String district;
  String city;
  String contact;
  String time;
  String days;
  ClinicDetails(
      {required this.address,
      required this.state,
      required this.district,
      required this.city,
      required this.contact,
      required this.time,
      required this.days});
}

class Utils {
  static List<ClinicDetails> getMockedClinicDetails() {
    return [
      ClinicDetails(
          address:
              '2660 Fritts Crossing SE, Albuquerque new mexicnbojbknbj,dfehyyjg,',
          state: 'Kerala',
          district: 'Kozhikode',
          city: 'Payyoli',
          contact: '79079 82189',
          time: '08:00am - 10:00pm',
          days: 'Mon, Wed, Fry')
    ];
  }
}
