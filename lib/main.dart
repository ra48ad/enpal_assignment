import 'package:enpal_assignment/core/config/api_config.dart';
import 'package:enpal_assignment/core/data/api/.generated/slot_api.swagger.dart';
import 'package:enpal_assignment/core/data/repositories/slot_repository_remote.dart';
import 'package:flutter/material.dart';
import 'package:enpal_assignment/core/ui/widgets/app.dart';

void main() {
  final slotRepository = SlotRepositoryRemote(
    slotApi: SlotApi.create(
      baseUrl: Uri.parse(apiRootUrl),
    ),
  );

  runApp(
    App(
      slotRepository: slotRepository,
    ),
  );
}
