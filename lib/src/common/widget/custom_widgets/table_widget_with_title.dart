import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/widget/texts/normal_text.dart';
import 'package:flutter/material.dart';

class TableRowdata {
  final double size;
  final dynamic value;
  final Color? dataTextColor;
  final VoidCallback? ontap;
  TableRowdata(
      {required this.size,
      required this.value,
      this.dataTextColor,
      this.ontap});
}

class TableRowValueData {
  final List<TableRowdata> rows;
  TableRowValueData({
    required this.rows,
  });
}

class TableWidget extends StatefulWidget {
  const TableWidget({
    Key? key,
    required this.headerRow,
    required this.datavalue,
    this.borderColor = kPrimaryColor,
    this.onTap,
    this.headerColor = kLightGreyColor,
    this.dataColor = kLightestGreyColor,
    this.headerTextColor = kBlackColor,
    this.dataTextColor = kBlackColor,
    this.selectedColor = kLightGreyColor,
  }) : super(key: key);
  final List<TableRowdata> headerRow;
  final List<TableRowValueData> datavalue;

  final VoidCallback? onTap;
  final Color borderColor;
  final Color headerColor;
  final Color dataColor;
  final Color headerTextColor;
  final Color dataTextColor;
  final Color selectedColor;

  @override
  State<TableWidget> createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  int selectedIndex = -1;
  @override
  void initState() {
    // loadData();
    super.initState();
  }

  changeSelectedRowIndex(int index) {
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 35,
              child: FieldWodget(
                headerData: widget.headerRow,
                isTitle: true,
                headerColor: widget.headerColor,
                borderColor: widget.borderColor,
                headerTextColor: widget.headerTextColor,
                selectedrowIndex: 0,
                rowIndex: 0,
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  children: widget.datavalue.asMap().entries.map((e) {
                final inx = e.key;
                final val = e.value.rows;
                return SizedBox(
                    height: height(30),
                    child: FieldWodget(
                      headerData: val,
                      isTitle: false,
                      dataColor: widget.dataColor,
                      dataTextColor: val.isNotEmpty
                          ? val[0].dataTextColor ?? widget.dataTextColor
                          : widget.dataTextColor,
                      borderColor: widget.borderColor,
                      selectedrowIndex: selectedIndex,
                      rowIndex: inx,
                      onTap: () {
                        changeSelectedRowIndex(inx);
                        if (val.isNotEmpty) {
                          val[0].ontap;
                        }
                      },
                    ));
              }).toList()),
            )),
          ],
        ),
      ),
    );
  }
}

class FieldWodget extends StatelessWidget {
  const FieldWodget(
      {Key? key,
      this.borderColor = kPrimaryColor,
      this.isTitle = false,
      this.onTap,
      this.headerColor = kLightGreyColor,
      this.dataColor = kLightestGreyColor,
      this.headerTextColor = kBlackColor,
      this.dataTextColor = kBlackColor,
      required this.rowIndex,
      required this.selectedrowIndex,
      this.selectedColor = kLightGreyColor,
      required this.headerData})
      : super(key: key);
  final List<TableRowdata> headerData;
  final bool isTitle;
  final VoidCallback? onTap;
  final Color borderColor;
  final Color headerColor;
  final Color dataColor;
  final Color headerTextColor;
  final Color dataTextColor;
  final int rowIndex;
  final int selectedrowIndex;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: headerData.asMap().entries.map((e) {
          int indx = e.key;
          String val = e.value.value.toString();
          double rowsize = e.value.size;
          return Container(
            alignment: Alignment.centerLeft,
            height: MediaQuery.of(context).size.height,
            width: width(rowsize),
            padding: const EdgeInsets.only(
                bottom: kDefaultPadding / 5,
                left: kDefaultPadding / 5,
                right: kDefaultPadding / 5),
            decoration: BoxDecoration(
              color: isTitle
                  ? headerColor
                  : rowIndex == selectedrowIndex
                      ? selectedColor
                      : dataColor,
              border: Border(
                left: indx == 0
                    ? BorderSide(
                        width: 1.0,
                        color: borderColor,
                      )
                    : const BorderSide(width: 0),
                top: isTitle
                    ? BorderSide(
                        width: 1.0,
                        color: borderColor,
                      )
                    : const BorderSide(
                        width: 0,
                      ),
                right: BorderSide(width: 1.0, color: borderColor),
                bottom: BorderSide(
                  width: 1.0,
                  color: borderColor,
                ),
              ),
            ),
            child: CustomTextWidget(
              text: val.toString(),
              isFirstcaptial: false,
              isbold: isTitle,
              textColor: isTitle ? headerTextColor : dataTextColor,
            ),
          );
        }).toList(),
      ),
    );
  }
}
