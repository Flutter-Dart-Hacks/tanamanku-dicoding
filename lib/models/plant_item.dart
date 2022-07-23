class PlantItem {
  String nama;
  String keterangan;
  String jenisSiram;
  String periodeSiram;
  String cuaca;

  PlantItem({
    required this.nama,
    required this.keterangan,
    required this.jenisSiram,
    required this.periodeSiram,
    required this.cuaca,
  });
}

List<PlantItem> listTanaman = [
  PlantItem(
    nama: 'Succulent',
    keterangan: '',
    jenisSiram: 'Air dengan jumlah sedang',
    periodeSiram: '3 hari sekali',
    cuaca: '',
  ),
  PlantItem(
    nama: 'Haworthia',
    keterangan: '',
    jenisSiram: 'Air dengan jumlah sedang',
    periodeSiram: '3 hari sekali',
    cuaca: '',
  ),
  PlantItem(
    nama: 'Kaktus',
    keterangan: '',
    jenisSiram: 'Air dengan jumlah sedang',
    periodeSiram: '3 hari sekali',
    cuaca: '',
  ),
  PlantItem(
    nama: 'Aglonema',
    keterangan: '',
    jenisSiram: 'Air dengan jumlah sedang',
    periodeSiram: '3 hari sekali',
    cuaca: '',
  ),
];
