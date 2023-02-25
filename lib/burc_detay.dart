import 'package:burclar/constractor/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;

  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //uygulama açıldığında ne kadar yer tutacağıyla ilgili
            expandedHeight: 250,
            // yukarı aşşağı kaydırdığımızda sabit bir şekilde kalmasıyla ilgili
            pinned: false,
            backgroundColor: Colors.orange.shade600,

            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi + 'Burcu Ve Özellikleri'),
              //Başlığı ortalar.
              centerTitle: true,
              background: Image.asset(
                'images/'+secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetayi,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
