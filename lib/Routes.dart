import 'package:flutter_assistant/HomePage.dart';
import 'package:flutter_assistant/pages/AboutDialogDemo.dart';
import 'package:flutter_assistant/pages/AbsorbPointerDemo.dart';
import 'package:flutter_assistant/pages/AlertDialogDemo.dart';
import 'package:flutter_assistant/pages/AlignDemo.dart';
import 'package:flutter_assistant/pages/AnimatedBuilderDemo.dart';
import 'package:flutter_assistant/pages/AnimatedContainerDemo.dart';
import 'package:flutter_assistant/pages/AnimatedIconDemo.dart';
import 'package:flutter_assistant/pages/AnimatedListDemo.dart';
import 'package:flutter_assistant/pages/AnimatedOpacityDemo.dart';
import 'package:flutter_assistant/pages/AnimatedPaddingDemo.dart';
import 'package:flutter_assistant/pages/AnimatedPositionedDemo.dart';
import 'package:flutter_assistant/pages/AnimatedSwitcherDemo.dart';
import 'package:flutter_assistant/pages/AspectRatioDemo.dart';
import 'package:flutter_assistant/pages/BackdropFilterDemo.dart';
import 'package:flutter_assistant/pages/ClipRRectDemo.dart';
import 'package:flutter_assistant/pages/ConstrainedBoxDemo.dart';
import 'package:flutter_assistant/pages/ContainerDemo.dart';
import 'package:flutter_assistant/pages/CustomPaintDemo.dart';
import 'package:flutter_assistant/pages/DataTableDemo.dart';
import 'package:flutter_assistant/pages/DismissibleDemo.dart';
import 'package:flutter_assistant/pages/DraggableDemo.dart';
import 'package:flutter_assistant/pages/ExpandedDemo.dart';
import 'package:flutter_assistant/pages/FadeInImageDemo.dart';
import 'package:flutter_assistant/pages/FadeTransitionDemo.dart';
import 'package:flutter_assistant/pages/FittedBoxDemo.dart';
import 'package:flutter_assistant/pages/FlexibleDemo.dart';
import 'package:flutter_assistant/pages/FloatingActionButtonDemo.dart';
import 'package:flutter_assistant/pages/FractionallySizedBoxDemo.dart';
import 'package:flutter_assistant/pages/FutureBuilderDemo.dart';
import 'package:flutter_assistant/pages/HeroDemo.dart';
import 'package:flutter_assistant/pages/IndexedStackDemo.dart';
import 'package:flutter_assistant/pages/InheritedModelDemo.dart';
import 'package:flutter_assistant/pages/InheritedWidgetDemo.dart';
import 'package:flutter_assistant/pages/Introduction.dart';
import 'package:flutter_assistant/pages/LayoutBuilderDemo.dart';
import 'package:flutter_assistant/pages/LimitedBoxDemo.dart';
import 'package:flutter_assistant/pages/ListTileDemo.dart';
import 'package:flutter_assistant/pages/ListViewDemo.dart';
import 'package:flutter_assistant/pages/MediaQueryDemo.dart';
import 'package:flutter_assistant/pages/OpacityDemo.dart';
import 'package:flutter_assistant/pages/PageViewDemo.dart';
import 'package:flutter_assistant/pages/PlaceholderDemo.dart';
import 'package:flutter_assistant/pages/PositionedDemo.dart';
import 'package:flutter_assistant/pages/ReorderableListViewDemo.dart';
import 'package:flutter_assistant/pages/RichTextDemo.dart';
import 'package:flutter_assistant/pages/SafeAreaDemo.dart';
import 'package:flutter_assistant/pages/SelectableTextDemo.dart';
import 'package:flutter_assistant/pages/SemanticsDemo.dart';
import 'package:flutter_assistant/pages/SizedBoxDemo.dart';
import 'package:flutter_assistant/pages/SliderDemo.dart';
import 'package:flutter_assistant/pages/SliverAppBarDemo.dart';
import 'package:flutter_assistant/pages/SliverListAndSliverGridDemo.dart';
import 'package:flutter_assistant/pages/SpacerDemo.dart';
import 'package:flutter_assistant/pages/StackDemo.dart';
import 'package:flutter_assistant/pages/StreamBuilderDemo.dart';
import 'package:flutter_assistant/pages/TableDemo.dart';
import 'package:flutter_assistant/pages/TooltipDemo.dart';
import 'package:flutter_assistant/pages/TransformDemo.dart';
import 'package:flutter_assistant/pages/ValueListenableBuilderDemo.dart';
import 'package:flutter_assistant/pages/WrapDemo.dart';
import 'package:flutter/material.dart';

