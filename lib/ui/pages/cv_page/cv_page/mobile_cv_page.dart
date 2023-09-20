import 'package:isportal/public_widgets/appbar/mobile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MobileCvPage extends StatefulWidget {
  const MobileCvPage({super.key});

  @override
  State<MobileCvPage> createState() => _MobileCvPageState();
}

class _MobileCvPageState extends State<MobileCvPage> {
  late FormGroup form;
  @override
  void initState() {
    form = FormGroup({
      'mail': FormControl<String>(
        value: "rasbabaxd1@gmail.com",
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      'password': FormControl<String>(
        value: "Maal011797",
        validators: [
          Validators.required,
        ],
      ),
      'password2': FormControl<String>(
        value: "Maal011797",
        validators: [
          Validators.required,
        ],
      ),
      'dropdown1': FormControl<String>(
        value: "Maal011797",
        validators: [
          Validators.required,
        ],
      ),
      'dropdown2': FormControl<String>(
        value: "Maal011797",
        validators: [
          Validators.required,
        ],
      ),
    });
    super.initState();
  }

  // Dışarıdan gelen veriler
  List<String> dropdownItems1 = ['Item1', 'Item2', 'Item3'];
  List<String> dropdownItems2 = ['ItemA', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC', 'ItemB', 'ItemC'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MobileDrawer(),
      body: SingleChildScrollView(
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Mobile"),
              const Icon(
                Icons.abc,
                size: 555,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ReactiveDropdownField<String>(
                      formControlName: 'dropdown1',
                      items: dropdownItems2
                          .map((item) => DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              ))
                          .toList(),
                      hint: const Text('Select Item'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ReactiveDropdownField<String>(
                      formControlName: 'dropdown2',
                      items: dropdownItems2
                          .map((item) => DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              ))
                          .toList(),
                      hint: const Text('Select Item'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
