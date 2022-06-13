import 'package:sahabat_tani/models/artilce_menu_model.dart';

const List<String> gender = [
  "Laki-laki",
  "Perempuan",
];

class Network {
  static String baseURL = "https://sahabat-tani-fix-kvditpf2ca-uc.a.run.app/";
  static String apiEndpoint = "api/";
  static String loginEndpoint = "readUser/{email}";
  static String registerEndpoint = "createUser/";
}

class AppImages {
  static String vectorPadi2 = "assets/Vektor Padi 2.png";
  static String registerSuccess = "assets/Pendaftaran Succes.png";
  static String vectorPadi = "assets/vector_padi.jpg";
  static String virus = "assets/Virus.png";
  static String list = "assets/list.png";
}

class AppData {
  static List<ArticleMenuModel> dataArticleHome = [
    ArticleMenuModel(
      image: AppImages.virus,
      title: "Macam-macam Penyakit Padi",
      content: '<p class="p1"><strong>1. Penggerek Batang</strong></p>'
          '<p class="p1">Penggerek batang adalah ulat yang hidup dalam batang padi. Hama ini berubah menjadi ngengat berwarna kuning atau coklat; biasanya 1 larva berada dalam 1 anakan.&nbsp; Ngengat aktif malam hari.</p>'
          '<p class="p1">Penggerek batang dapat merusak pertanaman padi sejak persemaian sampai matang. Bila tanaman masih muda, daun-daun tengah anakan yang rusak berwarna coklat dan mati. Bila kerusakan timbul setelah terbentuknya malai, maka malai berwarna putih.</p>'
          '<p class="p1"><strong>Pencegahan :</strong></p>'
          '<ul class="ul1">'
          '<li class="li2">Lindungi musuh alami penggerek, jangan gunakan pestisida berspektrum luas, misalnya methyl parathion.</li>'
          '<li class="li2">Sayat ujung helaian daun sebelum tanam pindah.&nbsp; Telur-telur penggerek batang kuning diletakkan dekat ujung daun. Dengan menyayat, pengalihan telur dari persemaian ke sawah dapat dikurangi.</li>'
          '<li class="li2">Tanam belakangan (sedikit terlambat) untuk menghindari ngengat penggerek batang kuning.</li>'
          '<li class="li2">Tanam varietas agak tahan.</li>'
          '<li class="li2">Jemur atau hamparkan jerami di bawah sinar matahari untuk membunuh larva.</li>'
          '<li class="li2">Jaring larca penggerek batang pada daun yang mengapung dengan jaring.</li>'
          '</ul>'
          '<p class="p1"><strong>2. Blas</strong></p>'
          '<ul class="ul1">'
          '<li class="li2">Disebabkan oleh jamur&nbsp;<em>Pyricularia, sp</em></li>'
          '<li class="li2">Spora disebarkan melalui benih (seed borne) dan angin (air-borne).</li>'
          '<li class="li2">Penyakit Blas menginfeksi tanaman padi pada setiap fase pertumbuhan</li>'
          '<li class="li2">menyerang daun, batang dan malai padi (kecuali akar).</li>'
          '<li class="li2">Leaf blast (blas daun): lesi berbentuk belah ketupat, dimulai dengan bercak kecil ungu pada daun muda, kemudian berkembang menjadi belah ketupat, dapat menyebabkan tanaman kerdil dan pertumbuhan malai yang kecil/abnormal</li>'
          '<li class="li2">Neck blast (blas leher): lesi pada ruas antara batang dan malai, berwarna coklat, menghambat pengisian bulir pada malai (malai hampa dan patah), mirip gejala beluk pada penggerek batang.</li>'
          '<li class="li2">Pemupukan nitrogen yang tinggi, temperatur optimum 24-28&deg;C, cuaca basah dan lembab yang cukup lama, terutama musim hujan menguntungkan terjadinya infeksi.</li>'
          '</ul>'
          '<p class="p1">&nbsp;</p>'
          '<p class="p1"><strong>Pengendalian blas:</strong></p>'
          '<p class="p1">Pratanam: sanitasi sisa tanaman, tidak menanam benih dari daerah endemis, perlakuan benih/seed treatmen (isoprotiolan)</p>'
          '<p class="p1">Vegetatif dan Generatif: tidak memupuk N berlebihan, pupuk K, aplikasi fungisida binomil atau isoprotiolan pada anakan maksimum dan bunting/awal berbunga.</p>'
          '<p class="p3">&nbsp;</p>'
          '<p class="p3">&nbsp;</p>'
          '<p class="p3">&nbsp;</p>'
          '<p class="p3">&nbsp;</p>'
          '<p class="p1"><strong>3. Penyakit Hawar Daun Bakteri (HDB)</strong></p>'
          '<p class="p1">Penyebab penyakit HDB adalah bakteri&nbsp;<em>X.oryzae pv. oryzae</em>&nbsp;atau&nbsp;<em>X. Compestris</em>&nbsp;pv<em>.oryzae</em>, yang tersebar hampir diseluruh daerah pertanaman padi baik di dataran rendah maupun dataran tinggi dan selalu timbul pada musim kemarau maupun hujan. Kerugian hasil yang disebabkan oleh penyakit hawar daun bakteri dapat mencapai 60%. Kerusakan terberat terjadi apabila penyakit menyerang tanaman muda, dapat menyebabkan tanaman mati.</p>'
          '<p class="p1">Perkembangan penyakit sangat tergantung cuaca dan ketahanan tanaman. Penyakit dapat terjadi pada semua stadia tanaman, umumnya terjadi saat tanaman mulai mencapai anakan maksimum sampai berbunga. Pada bibit, gejala penyakit disebut kresek, sedang pada tanaman yang lebih lanjut, gejala disebut hawar (blight). Gejala diawali dengan bercak kelabu umumnya di bagian pinggir daun. Pada varietas yang rentan bercak berkembang terus, dan akhirnya membentuk hawar.&nbsp; Pada keadaan yang parah, pertanaman terlihat kering seperti terbakar.</p>'
          '<p class="p1"><strong>Pengendalian HBD:</strong></p>'
          '<ul class="ul1">'
          '<li class="li2">Tanam varietas tahan</li>'
          '<li class="li2">Pemupukan rasionil/sesuai kebutuhan tanaman, pupuk N tidak berlebihan, gunakan pupuk K.</li>'
          '<li class="li2">Jarak tanam tidak terlalu rapat (jajar legowo).</li>'
          '<li class="li2">Pengairan teratur (intermitten).</li>'
          '<li class="li2">Usahakan keparahan penyakit &lt; 15-20% dengan aplikasi bakterisida, dll</li>'
          '</ul>'
          '<p class="p1"><strong>4. Penyakit Tungro</strong></p>'
          '<p class="p1">Tungro adalah penyakit virus pada padi yang menyebabkan tanaman tumbuh kerdil dan berkurangnya jumlah anakan. Pelepah dan helaian daun memendek dan daun yang terserang sering berwarna kuning sampai kuning-oranye. Wereng hijau adalah serangga utama yang menyebarkan virus tungro.</p>'
          '<p class="p1"><strong>Pengendalian :</strong></p>'
          '<ul class="ul1">'
          '<li class="li2">Gunakan varietas padi yang tahan tungro.</li>'
          '<li class="li2">Tanam serempak.</li>'
          '<li class="li2">Rotasi varietas penting untuk mengurangi gangguan.</li>'
          '<li class="li2">Pembajakan di bawah sisa tunggul yang terinfeksi untuk mengurangi sumber penyaki, menghancurkan telur dan tempat penetasan wereng hijau.</li>'
          '<li class="li2">Cabut dan bakar tanaman yang sakit.</li>'
          '<li class="li2">Tanam serempak untuk mengurangi penyebaran tungro.</li>'
          '<li class="li2">Setelah panen, buang jerami dan sisa tanaman yang terinfeksi tungro dengan bajak dan garu.</li><li class="li2">Pengendalian juga perlu dilakukan terhadap wereng hijau, menggunakan insektisida berbahan aktif BPMC, buprofezin, etofenproks, imidakloprid, karbofuran, MIPC, atau tiametoksam.</li>'
          '</ul>'
          '<p class="p1"><strong>5. Penyakit lain yang juga perlu mendapat perhatian:</strong></p>'
          '<ul class="ul1">'
          '<li class="li2"><strong>Penyakit bercak daun</strong>&nbsp;disebabkan oleh jamur merupakan penyakit yang sangat merugikan terutama pada sawah tadah hujan Gejala penyakit timbul pada daun berupa bercak-bercak sempit memanjang, berwarna coklat kemerahan. Pengendalian bercak daun adalah dengan penanaman varietas tahan, seperti Inpari 30 dan Membramo.&nbsp; Penyemprotan fungisida.</li>'
          '<li class="li2"><strong>Penyakit bercak coklat</strong>&nbsp;disebabkan oleh jamur. Bercak coklat dapat menyebabkan kematian tanaman muda dan menurunkan kualitas gabah. Gejala : bercak berwarna coklat, berbentuk oval sampai bulat.&nbsp; Pengendalian secara efektif dilakukan dengan pemupukan berimbang.</li>'
          '</ul>'
          '<p class="p1"><strong>6. Tikus Sawah</strong></p>'
          '<p class="p1">Tikus sawah merupakan hama utama penyebab kerusakan terbesar tanaman padi.&nbsp; Tikus sawah merusak tanaman padi mulai dari semai,&nbsp; panen bahkan di gudang penyimpanan. Kerusakan parah terjadi apabila tikus menyerang padi yang sudah tidak membentuk anakan baru. Ciri khas serangan tikus sawah adalah kerusakan tanaman dimulai dari tengah petak, kemudian meluas ke arah pinggir, sehingga pada keadaan serangan berat hanya menyisakan 1-2 baris padi di pinggir petakan.</p>'
          '<p class="p1">Pengendalian tikus ditekankan untuk menekan populasi awal tikus sejak awal pertanaman sebelum tikus memasuki masa perkawinan. Pengendalian dilakukan melalui gropyok masal, sanitasi habitat, pemasangan TBS (Trap Barrier System), pemasangan bubu perangkap pada persemaian, Fumigasi atau pengasapan, Rodentisida (racun tikus sebaiknya hanya digunakan saat populasi tikus sangat tinggi).</p>',
    ),
    ArticleMenuModel(
      image: AppImages.list,
      title: "Jenis Padi",
      content: '<p class="p1"><strong>1. VARIETAS PADI HIBRIDA</strong></p>'
          '<p class="p2">Varietas hibrida adalah varietas padi yang hanya sekali tanam. Kelebihan padi varietas hibrida adalah potensi hasil panen yang maksimal. Hasil panen dapat mencapai dua kali lipat dari padi lokal. Butiran padi yang dihasilkan lebih bagus, dengan kualitas nasi yang lebih pulen dan wangi.</p>'
          '<p class="p2">Namun varietas hibrida sendiri memiliki kelemahan, yaitu kualitas hasilnya akan berkurang jauh apabila berasal dari tanaman turunannya. Artinya, padi harus berasal dari bibit original, karena apabila hasil panen kemudian ditanam ulang, hasil ini akan berbeda dengan bibit aslinya.&nbsp;Harga benih varietas hibrida ini termasuk yang termahal.</p>'
          '<p class="p2">Jenis varietas padi hibrida antara lain&nbsp;Intani 1 dan 2, Rokan, SL 8 dan 11 SHS, Segera Anak, PP1, H1, Bernas Prima, SEMBADA B3, B5, B8 DAN B9, Long Ping (pusaka 1 dan 2), Adirasa-1, Adirasa-64,&nbsp; Hibrindo R-1, Hibrindo R-2, Manis-4 dan 5, Hipa4, Hipa 5 Ceva, Hipa 6 Jete, Hipa 7-10 11, MIKI 1-3, SL 8 SHS, SL 11 HSS dan Maro.&nbsp;</p>'
          '<p class="p4"><strong>2. VARIETAS PADI UNGGUL</strong></p>'
          '<p class="p5">Varietas padi unggul berada satu tingkat di bawah varietas hibrida. Varietas ini dapat ditanam berkali-kali dengan kualitas yang sama. Artinya, hasil panen dari varietas padi unggul masih bisa dijadikan benih.</p>'
          '<p class="p5">Harga benih padi unggul pun tidak semahal benih padi hibrida. Untuk hasil produksi pun padi unggul dapat dikatakan baik, dapat mencapai 8-10 ton per hektar.</p>'
          '<p class="p5">Beberapa contoh varietas padi unggul antara lain adalah Inpara 1-8, Inpago 1-5, Inpari 1-21, Inpari 31, Inpari 33, Inpari 34 Salin Agritan, dan Inpari 35 Salin Agritan.</p>'
          '<p class="p5">Varietas padi unggul pun ada juga yang dikembangkan dan dirilis oleh pemerintah, seperti Inpari 34 dan Inpari 35. Keunggulan varietas ini adalah ketahanannya terhadap hama wereng cokelat.</p>'
          '<p class="p4">&nbsp;<strong>3. VARIETAS PADI LOKAL</strong></p>'
          '<p class="p5">Varietas padi lokal adalah varietas padi yang khusus berada di daerah tertentu. Varietas semacam ini hanya cocok ditanam di daerah tertentu saja, karena membutuhkan spesifikasi khusus untuk tumbuh dan memproduksi padi.</p>'
          '<p class="p5">Padi lokal biasanya menghasilkan produksi sekitar 7-8 ton per hektar. Rasa beras dari padi lokal juga kurang enak.</p>'
          '<p class="p5">Jenis jenis padi lokal antara lain : Gropak (Kulon Progo), Indramayu, Dharma Ayu, Srimulih, Andel Jaran, Merong, Gundelan, Marong, Simenep, dan Ketan Lusi.</p> '
          '<p class="p4"><strong>4. PADI KETAN</strong></p> '
          '<p class="p5">Padi ketan lebih lengket dari padi nasi, sehingga tidak dijadikan makanan pokok. Padi ketan biasanya dijadikan bahan pembuatan tape ketan, bubur ketan, dan macam-macam makanan khas daerah.</p> '
          '<p class="p5">Varian padi ketan antara lain adalah varian padi ketan merah, putih, dan hitam.</p> '
          '<p class="p4"><strong>5. PADI PULEN</strong></p> '
          '<p class="p5">Padi pulen adalah padi yang apabila berasnya dimasak, akan menghasilkan karakteristik nasi yang pulen. Sebagian orang lebih menyukai nasi yang pulen alias sedikit lengket.</p>',
    ),
    ArticleMenuModel(
      image: AppImages.vectorPadi,
      title: "Cara Menanam Padi dengan Benar",
      content: '<p class="p1">Cara Menanam Padi</p> '
          '<p class="p2">Untuk mendapatkan tanaman padi yang berkualitas, tentu diperlukan cara tanam padi dan&nbsp; proses penanaman yang baik dan benar, persiapan apa yang perlu di perhatikan dalam membudidayakan tanaman padi. Berikut ini beberapa langkah dalam cara menanam padi yang harus di perhatikan agar cara budidaya padi sampai panen berikut ini:</p> '
          '<p class="p3">Persiapan media tanam</p> '
          '<p class="p2">Media tanam untuk menanam padi haruslah disiapkan minimal dua minggu sebelum penanaman. Persiapan dilakukan dengan mengolah tanah sebagai media tanam. Tanah harus dipastikan bebas dari gulma dan rumput liar. Jangan sampai pertumbuhan tanaman padi terganggu karena harus berbagi nutrisi dan air dengan rumput-rumput liar. Jika sudah bebas dari tanaman liar, basahi tanah dengan air lalu lakukan pembajakan. Pembajakan dilakukan untuk mempersiapkan tanah dalam keadaan lunak dan gembur serta cocok untuk penanaman. Di zaman modern ini pembajakan tidak lagi dilakukan dengan mencangkul tetapi dengan menggunakan sapi ataupun traktor. Setelah melalui pembajakan, kembali genangi media tanam dengan air. Air diberikan dalam jumlah banyak untuk menutupi seluruh lahan dengan ketinggian hingga 10 cm. Biarkan air pada media tanam terus menggenang. Air yang menggenang selama dua minggu akan menyebabkan media tanam menjadi berlumbur dan racun pun dapat hilang karena ternetralisir.</p> '
          '<p class="p3">Pemilihan bibit</p> <p class="p2">Bibit pada tanaman padi harus melalui pengujian terlebih dahulu untuk menentukan kualitasnya. Pengujian dilakukan dengan merendam sekitar 100 butir benih padi dalam air. Setelah dua jam periksalah benih tersebut. Cara menanam benih padi yaitu dengan Pemeriksaan benih dilakukan dengan mengidentifikasi perubahan pada benih. Jika terdapat lebih dari 90 butir benih atau lebih dari 90% benih mengeluarkan kecambah, maka artinya benih tersebut berkualitas unggul dan bermutu tinggi. Tentu benih yang berkualitas unggul dan bermutu tinggi inilah yang layak untuk dibudidayakan. Sedangkan jika benih tidak menunjukkan tanda seperti yang disebutkan diatas, artinya benih tersebut tidak disarankan untuk dibudidayakan. Setelah menentukan benih yang akan dijadikan bibit, maka dapat dilakukan persemaian segera.</p> '
          '<p class="p3">Persemaian</p> '
          '<p class="p3">Persemaian dilakukan setelah menentukan bibit yang unggul. Bibit unggul tersebut kemudian akan disemai di wadah persemaian. Wadah persemaian terlebih dahulu harus disiapkan. Kebutuhan wadah semai diberikan dalam perbandingan sebesar 1 : 20. Misalkan akan menggunakan lahan sawah sebesar 1 hektar maka wadah persemaiannya sekitar 500 m<sup>2</sup>. Lahan pada wadah persemaian haruslah juga berair dan berlumpur. Berikan pupuk urea dan pupuk TSP pada lahan persemaian dengan dosis masing-masing 10 gr per 1 m<sup>2</sup>. Jika lahan persemaian sudah siap, sebarkan benih yang telah berkecambah dengan merata.</p> '
          '<p class="p3">Penanaman</p> '
          '<p class="p2">Proses penanaman dilakukan setelah benih pada proses persemaian telah tumbuh daun sempurna sebanyak tiga hingga empat helai. Jangka waktu dari persemaian ke bibit siap tanam umumnya sekitar 12 hingga 14 hari saja. Jika sudah siap tanam, pindahkan bibit dari lahan semai ke lahan tanam. Pemidahan dilakukan dengan hati-hati dan tidak merusak tanaman. Penanaman dilakukan pada lubang-lubang tanam yang telah disiapkan. Khusus untuk tanaman padi dalam satu lubang dapat ditanam dua bibit sekaligus. Penanaman dilakukan dengan memasukkan bagian akar membentuk huruf L agar akar dapat tumbuh dengan sempurna. Kedalaman bibit ditanam pun ditentukan berkisar pada rentang 1 cm hingga 15 cm. Masa penanaman padi lebih baik dilakukan dua kali dalam setahun berdasarkan masa penanamannya yang ideal.</p> '
          '<p class="p3">Perawatan lahan</p> '
          '<p class="p2">Perawatan dilakukan dengan tiga hal yaitu penyiangan, pengairan, dan pemupukan. Penyiangan dilakukan dengan menjaga kebersihan lahan dari tanaman pengganggu. Penyiangan harus dilakukan rutin setiap periode waktu tertentu. Bisa dilakukan dua minggu sekali atau tiga minggu sekali. Pengairan diberikan sesuai kebutuhan. Seperti pada tanaman lainnya, pastikan tidak ada kekurangan atau kelebihan air. Selanjutnya untuk pemupukan, dilakukan pertama kali setelah tanaman padi berusia satu minggu. Jenis pupuk yang diberikan adalah pupuk urea dengan dosis 100 kg per hektar dan pupuk TPS dengan dosis 50 kg per hektar. Pemupukan selanjutnya dilakukan setelah 25 hari hingga 30 hari setelah penanaman. Diberikan kembali pupuk urea dengan dosis 50 kg per hektar dan pupuk Phonska dengan dosis 100 kg per hektar.</p> '
          '<p class="p3">Pencegahan hama dan penyakit</p> '
          '<p class="p2">Hama dan penyakit dapat dicegah dengan memberikan pestisida.</p> '
          '<p class="p3">Pemanenan</p> '
          '<p class="p2">Panen dilakukan dengan tanda-tanda padi yang sudah menguning dan merunduk. Gunakan sabit gerigi untuk memanen dan letakkan hasil panen pada tikar dengan merontokkan beras dari dalam bulir-bulir padi yang ada.</p> '
          '<p class="p3">Demikianlah&nbsp;<span class="s1">cara menanam padi</span>&nbsp;yang benar secara berurutan. Jika dilakukan penanaman padi yang baik dan benar, maka hasilnya pun akan memuaskan dan menguntungkan. Untuk itu lakukanlah penanaman padi dengan tepat.</p>',
    ),
  ];
}
