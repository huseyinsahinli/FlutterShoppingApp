part of '../onboard_view.dart';

class _StartFabButton extends StatelessWidget {
  const _StartFabButton({Key? key, required this.isLastPage, this.onPressed})
      : super(key: key);
  final String _start = 'Start';
  final String _end = 'Next';

  final VoidCallback? onPressed;

  final bool isLastPage;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: cMainColor,
      elevation: 4,
      child: Text(
        isLastPage ? _start : _end,
        style: cFabButtonTextStyle,
      ),
      onPressed: onPressed,
    );
  }
}
