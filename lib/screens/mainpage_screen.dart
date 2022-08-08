import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanamanku/constants.dart';
import 'package:tanamanku/datascreen/login_args.dart';
import 'package:tanamanku/models/plant_item.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({Key? key}) : super(key: key);

  static const String routeName = '/';

  String getPathGambarCuaca(PlantItem plantItem) {
    String namaCuaca = plantItem.cuaca;

    if (namaCuaca.toLowerCase() == stateCuacaBerawan) {
      return 'resources/images/sun-cloudy-line.svg';
    } else if (namaCuaca.toLowerCase() == stateCuacaPanas) {
      return 'resources/images/sun-line.svg';
    } else if (namaCuaca.toLowerCase() == stateCuacaHujan) {
      return 'resources/images/rainy-line.svg';
    } else {
      return 'resources/images/sun-cloudy-line.svg';
    }
  }

  createDaftarTanamanList() {
    return Container(
      margin: const EdgeInsets.all(1),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            PlantItem plantItemSelected = listTanaman[index];
            return Card(
              color: Colors.white,
              child: Container(
                margin: const EdgeInsets.only(top: 10, right: 4, bottom: 10),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        plantItemSelected.srcImg,
                        fit: BoxFit.cover,
                        width: 48,
                      ),
                    ),
                  ),
                  title: Text(
                    plantItemSelected.nama,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.grey.shade800),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        plantItemSelected.keterangan,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Siram ${plantItemSelected.periodeSiram}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade900,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  trailing: Container(
                    margin: const EdgeInsets.all(1),
                    child: SvgPicture.asset(
                      getPathGambarCuaca(plantItemSelected),
                      fit: BoxFit.contain,
                      width: 24,
                      height: 24,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  dense: true,
                ),
              ),
            );
          },
          itemCount: listTanaman.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    LoginArguments? loginArgs =
        ModalRoute.of(context)?.settings.arguments as LoginArguments?;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColorGreen,
        title: const Text(
          'Tanamanku',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: bgColorPage,
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Card nama pengguna dan selamat datang
                  Card(
                    color: primaryColorGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat datang ${loginArgs?.username.toUpperCase() ?? ""}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            'Berikut daftar tanaman kamu yang perlu dirawat',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 4,
                      right: 4,
                    ),
                    child: const Text(
                      'Daftar Tanaman',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColorGreen,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // kartu daftar tanaman
                  createDaftarTanamanList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Card createSingleCard() {
    return Card(
      color: Colors.white,
      child: Container(
        margin: const EdgeInsets.only(top: 10, right: 4, bottom: 10),
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                plantItemSingle.srcImg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            plantItemSingle.nama,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.grey.shade800),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 3,
              ),
              Text(
                plantItemSingle.keterangan,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                  fontSize: 12,
                ),
              ),
              Text(
                'Siram ${plantItemSingle.periodeSiram}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade900,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          trailing: Container(
            margin: const EdgeInsets.all(1),
            child: SvgPicture.asset(
              getPathGambarCuaca(plantItemSingle),
              fit: BoxFit.contain,
              width: 24,
              height: 24,
              color: Colors.grey.shade400,
            ),
          ),
          dense: true,
        ),
      ),
    );
  }
}
