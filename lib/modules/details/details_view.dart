import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:fundademo/modules/details/details_controller.dart';
import 'package:fundademo/modules/details/widgets/summary.dart';
import 'package:fundademo/utils/ui_constants.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailsController controller = Get.put(DetailsController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Details'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xfff59f00),
        elevation: 0,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : CustomScrollView(
                slivers: <Widget>[
                  // Object photo
                  SliverToBoxAdapter(
                    child: Image.network(controller.detailData.value.HoofdFoto),
                  ),

                  // Main content
                  SliverToBoxAdapter(
                      child: Padding(
                    padding: const EdgeInsets.only(
                      left: UIConstants.uiScreenMarginX,
                      right: UIConstants.uiScreenMarginX,
                      top: UIConstants.uiItemMargin,
                      bottom: UIConstants.uiItemMargin,
                    ),
                    child: Column(
                      spacing: 0,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Address
                        Text(controller.detailData.value.Adres, style: UIConstants.headerTextStyle),
                        Text('${controller.detailData.value.Postcode} ${controller.detailData.value.Plaats}'),
                        Text(controller.detailData.value.kenmerkenKort.Kenmerken[2]['Waarde'] ?? '...'),
                        const Gap(10),

                        // Summary
                        Summary(controller: controller),

                        // Price
                        const Gap(15),
                        Text('€ ${controller.detailData.value.KoopPrijs} k.k. ', style: UIConstants.headerTextStyle),

                        // Description
                        const Gap(50),
                        Text(controller.detailData.value.VolledigeOmschrijving),
                        const Gap(20),
                      ],
                    ),
                  )),
                ],
              ),
      ),
    );
  }
}
