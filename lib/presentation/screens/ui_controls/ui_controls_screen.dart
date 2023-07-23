import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = "UiControlsScreen";
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = value;
          }),
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
        ),
        ExpansionTile(
          title: const Text('Selected transportation'),
          subtitle: Text('$selectedTransportation'),
          initiallyExpanded: true,
          children: [
            RadioListTile(
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
              title: const Text('By car'),
              subtitle: const Text('Viajar por carro'),
            ),
            RadioListTile(
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
              title: const Text('By boat'),
              subtitle: const Text('Viajar por barco'),
            ),
            RadioListTile(
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
              title: const Text('By plane'),
              subtitle: const Text('Viajar por avion'),
            ),
            RadioListTile(
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
              title: const Text('By submarine'),
              subtitle: const Text('Viajar por submarino'),
            ),
          ],
        ),

        // TODO: Por aquí
        CheckboxListTile(
          title: const Text('Quiere incluir desayuno'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Quiere incluir almuerzo'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Quiere incluir cena'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
