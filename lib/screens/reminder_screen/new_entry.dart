import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medguideapp/screens/reminder_screen/medicine_type.dart';

class NewEntry extends StatefulWidget {
  const NewEntry({Key? key}) : super(key: key);

  @override
  State<NewEntry> createState() => _NewEntryState();
}

class _NewEntryState extends State<NewEntry> {
  late TextEditingController nameControler;
  late TextEditingController dosageController;

  late GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    super.dispose();
    nameControler.dispose();
    dosageController.dispose();

    _scaffoldKey = GlobalKey<ScaffoldState>();
  }

  @override
  void initState() {
    super.initState();
    nameControler = TextEditingController();
    dosageController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Add New'),
      ),
      body: Padding(
        padding: EdgeInsets.all(2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PanelTitle(
              title: 'Medicine Name',
              isRequired: true,
            ),
            TextFormField(
              maxLength: 12,
              controller: nameControler,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
              style: Theme.of(context).
              textTheme.
              titleSmall!.
              copyWith(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5,),
        
            PanelTitle(
              title: 'Dosage in mg',
              isRequired: false,
            ),
            TextFormField(
              maxLength: 12,
              controller: dosageController,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
              style: Theme.of(context).
              textTheme.
              titleSmall!.
              copyWith(
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 10,),
            PanelTitle(
              title: 'Medicine Type', 
              isRequired: false),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 20,
                      height: 10,
                    ),
                    SizedBox(height: 15,),
                    const PanelTitle(title: 'Medicine Type', isRequired: false),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: StreamBuilder(
                        builder: (context, snapshot) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MedicineTypeColumn(
                                medicineType: MedicineType.bottle,
                                name: 'Bottle',
                                iconValue: 'assets/images/sirup.png',
                                isSelected: snapshot.data == MedicineType.bottle ? true : false,
                              ),
                              MedicineTypeColumn(
                                medicineType: MedicineType.tablet,
                                name: 'Tablet',
                                iconValue: 'assets/images/tablet.png',
                                isSelected: snapshot.data == MedicineType.tablet ? true : false,
                              ),
                              MedicineTypeColumn(
                                medicineType: MedicineType.pil,
                                name: 'Pil',
                                iconValue: 'assets/images/pil.png',
                                isSelected: snapshot.data == MedicineType.pil ? true : false,
                              ),
                              MedicineTypeColumn(
                                medicineType: MedicineType.blisterpil,
                                name: 'Blister',
                                iconValue: 'assets/images/blister_pil.png',
                                isSelected: snapshot.data == MedicineType.blisterpil ? true : false,
                              ),
                            ],
                          );
                        },
                        stream: null,
                      ),
                    ),
                    SizedBox(height: 30,),
                    const PanelTitle(
                      title: 'Interval Selection', 
                      isRequired: true),
                    const IntervalSelection(),
                    const PanelTitle(
                      title: 'Srating Time', 
                      isRequired: true),
                    const SelectedTime(),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                      ),
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const StadiumBorder(),
                          ),
                          child: Center(
                            child: Text(
                              'Confirm',
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.purple
                              ),
                            ),
                          ),
                          onPressed: () {
                            
                          },
                        ),
                      ),)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SelectedTime extends StatefulWidget {
  const SelectedTime({Key? key}) : super(key: key);

  @override
  State<SelectedTime> createState() => _SelectedTimeState();
}

class _SelectedTimeState extends State<SelectedTime> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 350,
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: const StadiumBorder(),
          ),
          onPressed: (){},
          child: Text("Selected Time",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Colors.purple,
          ),),
        ),
        ),
    );
  }
}

class IntervalSelection extends StatefulWidget {
  const IntervalSelection({Key? key}) : super(key: key);

  @override
  State<IntervalSelection> createState() => _IntervalSelectionState();
}

class _IntervalSelectionState extends State<IntervalSelection> {

  final _intervale = [
    6,
    8,
    12,
    24,
  ];
  var _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Remind me every',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          DropdownButton(
            iconEnabledColor: Colors.purple,
            dropdownColor: const Color.fromARGB(255, 47, 4, 54),
            itemHeight: 50,
            hint: _selected == 0 ?  Text('Selected an Interval',
            style: Theme.of(context).textTheme.bodySmall,) : null,
            elevation: 4,
            value: _selected == 0 ? null : _selected,
            items: _intervale.map(
              (int value) {
              return DropdownMenuItem<int> (
                value: value,
                child: Text(
                  value.toString(),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.blue,
                  ),
                ),
              );
            },).toList(),
            onChanged: (newVal) {
              setState(() {
                _selected = newVal!;
              },);
            },
          ),
          Text(
            _selected == 1 ? "hour" : "hours",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}

class MedicineTypeColumn extends StatelessWidget {
  const MedicineTypeColumn({Key? key, required this.medicineType, required this.name, required this.iconValue, required this.isSelected}) : super(key: key);
  final MedicineType medicineType;
  final String name;
  final String iconValue;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: () {},
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10), // Menambahkan jarak horizontal
    child: Column(
      children: [
        Container(
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isSelected ? Colors.blue : Colors.blue,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Image.asset(
                iconValue, 
                width: 50,
                height: 50,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Container(
            width: 75,
            height: 50,
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue : Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                name,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: isSelected ? Colors.white : Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
);

  }
}


class PanelTitle extends StatelessWidget {
  const PanelTitle({Key? key, required this.title, required this.isRequired}) : super(key: key);
  final String title;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2),
      child: Text.rich(
        TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: title,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            TextSpan(
              text: isRequired ? " *" : "",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}