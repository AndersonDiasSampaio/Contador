import 'package:flutter/material.dart';

class HomePageStf extends StatefulWidget {
  const HomePageStf({Key? key}) : super(key: key);

  @override
  State<HomePageStf> createState() => _HomePageStfState();
}

class _HomePageStfState extends State<HomePageStf> {
  int count = 0;
  bool count2= false;
  void decrement() {
    if(count>0){
    setState(() {
      count--;
    });}

  }

  void increment() {
 if(count>=0){
    setState(() {
   count++;
 });}
  }
bool get count3=> count==0;

 bool  vazio(){
    if(count>0){
    count2= true;}
    else{
      count2= false;
    }
    return count2;
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/IMG_20221008_163711.jpg"),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Contando",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(padding: const EdgeInsets.all(32),
                child: Text(
                  count.toString(),
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                  ),
                ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    //condição ? tipos de saidas possíveis separadas por :
                      onPressed:  vazio() ?  decrement: null,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                        fixedSize: const Size(100, 100),
                        foregroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                      ),
                      child: Text("saiu")),
                  const SizedBox(width: 20),
                  TextButton(
                      onPressed: increment,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                        fixedSize: const Size(100, 100),
                        foregroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),

                      ),
                      child: Text("entrou"))
                ],
              ),  Padding(padding: const EdgeInsets.all(32),
                child: Text(
                  count.toString(),
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                  ),
                ),),
            ],
          ),
        ));
  }
}
