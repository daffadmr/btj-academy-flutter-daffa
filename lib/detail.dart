import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Image.asset('assets/images/bakti-logo.png', height: 30),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          actions: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      hero,
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Project Information',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Project Name',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white, //add it here
                            ),
                            padding: const EdgeInsets.all(15),
                            child: const Column(children: [
                              Text(
                                'Penyediaan Infrastuktur Pendukung Base Transceiver Station (BTS) 4G dan Infrastruktur Pendukung',
                                style: TextStyle(fontSize: 12),
                              )
                            ]),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      detailList,
                      const SizedBox(
                        height: 6,
                      ),
                      siteList,
                      const SizedBox(
                        height: 6,
                      ),
                      provinceList,
                      const SizedBox(
                        height: 6,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Other Information',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                            Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white, //add it here
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Configuration',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Tower_Konfig-23 (Tower',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          'Tubelar Triangle Guyed',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          'Mast 32 Height)',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                ))
                          ]),
                    ],
                  )
                ]),
          ]),
        )));
  }

  Widget get hero => Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: const Color(0xff2C3280),
            borderRadius: BorderRadius.circular(8)),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LARIKE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '(-3.70379, 127.92553)',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Site Real ID',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      'MLU0016',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Provinsi',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      'MALUKU',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kabupaten',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      'MALUKU TENGAH',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kelurahan',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      'LARIKE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      );

  Widget get detailList => Container(
          child: Column(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Detail',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white, //add it here
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Vendor / Mitra',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Kemitraan FH-TI-MTD',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ))
        ]),
        const SizedBox(
          height: 6,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white, //add it here
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Scope of work',
                    style: TextStyle(fontSize: 12),
                  ),
                  Column(
                    children: [
                      Text(
                        'Tower Tubelar Triangle',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Guyed Mast 32 Height',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  )
                ],
              ))
        ]),
        const SizedBox(
          height: 6,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white, //add it here
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tanggal / Jam',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '12/10/2023',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ))
        ]),
      ]));

  Widget get siteList => Container(
          child: Column(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Site Address',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white, //add it here
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Site ID',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'MLU0016',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ))
        ]),
        const SizedBox(
          height: 6,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white, //add it here
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Site Name',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'LARIKE',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ))
        ]),
      ]));

  Widget get provinceList => Container(
          child: Column(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Detail',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white, //add it here
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Provinsi',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'MALUKU',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ))
        ]),
        const SizedBox(
          height: 6,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white, //add it here
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kabupaten',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'MALUKU TENGAH',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ))
        ]),
        const SizedBox(
          height: 6,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white, //add it here
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kecamatan',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'LEIHITU BARAT',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ))
        ]),
        const SizedBox(
          height: 6,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white, //add it here
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kelurahan',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Larike',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ))
        ]),
        const SizedBox(
          height: 6,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white, //add it here
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'GPS Coordinate',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '(-3.70379, 127.92553)',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ))
        ]),
        const SizedBox(
          height: 6,
        ),
      ]));
}
