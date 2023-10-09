import 'package:flutter/material.dart';
import 'package:mp_website/home_screen/widget/mobile_social_button.dart';
import 'package:mp_website/static/user_config.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/images/mp_logo.png',
                      scale: 0.8,
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Image.asset('assets/icons/petik.png'),
                          const Padding(
                            padding: EdgeInsets.only(top: 15, left: 15),
                            child: Text(
                              'Kami menyediakan produk unggulan untuk membantu pelanggan kami menemukan versi terbaik mereka menuju kesuksesan',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const MobileSocialButton(
                      iconPath: 'assets/icons/whatsapp.png',
                      text: 'Whatsapp',
                      url: UserConfig.whatsappLink,
                    ),
                    const SizedBox(height: 12),
                    const MobileSocialButton(
                      iconPath: 'assets/icons/instagram.png',
                      text: 'Instagram',
                      url: UserConfig.instagramLink,
                    ),
                    const SizedBox(height: 12),
                    const MobileSocialButton(
                      iconPath: 'assets/icons/tiktok.png',
                      text: 'Tiktok',
                      url: UserConfig.tiktokLink,
                    ),
                    const SizedBox(height: 12),
                    const MobileSocialButton(
                      iconPath: 'assets/icons/email.png',
                      text: 'Kirim E-Mail',
                      url: UserConfig.emailLink,
                    ),
                    const SizedBox(height: 12),
                    const MobileSocialButton(
                      iconPath: 'assets/icons/shopee.png',
                      text: 'Shopee',
                      url: UserConfig.shopeeLink,
                    ),
                    const SizedBox(height: 12),
                    const MobileSocialButton(
                      iconPath: 'assets/icons/tokopedia.png',
                      text: 'Tokopedia',
                      url: UserConfig.tokopediaLink,
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      'Mindfulness is the key...',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        'Mindfulness is the key...',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset('assets/images/mindful.png'),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Tingkatkan fokus, energi, dan kualitas hidup\n dengan produk unggulan kami',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),

                    // footer
                    const Text(
                      '© 2023 Website Mind Power',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'by Teraloop Teknologi',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 50),
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
