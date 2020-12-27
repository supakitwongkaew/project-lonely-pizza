import 'package:flutter/material.dart';
import 'package:pizza_pj/screens/review.dart';
import 'package:pizza_pj/code/pizza.dart';

class Order extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<Order> {
  pizza _pizzaOrder = new pizza();

  void _seteSize(String value) {
    setState(() {
      _pizzaOrder.size = value;
    });
  }

  void _setTopping(int index, bool value) {
    setState((){
      String key = _pizzaOrder.toppings.keys.elementAt(index);
      _pizzaOrder.toppings[key] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //  backgroundColor: Colors.black54,
      appBar: new AppBar(title: new Text('Order Pizza'),backgroundColor: Colors.red,),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Image.asset('images/p3.jpg'),
              new DropdownButton<String>(
                value: _pizzaOrder.size,
                items: pizza.sizes.map((String value){
                  return new DropdownMenuItem(
                    value: value,
                    child: new Row(
                      children: <Widget>[
                        new Icon(Icons.local_pizza),
                        new Text('Size: ${value}',style: new TextStyle(
              color: Colors.red,),
                    )],)
                    );
                }).toList(),
                onChanged: (String value){_seteSize(value);}
                ),
                new Text('Select Topping',style: TextStyle(fontSize: 18.0,color: Colors.blue,)),
                new Expanded(
                  child: new ListView.builder(
                    shrinkWrap: true,
                    itemCount: _pizzaOrder.toppings.length,
                    itemBuilder: (BuildContext context, int index) {
                      return new CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: new Text(_pizzaOrder.toppings.keys.elementAt(index),style: new TextStyle(
              color: Colors.red,)),
                        value: _pizzaOrder.toppings.values.elementAt(index),
                        onChanged: (bool value){_setTopping(index, value);});
                      }
                    )

                  ),
                const SizedBox(height: 20),
                RaisedButton(
                  // child: new Text('Order Review'),
                  onPressed: () {Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Review(order :_pizzaOrder,)
                    ));},
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
            child: const Text(
              'Order Review',
              style: TextStyle(fontSize: 20)
            ),
              )
                )
            ]
          )
        )
      )
    );
  }
}