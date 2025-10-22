class Product {
  final String id;
  final String name;
  final String image;
  final double price;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });

  String get formattedPrice => 'Rp ${price.toStringAsFixed(0)}';

  static List<Product> getAllProducts() {
    return [
      Product(
        id: '1',
        name: 'Americano',
        image: 'assets/images/americano.webp',
        price: 25000,
        description:
            'Kopi Americano adalah minuman kopi yang dibuat dengan menambahkan air panas ke dalam espresso. Menghasilkan rasa kopi yang kuat namun lebih ringan dibandingkan espresso murni. Cocok untuk Anda yang menyukai kopi hitam dengan intensitas yang pas.',
      ),
      Product(
        id: '4',
        name: 'Kopi Susu',
        image: 'assets/images/kopi-susu.webp',
        price: 20000,
        description:
            'Perpaduan sempurna antara kopi berkualitas dan susu segar yang creamy. Menghasilkan rasa yang seimbang antara pahit kopi dan manisnya susu. Minuman favorit untuk memulai hari atau menemani waktu santai Anda.',
      ),
      Product(
        id: '3',
        name: 'Es Teh',
        image: 'assets/images/es-teh.webp',
        price: 8000,
        description:
            'Es teh manis yang menyegarkan, dibuat dari teh pilihan berkualitas. Minuman sempurna untuk menemani makanan atau sekadar melepas dahaga di cuaca panas. Tingkat kemanisan dapat disesuaikan dengan selera Anda.',
      ),
      Product(
        id: '2',
        name: 'Ayam Tepung',
        image: 'assets/images/ayam-tepung.webp',
        price: 35000,
        description:
            'Ayam goreng tepung crispy dengan bumbu rahasia yang gurih dan renyah. Digoreng dengan sempurna hingga kulitnya berwarna keemasan. Disajikan dengan nasi hangat dan sambal, cocok untuk makan siang atau malam Anda.',
      ),
      Product(
        id: '5',
        name: 'Mie Goreng',
        image: 'assets/images/mie-goreng.webp',
        price: 18000,
        description:
            'Mie goreng spesial dengan bumbu yang meresap sempurna. Dimasak dengan sayuran segar dan dilengkapi dengan telur. Tekstur mie yang kenyal dan rasa yang gurih membuat hidangan ini selalu menjadi favorit.',
      ),
      Product(
        id: '6',
        name: 'Nasi Goreng',
        image: 'assets/images/nasgor.webp',
        price: 22000,
        description:
            'Nasi goreng spesial dengan bumbu racikan khas yang menggugah selera. Dimasak dengan api besar untuk menghasilkan aroma wangi dan rasa yang autentik. Dilengkapi dengan telur, ayam, dan kerupuk.',
      ),
      Product(
        id: '7',
        name: 'Pisang Goreng',
        image: 'assets/images/pisang-goreng.webp',
        price: 12000,
        description:
            'Pisang goreng dengan tepung crispy yang renyah di luar namun lembut di dalam. Dibuat dari pisang pilihan yang matang sempurna. Camilan tradisional yang nikmat dinikmati saat hangat, cocok untuk teman minum kopi atau teh.',
      ),
    ];
  }

  static Product? getProductById(String id) {
    try {
      return getAllProducts().firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }
}
