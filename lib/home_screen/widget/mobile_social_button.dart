import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class MobileSocialButton extends StatelessWidget {
  const MobileSocialButton({
    super.key,
    required this.iconPath,
    required this.text,
    required this.url,
  });
  final String iconPath;
  final String text;
  final String url;

  TextStyle get _textStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  Future<bool> _launchUrl(String url) async {
    var uri = Uri.parse(url);

    if (await launchUrl(uri)) {
      // success
      return true;
    } else {
      // there is some error
      await Clipboard.setData(ClipboardData(text: url));
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 280,
      child: ElevatedButton(
        onPressed: () async => _launchUrl(url),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8FC7FF),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Image.asset(iconPath),
            Expanded(
              child: Center(child: Text(text, style: _textStyle)),
            ),
          ],
        ),
      ),
    );
  }
}
