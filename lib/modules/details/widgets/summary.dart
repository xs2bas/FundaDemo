import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:fundademo/modules/details/details_controller.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.controller,
  });

  final DetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.house_siding_outlined, color: Colors.grey),
        const Gap(5),
        Text('${controller.detailData.value.WoonOppervlakte} m2'),
        const Gap(10),
        const Icon(Icons.square_outlined, color: Colors.grey),
        const Gap(5),
        Text('${controller.detailData.value.PerceelOppervlakte.toString()} m2'),
        const Gap(10),
        const Icon(Icons.bathtub_outlined, color: Colors.grey),
        const Gap(5),
        Text(controller.detailData.value.AantalBadkamers.toString()),
      ],
    );
  }
}
