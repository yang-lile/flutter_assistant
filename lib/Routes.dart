import 'package:flutter_assistant/home_page.dart';
import 'package:flutter_assistant/pages/about_dialog_demo.dart';
import 'package:flutter_assistant/pages/absorb_pointer_demo.dart';
import 'package:flutter_assistant/pages/alert_dialog_demo.dart';
import 'package:flutter_assistant/pages/align_demo.dart';
import 'package:flutter_assistant/pages/animated_builder_demo.dart';
import 'package:flutter_assistant/pages/animated_container_demo.dart';
import 'package:flutter_assistant/pages/animated_icon_demo.dart';
import 'package:flutter_assistant/pages/animated_list_demo.dart';
import 'package:flutter_assistant/pages/animated_opacity_demo.dart';
import 'package:flutter_assistant/pages/animated_padding_demo.dart';
import 'package:flutter_assistant/pages/animated_positioned_demo.dart';
import 'package:flutter_assistant/pages/animated_switcher_demo.dart';
import 'package:flutter_assistant/pages/aspect_ratio_demo.dart';
import 'package:flutter_assistant/pages/backdrop_filter_demo.dart';
import 'package:flutter_assistant/pages/clip_r_rect_demo.dart';
import 'package:flutter_assistant/pages/constrained_box_demo.dart';
import 'package:flutter_assistant/pages/container_demo.dart';
import 'package:flutter_assistant/pages/custom_paint_demo.dart';
import 'package:flutter_assistant/pages/data_table_demo.dart';
import 'package:flutter_assistant/pages/dismissible_demo.dart';
import 'package:flutter_assistant/pages/draggable_demo.dart';
import 'package:flutter_assistant/pages/expanded_demo.dart';
import 'package:flutter_assistant/pages/fade_in_image_demo.dart';
import 'package:flutter_assistant/pages/fade_transition_demo.dart';
import 'package:flutter_assistant/pages/fitted_box_demo.dart';
import 'package:flutter_assistant/pages/flexible_demo.dart';
import 'package:flutter_assistant/pages/floating_action_button_demo.dart';
import 'package:flutter_assistant/pages/fractionally_sized_box_demo.dart';
import 'package:flutter_assistant/pages/future_builder_demo.dart';
import 'package:flutter_assistant/pages/hero_demo.dart';
import 'package:flutter_assistant/pages/indexed_stack_demo.dart';
import 'package:flutter_assistant/pages/inherited_model_demo.dart';
import 'package:flutter_assistant/pages/inherited_widget_demo.dart';
import 'package:flutter_assistant/pages/introduction.dart';
import 'package:flutter_assistant/pages/layout_builder_demo.dart';
import 'package:flutter_assistant/pages/limited_box_demo.dart';
import 'package:flutter_assistant/pages/list_tile_demo.dart';
import 'package:flutter_assistant/pages/list_view_demo.dart';
import 'package:flutter_assistant/pages/media_query_demo.dart';
import 'package:flutter_assistant/pages/opacity_demo.dart';
import 'package:flutter_assistant/pages/page_view_demo.dart';
import 'package:flutter_assistant/pages/placeholder_demo.dart';
import 'package:flutter_assistant/pages/positioned_demo.dart';
import 'package:flutter_assistant/pages/reorderable_list_view_demo.dart';
import 'package:flutter_assistant/pages/rich_text_demo.dart';
import 'package:flutter_assistant/pages/safe_area_demo.dart';
import 'package:flutter_assistant/pages/selectable_text_demo.dart';
import 'package:flutter_assistant/pages/semantics_demo.dart';
import 'package:flutter_assistant/pages/sized_box_demo.dart';
import 'package:flutter_assistant/pages/slider_demo.dart';
import 'package:flutter_assistant/pages/sliver_app_bar_demo.dart';
import 'package:flutter_assistant/pages/sliver_list_and_sliver_grid_demo.dart';
import 'package:flutter_assistant/pages/spacer_demo.dart';
import 'package:flutter_assistant/pages/stack_demo.dart';
import 'package:flutter_assistant/pages/stream_builder_demo.dart';
import 'package:flutter_assistant/pages/table_demo.dart';
import 'package:flutter_assistant/pages/tooltip_demo.dart';
import 'package:flutter_assistant/pages/transform_demo.dart';
import 'package:flutter_assistant/pages/value_listenable_builder_demo.dart';
import 'package:flutter_assistant/pages/wrap_demo.dart';
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
