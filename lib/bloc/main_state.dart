
class MainState{

  int selectedIndex;
  bool isExtended;

  MainState({this.selectedIndex, this.isExtended});

  ///初始化方法,基础变量也需要赋初值,不然会报空异常
  MainState init() {
    return MainState()
      ..selectedIndex = 0
      ..isExtended = false;
  }


  ///clone方法,此方法实现参考fish_redux的clone方法
  ///也是对官方Flutter Login Tutorial这个demo中copyWith方法的一个优化
  ///Flutter Login Tutorial（https://bloclibrary.dev/#/flutterlogintutorial）
  MainState clone() {
    return MainState()
      ..selectedIndex = selectedIndex
      ..isExtended = isExtended;
  }

}