import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class ClassAddScreen extends StatelessWidget {
  static const routeName = '/class-add';
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController finishDateController = TextEditingController();
  TextEditingController totalCountController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDetail(context),
      body: Container(
        padding: EdgeInsets.only(
          top: 5,
          bottom: 10,
          left: 15,
          right: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                alignment: Alignment.center,
                child: IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    size: 50,
                  ),
                ),
              ),
              _buildTextField(context, "강좌 제목", titleController),
              SizedBox(height: 10),
              _buildTextField(context, "가격", priceController),
              SizedBox(height: 15),
              Divider(thickness: 3),
              SizedBox(height: 15),
              Row(children: [
                Expanded(
                    child: Text(
                  "강좌 정보",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ))
              ]),
              SizedBox(height: 10),
              _buildTextField(context, "진행 날짜", startDateController),
              SizedBox(height: 10),
              _buildTextField(context, "마감 날짜", finishDateController),
              SizedBox(height: 10),
              _buildTextField(context, "모집 인원", totalCountController),
              SizedBox(height: 10),
              _buildTextField(context, "강의장 위치", locationController),
              SizedBox(height: 15),
              Divider(thickness: 3),
              SizedBox(height: 15),
              Row(children: [
                Expanded(
                    child: Text(
                  "강좌 내용",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ))
              ]),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: TextField(
                  controller: contentController,
                  decoration: InputDecoration(
                    hintText: "강의 내용을 입력해 주세요",
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).focusColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).focusColor),
                    ),
                  ),
                  minLines: 9,
                  maxLines: null,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // print(titleController.text);
                  // print(priceController.text);
                  // print(startDateController.text);
                  // print(finishDateController.text);
                  // print(totalCountController.text);
                  // print(locationController.text);
                  // print(contentController.text);
                  Navigator.of(context).pop();
                },
                child: Text(
                  "  방 만들기  ",
                  style: TextStyle(fontSize: 50, fontFamily: 'Dongle'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).hoverColor,
                  onPrimary: Theme.of(context).focusColor,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      BuildContext context, String title, TextEditingController controller) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: SizedBox()),
        Container(
          width: 250,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: title,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).focusColor),
              ),
            ),
          ),
        )
      ],
    );
  }
}
