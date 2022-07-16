import'package:flutter/material.dart';
class Result extends StatelessWidget {
final bool  gender;
final int  result;
final int  age;
  const Result({required this.gender,required this.result,required this.age});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C0D23),
      appBar: AppBar(
        backgroundColor: const Color(0xff0C0D23),
        title:const Text('Result'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Your Result',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
            const SizedBox(height: 100,),

            Center(
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: gender ? Colors.blue :const Color(0xffED1655),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Gender : ${gender ? 'Male' : 'Female'}',style: const TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 15,),
                    Text('Result : ${result.round()}',style: const TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15,),
                    Text('Age : $age',style: const TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15,),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      
    );

  }

}