final routes = {
  "/": (context) => MyHomePage(title: 'Flutter Assistant'),
  "/introduction": (context) => Introduction(),
  "/safe_area": (context) => SafeAreaDemo(),
  "/expanded": (context) => ExpandedDemo(),
  "/wrap": (context) => WrapDemo(),
  "/animated_container": (context) => AnimatedContainerDemo(),
  "/opacity": (context) => OpacityDemo(),
  "/future_builder": (context) => FutureBuilderDemo(),
  "/fade_transition": (context) => FadeTransitionDemo(),
  "/floating_action_button": (context) => FloatingActionButtonDemo(),
  "/page_view": (context) => PageViewDemo(),
  "/table": (context) => TableDemo(),
  "/sliver_app_bar": (context) => SliverAppBarDemo(),
  "/sliver_list_and_sliver_grid": (context) => SliverListAndSliverGridDemo(),
  "/fade_in_image": (context) => FadeInImageDemo(),
  "/stream_builder": (context) => StreamBuilderDemo(),
  "/inherited_model": (context) => InheritedModelDemo(),
  "/clip_r_rect": (context) => ClipRRectDemo(),
  "/hero": (context) => HeroDemo(),
  "/custom_paint": (context) => CustomPaintDemo(),
  "/tooltip": (context) => TooltipDemo(),
  "/fitted_box": (context) => FittedBoxDemo(),
  "/layout_builder": (context) => LayoutBuilderDemo(),
  "/absorb_pointer": (context) => AbsorbPointerDemo(),
  "/transform": (context) => TransformDemo(),
  "/backdrop_filter": (context) => BackdropFilterDemo(),
  "/align": (context) => AlignDemo(),
  "/positioned": (context) => PositionedDemo(),
  "/animated_builder": (context) => AnimatedBuilderDemo(),
  "/dismissible": (context) => DismissibleDemo(),
  "/sized_box": (context) => SizedBoxDemo(),
  "/value_listenable_builder": (context) => ValueListenableBuilderDemo(),
  "/draggable": (context) => DraggableDemo(),
  "/animated_list": (context) => AnimatedListDemo(),
  "/flexible": (context) => FlexibleDemo(),
  "/media_query": (context) => MediaQueryDemo(),
  "/spacer": (context) => SpacerDemo(),
  "/inherited_widget": (context) => InheritedWidgetDemo(),
  "/animated_icon": (context) => AnimatedIconDemo(),
  "/aspect_ratio": (context) => AspectRatioDemo(),
  "/limited_box": (context) => LimitedBoxDemo(),
  "/placeholder": (context) => PlaceholderDemo(),
  "/rich_text": (context) => RichTextDemo(),
  "/reorderable_list_view": (context) => ReorderableListViewDemo(),
  "/animated_switcher": (context) => AnimatedSwitcherDemo(),
  "/animated_positioned": (context) => AnimatedPositionedDemo(),
  "/animated_padding": (context) => AnimatedPaddingDemo(),
  "/indexed_stack": (context) => IndexedStackDemo(),
  "/semantics": (context) => SemanticsDemo(),
  "/constrained_box": (context) => ConstrainedBoxDemo(),
  "/stack": (context) => StackDemo(),
  "/animated_opacity": (context) => AnimatedOpacityDemo(),
  "/fractionally_sized_box": (context) => FractionallySizedBoxDemo(),
  "/list_view": (context) => ListViewDemo(),
  "/list_tile": (context) => ListTileDemo(),
  "/container": (context) => ContainerDemo(),
  "/selectable_text": (context) => SelectableTextDemo(),
  "/data_table": (context) => DataTableDemo(),
  "/slider": (context) => SliderDemo(),
  "/alert_dialog": (context) => AlertDialogDemo(),
  "/about_dialog": (context) => AboutDialogDemo(),
};

//固定写法
Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name!];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
  return null;
}
