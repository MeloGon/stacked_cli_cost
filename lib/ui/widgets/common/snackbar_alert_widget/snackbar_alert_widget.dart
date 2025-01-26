import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:stacked/stacked.dart';

import 'snackbar_alert_widget_model.dart';

class SnackbarAlertWidget extends StackedView<SnackbarAlertWidgetModel> {
  const SnackbarAlertWidget({super.key});

  @override
  Widget builder(
    BuildContext context,
    SnackbarAlertWidgetModel viewModel,
    Widget? child,
  ) {
    final theme = ShadTheme.of(context);

    return ShadButton.outline(
      child: const Text('Show Toast'),
      onPressed: () {
        ShadToaster.of(context).show(
          ShadToast.destructive(
            title: const Text('Uh oh! Algo ocurrió'),
            description: const Text(
                'Hay algunos campos que no has llenado para continuar'),
            action: ShadButton.destructive(
              child: const Text('Intentalo de nuevo'),
              decoration: ShadDecoration(
                border: ShadBorder.all(
                  color: theme.colorScheme.destructiveForeground,
                ),
              ),
              onPressed: () => ShadToaster.of(context).hide(),
            ),
          ),
        );
      },
    );
  }

  @override
  SnackbarAlertWidgetModel viewModelBuilder(
    BuildContext context,
  ) =>
      SnackbarAlertWidgetModel();
}
