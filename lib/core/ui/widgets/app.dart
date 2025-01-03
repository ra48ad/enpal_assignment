import 'package:enpal_assignment/core/data/repositories/slot_repository.dart';
import 'package:enpal_assignment/core/ui/design_system/app_theme.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/blocs/book_appointment/book_appointment_bloc.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/blocs/current_appointment/current_appointment_bloc.dart';
import 'package:enpal_assignment/core/ui/blocs/cancel_appointment/cancel_appointment_bloc.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/blocs/search_appointment/search_appointment_bloc.dart';
import 'package:enpal_assignment/features/appointment_management/ui/bloc/list_appointments/list_appointments_bloc.dart';
import 'package:enpal_assignment/features/home/ui/pages/home_page.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/pages/book_appointment_page.dart';
import 'package:enpal_assignment/features/appointment_management/ui/pages/manage_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required SlotRepository slotRepository,
  }) : _slotRepository = slotRepository;

  final SlotRepository _slotRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appointment Booking',
      theme: AppTheme.light,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/book': (context) => BookAppointmentPage(
              bookAppointmentBloc: BookAppointmentBloc(_slotRepository),
              searchAppointmentBloc: SearchAppointmentBloc(_slotRepository),
              currentAppointmentBloc: CurrentAppointmentBloc(),
              cancelAppointmentBloc: CancelAppointmentBloc(_slotRepository),
            ),
        '/manage': (context) => ManageAppointmentsPage(
              listAppointmentsBloc: ListAppointmentsBloc(_slotRepository),
              cancelAppointmentBloc: CancelAppointmentBloc(
                _slotRepository,
              ),
            ),
      },
    );
  }
}
