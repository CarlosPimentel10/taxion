import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HouseTax extends StatelessWidget {
  const HouseTax({Key? key}) : super(key: key);

  static const String _title = 'Property Tax';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: HouseStatefulWidget(),
        ),
      ),
    );
  }
}

class HouseStatefulWidget extends StatefulWidget {
  const HouseStatefulWidget({Key? key}) : super(key: key);

  @override
  State<HouseStatefulWidget> createState() => _HouseStatefulWidgetState();
}

class _HouseStatefulWidgetState extends State<HouseStatefulWidget> {
  String dropdownValue = 'House Details';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            icon: Icon(Icons.house),
            hintText: '20',
            labelText: 'Size in square meters',
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            icon: Icon(Icons.price_check),
            hintText: '20.245,00',
            labelText: 'Price in euros',
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            icon: Icon(Icons.location_city),
            hintText: 'Flemish',
            labelText: 'Region',
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(1, 216, 206, 69),
            ),
            onPressed: () {},
            child: const Text(
              'Calculate tax',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}
