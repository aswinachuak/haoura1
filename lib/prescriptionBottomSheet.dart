import 'package:flutter/material.dart';
import 'package:haoura1/tableValue.dart';
import 'package:haoura1/utils1.dart';

class PrescriptionBottomSheet extends StatefulWidget {
  const PrescriptionBottomSheet({Key? key}) : super(key: key);

  @override
  _PrescriptionBottomSheetState createState() =>
      _PrescriptionBottomSheetState();
}

class _PrescriptionBottomSheetState extends State<PrescriptionBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Text(
            'Medicine Prescription',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: Text(
            '17 - 11 - 2022',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Container(
            width: double.infinity,
            // height: 200,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 20, right: 15, bottom: 0),
                          child: Text(
                            'Medicine',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 20, right: 15, bottom: 0),
                          child: Text(
                            'Quantitty',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 20, right: 15, bottom: 0),
                          child: Text(
                            'Comments',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: listview1.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(listview1[index].medicineName),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(listview1[index].qty),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(listview1[index].comments),
                              ),
                            ),
                          ),
                        ],
                      );
                    })
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('Lab Test Details',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore,',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('Other Details',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore  ,',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                )),
          ),
        ),
        Flexible(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Done'),
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                )),
          ),
        )
      ],
    );
  }
}

List<TableValue> listview1 = Utils1.getMockedTableView();
