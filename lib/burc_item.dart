import 'package:burclar/constractor/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;

  BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/burcDetay', arguments: listelenenBurc);
            },
            leading: Image.asset('images/'+listelenenBurc.burcKucukResim
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headline2,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: myTextStyle.subtitle2,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
    );
  }
}
