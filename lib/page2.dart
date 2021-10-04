import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  bool isHMondayClicked = false;
  bool isHTuesdayClicked = false;
  bool isHWednesdayClicked = false;
  bool isHThursdayClicked = false;
  bool isHSMondayClicked = false;
  bool isHSTuesdayClicked = false;
  bool isHSWednesdayClicked = false;
  bool isHSThursdayClicked = false;

  bool isVMondayClicked = false;
  bool isVTuesdayClicked = false;
  bool isVWednesdayClicked = false;
  bool isVThursdayClicked = false;
  bool isVSMondayClicked = false;
  bool isVSTuesdayClicked = false;
  bool isVSWednesdayClicked = false;
  bool isVSThursdayClicked = false;

  bool isRadioSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speed Dial FAB Example"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Horizontal",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "Shape Disabled",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      noShapeWidget(
                        isClicked: isHMondayClicked,
                        onClick: () {
                          setState(() {
                            isHMondayClicked = !isHMondayClicked;
                          });
                        },
                        text: 'Monday',
                        isVertical: false,
                      ),
                      noShapeWidget(
                        isClicked: isHTuesdayClicked,
                        onClick: () {
                          setState(() {
                            isHTuesdayClicked = !isHTuesdayClicked;
                          });
                        },
                        text: 'Tuesday',
                        isVertical: false,
                      ),
                      noShapeWidget(
                        isClicked: isHWednesdayClicked,
                        onClick: () {
                          setState(() {
                            isHWednesdayClicked = !isHWednesdayClicked;
                          });
                        },
                        text: 'Wednesday',
                        isVertical: false,
                      ),
                      noShapeWidget(
                        isClicked: isHThursdayClicked,
                        onClick: () {
                          setState(() {
                            isHThursdayClicked = !isHThursdayClicked;
                          });
                        },
                        text: 'Thursday',
                        isVertical: false,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Shape Enabled",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      shapeWidget(
                        isClicked: isHSMondayClicked,
                        onClick: () {
                          setState(() {
                            isHSMondayClicked = !isHSMondayClicked;
                          });
                        },
                        text: 'Monday',
                        isVertical: false,
                      ),
                      shapeWidget(
                        isClicked: isHSTuesdayClicked,
                        onClick: () {
                          setState(() {
                            isHSTuesdayClicked = !isHSTuesdayClicked;
                          });
                        },
                        text: 'Tuesday',
                        isVertical: false,
                      ),
                      shapeWidget(
                        isClicked: isHSWednesdayClicked,
                        onClick: () {
                          setState(() {
                            isHSWednesdayClicked = !isHSWednesdayClicked;
                          });
                        },
                        text: 'Wednesday',
                        isVertical: false,
                      ),
                      shapeWidget(
                        isClicked: isHSThursdayClicked,
                        onClick: () {
                          setState(() {
                            isHSThursdayClicked = !isHSThursdayClicked;
                          });
                        },
                        text: 'Thursday',
                        isVertical: false,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Vertical",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Shape Disabled",
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                noShapeWidget(
                  isClicked: isVMondayClicked,
                  onClick: () {
                    setState(() {
                      isVMondayClicked = !isVMondayClicked;
                    });
                  },
                  text: 'Monday',
                  isVertical: true,
                ),
                noShapeWidget(
                  isClicked: isVTuesdayClicked,
                  onClick: () {
                    setState(() {
                      isVTuesdayClicked = !isVTuesdayClicked;
                    });
                  },
                  text: 'Tuesday',
                  isVertical: true,
                ),
                noShapeWidget(
                  isClicked: isVWednesdayClicked,
                  onClick: () {
                    setState(() {
                      isVWednesdayClicked = !isVWednesdayClicked;
                    });
                  },
                  text: 'Wednesday',
                  isVertical: true,
                ),
                noShapeWidget(
                  isClicked: isVThursdayClicked,
                  onClick: () {
                    setState(() {
                      isVThursdayClicked = !isVThursdayClicked;
                    });
                  },
                  text: 'Thursday',
                  isVertical: true,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Shape Enabled",
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                shapeWidget(
                  isClicked: isVSMondayClicked,
                  onClick: () {
                    setState(() {
                      isVSMondayClicked = !isVSMondayClicked;
                    });
                  },
                  text: 'Monday',
                  isVertical: true,
                ),
                shapeWidget(
                  isClicked: isVSTuesdayClicked,
                  onClick: () {
                    setState(() {
                      isVSTuesdayClicked = !isVSTuesdayClicked;
                    });
                  },
                  text: 'Tuesday',
                  isVertical: true,
                ),
                shapeWidget(
                  isClicked: isVSWednesdayClicked,
                  onClick: () {
                    setState(() {
                      isVSWednesdayClicked = !isVSWednesdayClicked;
                    });
                  },
                  text: 'Wednesday',
                  isVertical: true,
                ),
                shapeWidget(
                  isClicked: isVSThursdayClicked,
                  onClick: () {
                    setState(() {
                      isVSThursdayClicked = !isVSThursdayClicked;
                    });
                  },
                  text: 'Thursday',
                  isVertical: true,
                )
              ],
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isRadioSelected = !isRadioSelected;
                    });
                  },
                  child: Container(
                    width: 180,
                    decoration: BoxDecoration(
                      color: isRadioSelected ? Colors.blue : Colors.white,
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(50.0) //
                          ),
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: true,
                          onChanged: (bool? value) {},
                          groupValue: isRadioSelected,
                          activeColor: Colors.white,
                        ),
                        Text(
                          "Radio Button",
                          style: TextStyle(
                            fontSize: 17,
                            color: isRadioSelected ? Colors.white : Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class noShapeWidget extends StatelessWidget {
  const noShapeWidget({
    Key? key,
    required this.isClicked,
    required this.onClick,
    required this.text,
    required this.isVertical,
  }) : super(key: key);

  final bool isClicked;
  final bool isVertical;
  final Function onClick;
  final String text;

  @override
  Widget build(BuildContext context) {
    if (this.isVertical) {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: SizedBox(
              height: 50,
              width: 150,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: isClicked ? Colors.white : Colors.black,
                  backgroundColor: isClicked ? Colors.blue : Colors.white,
                  side: BorderSide(
                      color: Colors.blue, width: 2, style: BorderStyle.solid),
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  onClick();
                },
                child: Text(text),
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: isClicked ? Colors.white : Colors.black,
                backgroundColor: isClicked ? Colors.blue : Colors.white,
                side: BorderSide(
                    color: Colors.blue, width: 2, style: BorderStyle.solid),
                textStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                onClick();
              },
              child: Text(text),
            ),
          ),
        ],
      );
    }
  }
}

class shapeWidget extends StatelessWidget {
  const shapeWidget({
    Key? key,
    required this.isClicked,
    required this.onClick,
    required this.text,
    required this.isVertical,
  }) : super(key: key);

  final bool isClicked;
  final Function onClick;
  final String text;
  final bool isVertical;

  @override
  Widget build(BuildContext context) {
    if (this.isVertical) {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: SizedBox(
              height: 50,
              width: 150,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: isClicked ? Colors.white : Colors.black,
                  backgroundColor: isClicked ? Colors.blue : Colors.white,
                  side: BorderSide(
                      color: Colors.blue, width: 2, style: BorderStyle.solid),
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: () {
                  onClick();
                },
                child: Text(text),
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: isClicked ? Colors.white : Colors.black,
                backgroundColor: isClicked ? Colors.blue : Colors.white,
                side: BorderSide(
                    color: Colors.blue, width: 2, style: BorderStyle.solid),
                textStyle: TextStyle(
                  color: Colors.black,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              onPressed: () {
                onClick();
              },
              child: Text(text),
            ),
          ),
        ],
      );
    }
  }
}
