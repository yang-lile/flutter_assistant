import 'package:flutter/material.dart';
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

final routes = <String, Widget Function(BuildContext)>{
  '/': (context) => MyHomePage(
        title: ModalRoute.of(context)!.settings.arguments! as String,
      ),
  '/introduction': (context) => const Introduction(),
  '/safe_area': (context) => const SafeAreaDemo(),
  '/expanded': (context) => const ExpandedDemo(),
  '/wrap': (context) => const WrapDemo(),
  '/animated_container': (context) => const AnimatedContainerDemo(),
  '/opacity': (context) => const OpacityDemo(),
  '/future_builder': (context) => const FutureBuilderDemo(),
  '/fade_transition': (context) => const FadeTransitionDemo(),
  '/floating_action_button': (context) => const FloatingActionButtonDemo(),
  '/page_view': (context) => const PageViewDemo(),
  '/table': (context) => const TableDemo(),
  '/sliver_app_bar': (context) => const SliverAppBarDemo(),
  '/sliver_list_and_sliver_grid': (context) =>
      const SliverListAndSliverGridDemo(),
  '/fade_in_image': (context) => const FadeInImageDemo(),
  '/stream_builder': (context) => const StreamBuilderDemo(),
  '/inherited_model': (context) => const InheritedModelDemo(),
  '/clip_r_rect': (context) => const ClipRRectDemo(),
  '/hero': (context) => const HeroDemo(),
  '/custom_paint': (context) => const CustomPaintDemo(),
  '/tooltip': (context) => const TooltipDemo(),
  '/fitted_box': (context) => const FittedBoxDemo(),
  '/layout_builder': (context) => const LayoutBuilderDemo(),
  '/absorb_pointer': (context) => const AbsorbPointerDemo(),
  '/transform': (context) => const TransformDemo(),
  '/backdrop_filter': (context) => const BackdropFilterDemo(),
  '/align': (context) => const AlignDemo(),
  '/positioned': (context) => const PositionedDemo(),
  '/animated_builder': (context) => const AnimatedBuilderDemo(),
  '/dismissible': (context) => const DismissibleDemo(),
  '/sized_box': (context) => const SizedBoxDemo(),
  '/value_listenable_builder': (context) => const ValueListenableBuilderDemo(),
  '/draggable': (context) => const DraggableDemo(),
  '/animated_list': (context) => const AnimatedListDemo(),
  '/flexible': (context) => const FlexibleDemo(),
  '/media_query': (context) => const MediaQueryDemo(),
  '/spacer': (context) => const SpacerDemo(),
  '/inherited_widget': (context) => const InheritedWidgetDemo(),
  '/animated_icon': (context) => const AnimatedIconDemo(),
  '/aspect_ratio': (context) => const AspectRatioDemo(),
  '/limited_box': (context) => const LimitedBoxDemo(),
  '/placeholder': (context) => const PlaceholderDemo(),
  '/rich_text': (context) => const RichTextDemo(),
  '/reorderable_list_view': (context) => const ReorderableListViewDemo(),
  '/animated_switcher': (context) => const AnimatedSwitcherDemo(),
  '/animated_positioned': (context) => const AnimatedPositionedDemo(),
  '/animated_padding': (context) => const AnimatedPaddingDemo(),
  '/indexed_stack': (context) => const IndexedStackDemo(),
  '/semantics': (context) => const SemanticsDemo(),
  '/constrained_box': (context) => ConstrainedBoxDemo(),
  '/stack': (context) => const StackDemo(),
  '/animated_opacity': (context) => const AnimatedOpacityDemo(),
  '/fractionally_sized_box': (context) => const FractionallySizedBoxDemo(),
  '/list_view': (context) => const ListViewDemo(),
  '/list_tile': (context) => const ListTileDemo(),
  '/container': (context) => const ContainerDemo(),
  '/selectable_text': (context) => const SelectableTextDemo(),
  '/data_table': (context) => const DataTableDemo(),
  '/slider': (context) => const SliderDemo(),
  '/alert_dialog': (context) => const AlertDialogDemo(),
  '/about_dialog': (context) => const AboutDialogDemo(),
};
