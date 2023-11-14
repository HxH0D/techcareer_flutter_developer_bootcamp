import 'package:flutter/material.dart';
import 'package:odev_4_calculator/customButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController calculatorText = TextEditingController();
  int firsNum = 0;
  int secondNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: TextField(
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              textAlign: TextAlign.end,
              controller: calculatorText,
              onTap: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                txtColor: Colors.white,
                text: "1",
                btnColor: Colors.black45,
                callBack: () {
                  calculatorText.text += "1";
                  setState(() {});
                },
              ),
              CustomButton(
                txtColor: Colors.white,
                text: "2",
                btnColor: Colors.black45,
                callBack: () {
                  calculatorText.text += "2";
                  setState(() {});
                },
              ),
              CustomButton(
                txtColor: Colors.white,
                text: "3",
                btnColor: Colors.black45,
                callBack: () {
                  calculatorText.text += "3";
                  setState(() {});
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                txtColor: Colors.white,
                text: "4",
                btnColor: Colors.black45,
                callBack: () {
                  calculatorText.text += "4";
                  setState(() {});
                },
              ),
              CustomButton(
                txtColor: Colors.white,
                text: "5",
                btnColor: Colors.black45,
                callBack: () {
                  calculatorText.text += "5";
                  setState(() {});
                },
              ),
              CustomButton(
                txtColor: Colors.white,
                text: "6",
                btnColor: Colors.black45,
                callBack: () {
                  calculatorText.text += "6";
                  setState(() {});
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                txtColor: Colors.white,
                text: "7",
                btnColor: Colors.black45,
                callBack: () {
                  calculatorText.text += "7";
                  setState(() {});
                },
              ),
              CustomButton(
                txtColor: Colors.white,
                text: "8",
                btnColor: Colors.black45,
                callBack: () {
                  calculatorText.text += "8";
                  setState(() {});
                },
              ),
              CustomButton(
                txtColor: Colors.white,
                text: "9",
                btnColor: Colors.black45,
                callBack: () {
                  calculatorText.text += "9";
                  setState(() {});
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                txtColor: Colors.white,
                text: "0",
                btnColor: Colors.black45,
                callBack: () {
                  calculatorText.text += "0";
                  setState(() {});
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                txtColor: Colors.white,
                text: "Ac",
                btnColor: Colors.red,
                callBack: () {
                  calculatorText.text = "";
                  setState(() {});
                },
              ),
              CustomButton(
                txtColor: Colors.white,
                text: "+",
                btnColor: Colors.red,
                callBack: () {
                 
                  calculatorText.text += "+";

                  setState(() {});
                },
              ),
              CustomButton(
                txtColor: Colors.white,
                text: "=",
                btnColor: Colors.blue,
                callBack: () {
                  firsNum = int.parse(calculatorText.text.split("+").first);
                  secondNum = int.parse(calculatorText.text.split("+").last);
                  calculatorText.text = (firsNum+secondNum).toString();
                  setState(() {});
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
