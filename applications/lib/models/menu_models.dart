class MenuModels {
  String? image;
  String? title;
  List<String>? content;

  MenuModels({this.image, this.title, this.content});

  factory MenuModels.fromJson(Map<String, dynamic> json) => MenuModels(
        title: json['title'] ?? "",
        image: json['image'] ?? "",
        content: json['content'] ?? "",
      );

  toJson() => {
        'title': title,
        'image': image,
        'content': content,
      };

  @override
  String toString() {
    return "MenuModels("
            "image=$image,"
            "title=$title,"
            "content=$content"
            ")"
        .toString();
  }

  static penyakitPadi() {
    return MenuModels(
        title: "Macam Macam Penyakit Padi",
        image: "",
        content: listStringPenyakit);
  }

  static caraMenanamPadi() {
    return MenuModels(
        title: "Cara Menanam Padi Dengan Benar",
        image: "",
        content: listStringPenyakit);
  }

  static jenisPadi() {
    return MenuModels(
        title: "Jenis Jenis Padi ", image: "", content: listStringPenyakit);
  }

  static List<String> listStringPenyakit = [
    "atu set genom padi terdiri atas 12 kromosom. Karena padi adalah tanaman diploid, maka setiap sel padi memiliki 12 pasang kromosom (kecuali sel seksual).<br><br>",
    "Padi merupakan organisme model dalam kajian genetika tumbuhan karena dua alasan: kepentingannya bagi umat manusia dan ukuran kromosom yang relatif kecil, yaitu 1.6~2.3 × 108 pasangan basa (base pairs, bp).[2] Sebagai tanaman model, genom padi telah disekuensing, seperti juga genom manusia.<br><br>",
    "Perbaikan genetik padi telah berlangsung sejak manusia membudidayakan padi. Dari hasil tindakan ini orang mengenal berbagai macam ras lokal, seperti 'Rajalele' dari Klaten atau 'Pandanwangi' dari Cianjur di Indonesia atau 'Basmati' dari India utara. Orang juga berhasil mengembangkan adi lahan kering (padi gogo) yang tidak memerlukan penggenangan atau padi rawa yang mampu beradaptasi terhadap kedalaman air rawa yang berubah-ubah. Di negara lain dikembangkan pula berbagai tipe padi.<br><br>",
    "Pemuliaan padi secara sistematis baru dilakukan sejak didirikannya IRRI di Filipina sebagai bagian dari gerakan modernisasi pertanian dunia yang dijuluki sebagai Revolusi Hijau. Sejak saat itu muncullah berbagai kultivar padi dengan daya hasil tinggi untuk memenuhi kebutuhan pangan dunia. Dua kultivar padi modern pertama adalah 'IR5' dan 'IR8' (di Indonesia diadaptasi menjadi 'PB5' dan 'PB8'). Walaupun hasilnya tinggi tetapi banyak petani menolak karena rasanya tidak enak (pera). Selain itu, terjadi wabah hama wereng coklat pada tahun 1970-an.<br><br>",
    "Ribuan persilangan kemudian dirancang untuk menghasilkan kultivar dengan potensi hasil tinggi dan tahan terhadap berbagai hama dan penyakit padi. Pada tahun 1984 pemerintah Indonesia pernah meraih penghargaan dari PBB (FAO) karena berhasil meningkatkan produksi padi hingga dalam waktu 20 tahun dapat berubah dari pengimpor padi terbesar dunia menjadi negara swasembada beras. Prestasi ini tidak dapat dilanjutkan dan baru kembali pulih sejak tahun 2007."
  ];
}
