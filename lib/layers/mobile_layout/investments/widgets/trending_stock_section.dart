import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../models/table_item_model.dart';
import '../../../../core/widgets/custom_divder.dart';
import 'table_header.dart';
import 'table_item.dart';

class TrendingStockSection extends StatelessWidget {
  const TrendingStockSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Trending Stock'),
        const Gap(12),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.only(left: 20, right: 20, top: 17),
          child: const Column(
            children: [
              TableHeader(),
              CustomDivider(),
              TableContent(),
            ],
          ),
        )
      ],
    );
  }
}

class TableContent extends StatelessWidget {
  const TableContent({
    super.key,
  });
  static List<TableItemModel> tableItems = [
    TableItemModel(
      slNo: '01',
      name: 'Trivago',
      price: '520',
      returnValue: '+5%',
    ),
    TableItemModel(
      slNo: '02',
      name: 'Canon',
      price: '480',
      returnValue: '+10%',
    ),
    TableItemModel(
      slNo: '03',
      name: 'Apple',
      price: '350',
      returnValue: '-3%',
    ),
    TableItemModel(
      slNo: '04',
      name: 'Nokia',
      price: '940',
      returnValue: '+2%',
    ),
    TableItemModel(
      slNo: '05',
      name: 'Tiktok',
      price: '670',
      returnValue: '-12%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: tableItems
          .map((e) => Padding(
                padding: const EdgeInsets.only(bottom: 17.0),
                child: TableItem(tableItemModel: e),
              ))
          .toList(),
    );
  }
}
