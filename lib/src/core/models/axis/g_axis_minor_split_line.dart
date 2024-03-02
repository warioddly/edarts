

import 'package:graphify/src/core/models/interface.dart';
import 'package:graphify/src/core/models/styles/g_line_style.dart';

class GAxisMinorSplitLine extends GraphifyModel {

  const GAxisMinorSplitLine({
    super.show = false,
    this.lineStyle = const GLineStyle(),
  });

  final GLineStyle lineStyle;


  GAxisMinorSplitLine copyWith({
    bool? show,
    GLineStyle? lineStyle,
  }) {
    return GAxisMinorSplitLine(
      show: show ?? this.show,
      lineStyle: lineStyle ?? this.lineStyle,
    );
  }


  @override
  Map<String, dynamic> toJson() {
    return {
      'show': show,
      'lineStyle': lineStyle.toJson(),
    };
  }

}