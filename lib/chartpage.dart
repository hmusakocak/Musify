import 'package:application_1/pagesaboutgenres/row_containers.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';




class MypiePage extends StatefulWidget {
  const MypiePage({Key? key}) : super(key: key);

  @override
  State<MypiePage> createState() => _MypiePageState();
}

class _MypiePageState extends State<MypiePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff90a4ae),
          leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },

        ),),
        backgroundColor: Color(0xff90a4ae),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25,150,25,20),
            child: Text('Göz Atılan Müzik Türlerinin İstatistiği',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
          ),
          PieChart(
            dataMap:
            {
              "Rock": 100*variables.rock/(variables.rock.toDouble()+variables.metal.toDouble()+variables.blues.toDouble()+variables.rap.toDouble()+variables.punk.toDouble()+variables.country.toDouble()),
              "Punk": 100*variables.punk/(variables.rock.toDouble()+variables.metal.toDouble()+variables.blues.toDouble()+variables.rap.toDouble()+variables.punk.toDouble()+variables.country.toDouble()),
              "Country": 100*variables.country/(variables.rock.toDouble()+variables.metal.toDouble()+variables.blues.toDouble()+variables.rap.toDouble()+variables.punk.toDouble()+variables.country.toDouble()),
              "Blues": 100*variables.blues/(variables.rock.toDouble()+variables.metal.toDouble()+variables.blues.toDouble()+variables.rap.toDouble()+variables.punk.toDouble()+variables.country.toDouble()),
              "Rap": 100*variables.rap/(variables.rock.toDouble()+variables.metal.toDouble()+variables.blues.toDouble()+variables.rap.toDouble()+variables.punk.toDouble()+variables.country.toDouble()),
              "Metal": 100*variables.metal/(variables.rock.toDouble()+variables.metal.toDouble()+variables.blues.toDouble()+variables.rap.toDouble()+variables.punk.toDouble()+variables.country.toDouble()),
            },
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            initialAngleInDegree: 0,
            chartType: ChartType.disc,
            ringStrokeWidth: 32,
            colorList: colorList,
            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: true,
              showChartValuesInPercentage: true,
              showChartValuesOutside: false,
            ),
          ),

        ],),
      ),
    );
  }
}

final colorList = <Color>[
  Colors.amber,
  Colors.red,
  Colors.brown,
  Colors.blueAccent,
  Colors.lightGreen,
  Colors.black,
];

