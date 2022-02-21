import 'package:flutter/material.dart';
import 'package:haoura1/prescriptionBottomSheet.dart';

class PrescriptionView extends StatefulWidget {
  const PrescriptionView({Key? key}) : super(key: key);

  @override
  State<PrescriptionView> createState() => _PrescriptionView();
}

class _PrescriptionView extends State<PrescriptionView> {
  List<PrescriptionList> consultationview =
      PresciptionUtils.getmockedPresciptionUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F0FE),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Presciption List",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Container(
        width: double.infinity,
        // height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Flexible(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: consultationview.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      right: 20, left: 20, bottom: 20, top: 10),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => PrescriptionBottomSheet());
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 7, right: 5, top: 10),
                              child: Text(
                                'Prescribed on',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 70, right: 5, top: 10),
                              child: Text(
                                ':',
                                style: TextStyle(
                                    color: Colors.grey[800], fontSize: 14),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 65, right: 5, top: 10),
                              child: Text(
                                consultationview[index].date,
                                style: TextStyle(
                                    color: Colors.grey[800], fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class PrescriptionList {
  final String date;

  PrescriptionList(this.date);
}

class PresciptionUtils {
  static List<PrescriptionList> getmockedPresciptionUtils() {
    return [
      PrescriptionList('18-11-22'),
      PrescriptionList('18-11-21'),
      PrescriptionList('17-11-21'),
      PrescriptionList('17-11-21'),
      PrescriptionList('17-11-21'),
      PrescriptionList('18-11-21'),
      PrescriptionList('17-11-21'),
      PrescriptionList('17-11-21'),
    ];
  }
}
