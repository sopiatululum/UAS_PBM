import 'package:flutter/material.dart';
import 'package:juice/detailorder.dart';

void main() {
  runApp(const InitialApp());
}

class InitialApp extends StatelessWidget {
  const InitialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Pemesanan(),
    );
  }
}

class Pemesanan extends StatelessWidget {
  const Pemesanan({super.key});

  @override
  Widget build(BuildContext context) {
    const tabBar = TabBar(
      isScrollable: true,
      indicatorColor: Colors.grey,
      labelColor: Colors.black,
      labelPadding: EdgeInsets.symmetric(horizontal: 30),
      tabs: [
        Tab(
          child: Text('Semua'),
        ),
        Tab(
          child: Text('Belum dibayar'),
        ),
        Tab(
          child: Text('Dikemas'),
        ),
        Tab(
          child: Text('Dikirim'),
        ),
        Tab(
          child: Text('Ulasan'),
        )
      ],
    );
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text('Pesanan'),
          bottom: PreferredSize(
            preferredSize: tabBar.preferredSize,
            child: const ColoredBox(
              color: Colors.white,
              child: tabBar,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DetailOrder()));
                },
                child: Container(
                  height: 180,
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Dikirim',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                              flex: 1,
                              child: Image.asset(
                                'img/juice1.png',
                                width: 400,
                                height: 100,
                              )),
                          const SizedBox(width: 12),
                          Flexible(
                            flex: 2,
                            child: SizedBox(
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Juice Cherry ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '1 Glass',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'Harga : Rp. 15.000',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
