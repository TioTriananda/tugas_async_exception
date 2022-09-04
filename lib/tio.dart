void main() async {
  print("pembeli membeli barang sayur");
  print("penjual menerima harga dagang sayuran");
  print("pembeli menggilir barang sayur lainnya");
  menu();
  try {
    await order("cabai merah");
    print("");
  } catch(error) {
    print(error);
  }

  print ("======================================\n");

  print("pembeli membeli barang sayur");
  print("penjual menerima harga dagang sayuran");
  print("pembeli menggilir barang sayur lainnya");
  menu();
  try {
    await order("brokoli");
    print("pembeli telah terbeli sayuran nya");
  } catch(e) {
    print(e);
  }
}

listmenu() {
  var listmenu = ['cabai merah', 'bawang putih', 'tomat hijau', 'kentang'];
  return listmenu;
}

void menu() {
  var no = 1;
  print("====== Menu ======");
  for (var i in listmenu()) {
    print("${no++}. $i");
  }
  print('');
}

Future<void> order(String pesanan) async {
  print("pembeli terbeli sayuran $pesanan");
  print ("penjual menyiapkan pesanan sayur");
  if (listmenu().contains(pesanan)) {
    return Future.delayed(Duration(seconds: 5), () {
      print("\n$pesanan telah selesai dibuat");
      print("penjual memberikan pesanan ke pembeli");
      print("selamat berbelanja\n");
    }
    );
  } else {
    throw ("maaf, $pesanan tidak ada dalam pesanan sayur");
  }
}