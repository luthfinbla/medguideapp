import 'package:medguideapp/screens/reminder_screen/errors.dart';
import 'package:medguideapp/screens/reminder_screen/medicine_type.dart';
import 'package:medguideapp/screens/reminder_screen/new_entry.dart';
import 'package:rxdart/rxdart.dart';

class BlocEntry{
  BehaviorSubject<MedicineType>? _selectMedicineType$;
  ValueStream<MedicineType>? get _selectMedicineType =>
    _selectMedicineType$!.stream;
  
  BehaviorSubject<int>? _selectedInterval$;
  BehaviorSubject<int>? get selectIntervals => _selectedInterval$;

  BehaviorSubject<String>? _selectedTimeOfDay$;
  BehaviorSubject<String>? get selectedTimeOfDay$ => _selectedTimeOfDay$;

  //error state
  BehaviorSubject<EntryError>? _errorState$;
  BehaviorSubject<EntryError>? get errorState$ => _errorState$;

  BlocEntry() {
    _selectMedicineType$ =
      BehaviorSubject<MedicineType>.seeded(MedicineType.none);

    _selectedTimeOfDay$ = BehaviorSubject<String>.seeded('none');
    _selectedInterval$ = BehaviorSubject<int> .seeded(0);
    _errorState$ = BehaviorSubject<EntryError>();

    void dispose() {
      _selectMedicineType$!.close();
      _selectedTimeOfDay$!.close();
      _selectedInterval$!.close();
    }

    void submitError(EntryError error) {
      _errorState$!.add(error);
    }

    void updateInterval(int interval) {
      _selectedInterval$!.add(interval);
    }

    void updateTime(String time) {
      _selectedTimeOfDay$!.add(time);
    }

    void updateSelectedMedicine(MedicineType type) {
      MedicineType _tempType = _selectMedicineType$!.value;
      if (type == _tempType) {
        _selectMedicineType$!.add(MedicineType.none);
      } else {
        _selectMedicineType$!.add(type);
      }
    }
  }
}