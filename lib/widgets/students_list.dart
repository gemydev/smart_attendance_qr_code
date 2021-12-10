import 'package:flutter/material.dart';

class CustomTable extends StatefulWidget {
  const CustomTable({Key? key}) : super(key: key);

  @override
  _CustomTableState createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context , index){
        return Divider();
      },
      itemCount: 20,
      itemBuilder: (context, index){
        return ListTile(
          title: Text('محمد جمال ',style: TextStyle(
              fontSize: 18
          )),
          leading: Text(convertToArabicNumber((index+1).toString()),style: TextStyle(
              fontSize: 18
          )),
        );
      },
    );
  }
}
String convertToArabicNumber(String number) {
  String res = '';

  final arabics = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
  number.characters.forEach((element) {
    res += arabics[int.parse(element)];
  });
  /*   final latins = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']; */
  return res;
}