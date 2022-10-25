import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/custom_appbar.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: customAppBar(
        color: Colors.black,
        appBarTitle: 'My Downloads'
      ),
      body: downloadBody(),
    );
  }

  Widget downloadBody() {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.2),
            child: Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Smart Downloads',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'ON',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.2),
            radius: 70,
            child: Icon(
              Icons.download,
              color: Colors.grey.withOpacity(0.3),
              size: 80,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Never be without Netflix',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40.0,
              right: 40,
            ),
            child: Text(
              'Download shows and movies so you never be without something to watch even if you are offline',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.6,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Container(
              height: 55,
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Text(
                  'See What You Can be Download',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
