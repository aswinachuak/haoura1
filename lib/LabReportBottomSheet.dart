import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LabReportBottomSheet extends StatefulWidget {
  const LabReportBottomSheet({Key? key}) : super(key: key);

  @override
  _LabReportBottomSheetState createState() => _LabReportBottomSheetState();
}

class _LabReportBottomSheetState extends State<LabReportBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Add Lab Report',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Test name',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'date',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DottedBorder(
                color: Colors.grey,
                strokeWidth: 1.5,
                dashPattern: const <double>[10, 10],
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    color: Colors.white,
                    child: Center(child: Text('Choose File')),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
