import 'package:flutter/material.dart';

class SwitchesDemoScreen extends StatefulWidget {
  const SwitchesDemoScreen({Key? key}) : super(key: key);

  @override
  _SwitchesDemoScreenState createState() => _SwitchesDemoScreenState();
}
enum skillLevel {junior, middle, senior}

class _SwitchesDemoScreenState extends State<SwitchesDemoScreen> {
  bool _checked =false;
  bool _confirmAgreement = true;
  skillLevel? _skillLevel = skillLevel.junior;


  void _onCheckedChange (bool? val) {
    setState(() {
      _checked=!_checked;
    });
  }

  void _onSkillLevelChange (skillLevel? value) {
    setState(() {
      _skillLevel=value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
         body: Center(
          child: Column(
           children: [
             Row(
              children: [
               Checkbox(value: _checked, onChanged: _onCheckedChange),
                const Text('Выбор')],
                ),
             CheckboxListTile(
                 title: const Text('Принять условия соглашения'),
                 value: _confirmAgreement, onChanged: (val){
                   setState(() {
                     _confirmAgreement=!_confirmAgreement;
                   });
             }),
             Row(
               children: [
               Switch(value: _checked, onChanged: _onCheckedChange),
               Text('Включить'),
             ] ),
             SwitchListTile(
                 title: const Text('Включить'),
                 value: _checked,
                 onChanged: _onCheckedChange),
             const Text('Уровень навыков'),
             RadioListTile <skillLevel>(
                 title: const Text('junior'),
                 value: skillLevel.junior,
                 groupValue: _skillLevel,
                 onChanged: _onSkillLevelChange
             ),
             RadioListTile <skillLevel>(
                 title: const Text('middle'),
                 value: skillLevel.middle,
                 groupValue: _skillLevel,
                 onChanged: _onSkillLevelChange
             ),
             RadioListTile <skillLevel>(
                 title: const Text('senior'),
                 value: skillLevel.senior,
                 groupValue: _skillLevel,
                 onChanged: _onSkillLevelChange
             ),
           ] ),
    ),),);
  }
}


