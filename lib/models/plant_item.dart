class PlantItem {
  String nama;
  String keterangan;
  String periodeSiram;
  String cuaca;

  PlantItem({
    required this.nama,
    required this.keterangan,
    required this.periodeSiram,
    required this.cuaca,
  });
}

List<PlantItem> listTanaman = [
  PlantItem(
    nama: 'Succulent',
    keterangan:
        'Tumbuhan dengan organ yang menebal, berdaging, dan membengkak, biasanya untuk menyimpan air di iklim atau kondisi tanah kering.',
    periodeSiram: '3 hari sekali',
    cuaca: 'Berawan',
  ),
  PlantItem(
    nama: 'Haworthia',
    keterangan:
        'Tanaman sukulen asal Afrika Selatan. Ia menyukai matahari, tidak perlu sering disiram, sehingga cocok untuk mereka yang tak punya banyak waktu mengurus tanaman.',
    periodeSiram: '4 hari sekali',
    cuaca: 'Panas',
  ),
  PlantItem(
    nama: 'Kaktus',
    keterangan:
        'Tanaman yang biasa tumbuh di daerah gurun yang panas dengan daun yang telah termodifikasi menjadi duri kaktus dapat hidup di daerah yang kering.',
    periodeSiram: '5 hari sekali',
    cuaca: 'Panas',
  ),
  PlantItem(
    nama: 'Aglonema',
    keterangan:
        'Tanaman hias dari jenis talas-talasan yang berada di hutan hujan tropis. Tanaman ini menyukai air dan kondisi lingkungan yang lembab.',
    periodeSiram: '2 hari sekali',
    cuaca: 'Hujan',
  ),
];
