import 'dart:math';
import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   bool  gender = true;
double height= 175;
int weight = 75;
int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C0D23),
      appBar:AppBar(
        backgroundColor: const Color(0xff0C0D23),
        title: const Text('Bmi Flutter Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {

                        });
                        gender = true;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                            color: gender ? Colors.blue: const Color(0xff0C0D23),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('symbols/male.png',height: 70,color: Colors.white,),
                            const SizedBox(height: 10),
                            const Text('Male',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),)
                          ],

                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {

                        });
                        gender = false;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          color:gender ? const Color(0xff0C0D23) : const Color(0xffED1655) ,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('symbols/male.png',height: 70,color: Colors.white,),
                            const SizedBox(height: 10),
                            const Text('Female',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),)
                          ],

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Height',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('${height.round()}',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                      const SizedBox(height: 10,),
                      const Text('cm',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),

                    ],
                  ),

                  const SizedBox(height: 15,),
                  Slider(
                    thumbColor: gender ? Colors.blue :const Color(0xffED1655),
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey,
                    onChanged: (data){
                      setState(() {

                      });
                      height = data;
                    },
                    value:height ,
                    max: 220,
                    min:80
                  )


                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff0C0D23),
                      ),
                      child: Column(
                        children: [
                          const Text('Weight',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 40),),
                          const SizedBox(height: 10),
                          Text('$weight',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                });
                                weight--;
                              },backgroundColor: gender ? Colors.blue :const Color(0xffED1655), child: const Icon(Icons.remove)),
                              const SizedBox(width: 10,),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                });
                                weight++;
                              },backgroundColor: gender ? Colors.blue :const Color(0xffED1655),child: const Icon(Icons.add),)

                            ],
                          )


                        ],

                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff0C0D23),
                      ),
                      child: Column(
                        children: [
                          const Text('Age',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 40),),
                          const SizedBox(height: 10),
                          Text('$age',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                });
                                age--;
                              },backgroundColor: gender ? Colors.blue :const Color(0xffED1655), child: const Icon(Icons.remove)),
                              const SizedBox(width: 10,),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                });
                                age++;
                              },backgroundColor: gender ? Colors.blue :const Color(0xffED1655),child: const Icon(Icons.add),)

                            ],
                          )


                        ],

                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {

                });
                double result = weight / pow(height / 100, 2);
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Result(gender: gender, result:result.round(), age: age);
                }));


              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color:  gender ? Colors.blue :const Color(0xffED1655),
                  borderRadius: BorderRadius.circular(16)
                ),
                child:const Text('CALCULATE',style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

              ),
            )

          ],
        ),
      ),
    );
  }
}
