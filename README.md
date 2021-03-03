# Eve_One_Widget

用最好的代码实现每一个flutter widget。

## 现已实现控件

1. SafeArea
2. Expanded
3. Wrap
4. AnimatedContainer
5. Opacity
6. FutureBuilder
7. FadeTransition
8. FloatingActionButton
9. PageView
10. Table
11. SliverAppBar
12. SliverListAndSliverGrid
13. FadeInImage
14. StreamBuilder
15. InheritedModel
16. ClipRRect
17. Hero
18. CustomPaint
19. Tooltip
20. FittedBox
21. LayoutBuilder
22. AbsorbPointer
23. Transform
24. BackdropFilter
25. Align
26. Positioned
27. AnimatedBuilder
28. Dismissible
29. SizedBox
30. ValueListenableBuilder
31. Draggable
32. AnimatedList
33. Flexible
34. MediaQuery
35. Spacer
36. InheritedWidget
37. AnimatedIcon
38. AspectRatio
39. LimitedBox
40. Placeholder
41. RichText
42. ReorderableListView
43. AnimatedSwitcher * 
44. AnimatedPositioned
45. AnimatedPadding
46. IndexedStack
47. Semantics
48. ConstrainedBox
49. Stack
50. AnimatedOpacity
51. FractionallySizedBox
52. ListView
53. ListTile
54. Container
55. SelectableText
56. DataTable
57. Slider
58. AlertDialog
59. AboutDialog

## 每次更新需要修改的位置

假设新增控件widget，
1. 需在`lib\pages`里实现，写出逐字稿和翻译
2. 将`img\resource`里的对应图片重命名为该控件的全小写下划线命名，并转移到`assets\images`目录下
3. 在`lib\entity\WidgetModel.dart`的`WidgetNames`内添加控件的全大写下划线命名
4. 复制枚举类型`WidgetNames`到`test\routes_generate.dart`里，运行程序，生成字符串到路由的列表，复制到`lib\Routes.dart`下，
5. 修改`lib\main.dart`里`_MyHomePageState`类里的`subtitlesIndex`子标题属性，注意下标

## 打包注意

1. 设置联网权限

## 待解决问题

1. `lib\pages\SliverAppBarDemo.dart`的图片高度获取的实现

## 风格突变

由于学习了新的使用方法，动画将更加流畅从 `AnimatedPositioned` 开始将使用一些令人舒适的动画效果，当然也伴随着较高成本的学习量，希望您能更上学习节奏

## 备注
安卓打包命令：
```cmd
> flutter build apk --split-per-abi
```