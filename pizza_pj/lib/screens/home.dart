import 'package:flutter/material.dart';
import 'package:pizza_pj/screens/order.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // backgroundColor: Colors.black54,
      appBar:  new AppBar(title: new Text('Lonely Pizza'),backgroundColor: Colors.red,),
      body: new Container(
        padding: new EdgeInsets.all(32.0),  
        child: new Column(
          children: <Widget>[
            new Text('Welcome to Shop Pizza',style: TextStyle(fontSize: 26,color: Colors.black,),),
            new Image.asset('images/p2.jpg'),
            const SizedBox(height: 20),
            RaisedButton(
              // child: new Text('Order'),
              onPressed: (){Navigator.of(context).pushNamed('/Order');},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xfff42b51),
                    Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Order Now',
              style: TextStyle(fontSize: 20)
            ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}