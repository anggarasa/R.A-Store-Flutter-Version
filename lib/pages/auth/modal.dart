import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  const Modal({super.key});

  static const String routeName = '/auth/modal';

  Widget build(BuildContext context) {
    // Tampilkan dialog setelah widget dibangun
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return VerificationDialog();
        },
      );
    });

    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Center(
        child: Text(
          'Entry Your 4 digit code',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class VerificationDialog extends StatelessWidget {
  const VerificationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget contentBox(context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.check, color: Colors.blue, size: 40),
          ),
          SizedBox(height: 15),
          Text(
            'Verified!',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Hurrah!! You have successfully\nverified the account',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              iconColor: Colors.blue,
              minimumSize: Size(double.infinity, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Browse Home',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          SizedBox(height: 10),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              iconColor: Colors.blue,
              minimumSize: Size(double.infinity, 45),
              side: BorderSide(color: Colors.blue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              // Fungsi verifikasi ulang di sini
            },
            child: Text(
              'Verify',
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
