import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/widgets/custom_text_button_builder.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles/app_styles.dart';
import 'table_label_text.dart';

class DesktopLoanTable extends StatelessWidget {
  const DesktopLoanTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF514a9d),
            Color.fromARGB(255, 150, 134, 240),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DataTable(
          
            columns: const [
              DataColumn(label: TableLabelText(label: 'SL')),
              DataColumn(label: TableLabelText(label: 'Money')),
              DataColumn(label: TableLabelText(label: 'repay')),
              DataColumn(label: TableLabelText(label: 'Duration')),
              DataColumn(label: TableLabelText(label: 'rate')),
              DataColumn(label: TableLabelText(label: 'Installment')),
              DataColumn(label: TableLabelText(label: 'Repay')),
            ],
            rows: [
              _buildDataRow(context, '01.', '\$100,000', '\$40,500', '8 Months',
                  '12%', '\$2,000 / month'),
              _buildDataRow(context, '02.', '\$500,000', '\$250,000',
                  '36 Months', '10%', '\$8,000 / month'),
              _buildDataRow(context, '03.', '\$900,000', '\$40,500',
                  '12 Months', '12%', '\$5,000 / month'),
              _buildDataRow(context, '04.', '\$50,000', '\$40,500', '25 Months',
                  '5%', '\$2,000 / month'),
              _buildDataRow(context, '05.', '\$50,000', '\$40,500', '5 Months',
                  '16%', '\$10,000 / month'),
              _buildDataRow(context, '06.', '\$80,000', '\$25,500', '14 Months',
                  '8%', '\$2,000 / month'),
              _buildDataRow(context, '07.', '\$12,000', '\$5,500', '9 Months',
                  '13%', '\$500 / month'),
              _buildDataRow(context, '08.', '\$160,000', '\$100,800',
                  '3 Months', '12%', '\$900 / month'),
            ],
          ),
          const Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: AppStyles.bold.fontSize16(context).copyWith(
                        color: Colors.white,
                      ),
                ),
                Text(
                  '\$125,000',
                  style: AppStyles.bold.fontSize16(context).copyWith(
                        color: AppColors.incrementColor,
                      ),
                ),
                Text(
                  '\$750,000',
                  style: AppStyles.bold.fontSize16(context).copyWith(
                        color: AppColors.incrementColor,
                      ),
                ),
                Text(
                  '\$50,000 / month',
                  style: AppStyles.bold.fontSize16(context).copyWith(
                        color: AppColors.incrementColor,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  DataRow _buildDataRow(
    BuildContext context,
    String slNo,
    String loanMoney,
    String leftToRepay,
    String duration,
    String interestRate,
    String installment,
  ) {
    final TextStyle cellTextStyle =
        AppStyles.regular.fontSize14(context).copyWith(
              color: Colors.white, // Assuming black color for text
            );

    return DataRow(
      
      cells: [
      DataCell(Text(
        slNo,
        style: cellTextStyle,
      )),
      DataCell(Text(
        loanMoney,
        style: cellTextStyle,
      )),
      DataCell(Text(
        leftToRepay,
        style: cellTextStyle,
      )),
      DataCell(Text(
        duration,
        style: cellTextStyle,
      )),
      DataCell(Text(
        interestRate,
        style: cellTextStyle,
      )),
      DataCell(Text(
        installment,
        style: cellTextStyle,
      )),
      DataCell(_buildRepayButton(context)),
    ]);
  }

  Widget _buildRepayButton(BuildContext context) {
    return CustomTextButtonBuilder.reversedWithText(
      context,
      text: 'Repay',
      width: 100,
      height: 35,
      horizontalPadding: 12,
      verticalPadding: 5,
      borderRadius: 50,
    );
  }
}
