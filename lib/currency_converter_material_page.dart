import 'package:flutter/material.dart';
// 1. Create a variable that stores the converted currency value
// 2. Create a function that multiplies the value given by the textfield
// 3. Store the value in the variable that we created
// 4. Display the variable
//init state gets executed before build funtion
//try not to make build function expensive as it gets called everytime...so it can hamper performance of app because thinggs are rebuild everytime...never use any async task inside a build function


class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    void convert(){
      setState(() {
        result = double.parse(textEditingController.text)*86.81;
      });
    }

   

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    final border = OutlineInputBorder(
                          borderSide: BorderSide(
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        );
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text("Currency Converter",
        
        style: TextStyle(color: Colors.white)),
        centerTitle: false,
      ),
      backgroundColor: Colors.blueGrey,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(result!=0? result.toStringAsFixed(2) : result.toStringAsFixed(0),
                  style: TextStyle(
                    fontSize:  55,
                    fontWeight: FontWeight.bold,
                    color: Colors.white 
              
                  ),),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                       controller: textEditingController,
                      
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.monetization_on),
                        prefixIconColor: Colors.black,
                        hintText: "Please enter the amount in USD",
                        hintStyle: TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: border,
                        enabledBorder: border
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                          signed: false
                        ),
                              
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(onPressed:convert,                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    child: Text("Convert"),
                    ),
                  )
                  
                ],
              ),
            )
        );
  }

}