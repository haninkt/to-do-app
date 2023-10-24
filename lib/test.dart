// import 'package:design/tasking.dart';
// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names, file_names
import 'package:design/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';

final taskname = TextEditingController();
final count = TextEditingController();
final completed = TextEditingController();
final catagory = TextEditingController();

List<String> tasks = [];
List<String> counts = [];
List<String> completes = [];
// list of images
List imgList = [
  Image.asset('assets/fa_paint-brush.png'),
  Image.asset('assets/healthicons_group-discussion-meeting.png'),
  Image.asset('assets/carbon_machine-learning-model.png'),
];

Future<dynamic> ShowDialogue(BuildContext context) async => showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Add Task',
          ),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    TextFormField(
                      controller: taskname,
                      decoration: InputDecoration(hintText: 'Enter Task Name'),
                    ),
                    DropdownButton(
                      hint: Text('Select'),
                      items: const [
                        DropdownMenuItem(
                          child: Text('Design'),
                          value: 'design',
                        ),
                        DropdownMenuItem(
                          child: Text('Meeting'),
                          value: 'meeting',
                        ),
                        DropdownMenuItem(
                          child: Text('Learning'),
                          value: 'learning',
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          catagory.text = value as String;
                        });
                      },
                    ),
                  ],
                  mainAxisSize: MainAxisSize.max,
                ),
              );
            },
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            Consumer<providerd>(builder: (context, mypro, child) {
              return ElevatedButton(
                onPressed: () {
                  if (tasks != null) {
                    mypro.addTask(taskname.text);
                  }

                  Navigator.of(context).pop();
                },
                child: Text('Add'),
              );
            })
          ],
        );
      },
    );

void addTask(String task) async {
  tasks.add(task);
  saveTasks();
  taskname.clear();
}

Future<void> saveTasks() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setStringList('tasks', tasks);
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final aaa = Provider.of<providerd>(context);

    return Consumer<providerd>(builder: (context, mypro, chil) {
      return ListView.builder(
          itemCount: mypro.tasks.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () {
                Vibration.vibrate(duration: 100);
                showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Confirm Delete',
                          textAlign: TextAlign.center),
                      actions: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        SizedBox(width: 115),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: const Text('Confirm'),
                          onPressed: () {
                            aaa.removeTask(index);
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    );
                  },
                );
              },
              child: ListTile(
                title: Text(tasks[index]),
                subtitle: Text(' completed'),
                trailing: Container(
                  height: 22,
                  width: 22,
                  color: Color.fromARGB(255, 255, 156, 63),
                  child: Container(
                    margin: EdgeInsets.only(left: 7, top: 3),
                    child: Text('0'),
                  ),
                ),
                leading: MyIcons(),
              ),
            );
          });
    });
  }
}

class MyIcons extends StatefulWidget {
  const MyIcons({super.key});

  @override
  State<MyIcons> createState() => _MyIconsState();
}

class _MyIconsState extends State<MyIcons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text("choose color"),
            actions: <Widget>[
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Coloralert(context);
                    },
                    child: Container(
                      height: 50,
                      width: 90,
                      color: Color.fromARGB(255, 133, 125, 125),
                      child: Column(
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: currentColor,
                                borderRadius: BorderRadius.circular(100),
                              )),
                          Text('select color')
                        ],
                      ),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() => currentColor = pickerColor);
                  },
                  child: Text('ok')),
            ],
          ),
        );
      },
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: currentColor,
              image: DecorationImage(
                  image: AssetImage('assets/fa_paint-brush.png')),
              borderRadius: BorderRadius.all(Radius.circular(5)))),
    );
  }

  // create some values
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  Future<dynamic> Coloralert(BuildContext context) {
    return showDialog(
      builder: (context) => AlertDialog(
        title: const Text('Pick a color!'),
        content: SingleChildScrollView(
          // child: ColorPicker(
          //   pickerColor: pickerColor,
          //   onColorChanged: changeColor,
          // ),
          // Use Material color picker:
          //
          // child: MaterialPicker(
          //   pickerColor: pickerColor,
          //   onColorChanged: changeColor,
          //   showLabel: true, // only on portrait mode
          // ),
          //
          // Use Block color picker:
          //
          child: BlockPicker(
            pickerColor: currentColor,
            onColorChanged: changeColor,
          ),
          //
          // child: MultipleChoiceBlockPicker(
          //   pickerColors: currentColors,
          //   onColorsChanged: changeColors,
          // ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Got it'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      context: context,
    );
  }
}

