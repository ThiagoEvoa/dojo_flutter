# AnimatedIcon
<p align="center">
<img src="https://docs.google.com/uc?id=1PfuMxMRoeaJE-NV6XjMYM_Nw3wfj5uOR" height="649" width="300">
<img src="https://docs.google.com/uc?id=1Ysbm_1z81OjrD7VNy7THEIDV3KYFU6DN" height="649" width="300">
</p>

```dart
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: IconButton(
          onPressed: () => _handleOnPressed(),
          iconSize: 50,
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _animationController,
          ),
        ),
      ),
    );
  }
}
```
