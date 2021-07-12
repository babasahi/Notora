import 'package:bac_note/main.dart';
import 'package:flutter/material.dart';

class WhoAreWePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BacNote(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Text(
                    'Telmidi',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 38),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/images/hemadi.jpg'),
                          ),
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/images/saleh.jpg'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Hamadi Omar',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Babe Saleh Mahfoud',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'Inconsolata',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 68,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'Inconsolata',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 68,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'Inconsolata',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 68,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'Inconsolata',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  Text(
                    'Contact Us',
                    style:
                        TextStyle(fontFamily: 'Source Sans Pro', fontSize: 32),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.facebook),
                      Icon(Icons.language),
                      Icon(Icons.email),
                      Icon(
                        Icons.phone,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 6.0),
                      child: Text(
                        'All Rights Reserved, Telmidi 2021.',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
