part of '../onboard_view.dart';

class _StartFabButton extends StatelessWidget {
  const _StartFabButton({Key? key, required this.isLastPage, this.onPressed})
      : super(key: key);

  final VoidCallback? onPressed;

  final bool isLastPage;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: cMainColor,
      elevation: 4,
      onPressed: onPressed,
      child: Text(
        isLastPage ? Strings.start : Strings.next,
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: cWhiteColor,
            ),
      ),
    );
  }
}
