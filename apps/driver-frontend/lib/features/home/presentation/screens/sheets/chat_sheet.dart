import 'package:driver_flutter/features/home/domain/repositories/home_repository.dart';
import 'package:driver_flutter/features/home/presentation/blocs/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/entities/order.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_back_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_icon_button.dart';

import 'package:url_launcher/url_launcher_string.dart';

import 'package:flutter_common/features/chat/chat.dart';

class ChatSheet extends StatefulWidget {
  final OrderEntity order;

  const ChatSheet({
    super.key,
    required this.order,
  });

  @override
  State<ChatSheet> createState() => _ChatSheetState();
}

class _ChatSheetState extends State<ChatSheet> {
  String? message;
  TextEditingController textEditingController = TextEditingController();
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        Future.delayed(const Duration(milliseconds: 300), () {
          if (!mounted) return;
          scrollController.animateTo(
            scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        });
      },
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(16),
          color: context.theme.scaffoldBackgroundColor,
          child: SafeArea(
            child: Column(children: [
              Row(
                children: [
                  AppBackButton(
                    onPressed: () => locator<HomeBloc>().add(const HomeEvent.onHideChat()),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      widget.order.riderFullName,
                      style: context.titleMedium,
                    ),
                  ),
                  AppIconButton(
                    icon: Ionicons.call,
                    onPressed: () {
                      launchUrlString("tel://+${widget.order.riderPhoneNumber}");
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    final item = widget.order.chatMessages[index];
                    if (item.isSender) {
                      return ChatItemMe(
                        message: item.message,
                        dateTime: item.createdAt,
                      );
                    } else {
                      return ChatItemOtherPerson(
                        message: item.message,
                        dateTime: item.createdAt,
                      );
                    }
                  },
                  itemCount: widget.order.chatMessages.length,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: textEditingController,
                      onChanged: (value) => setState(() => message = value),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: context.translate.typeAMessage,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  AppIconButton(
                    icon: Ionicons.send,
                    onPressed: message == null
                        ? null
                        : () async {
                            final messageResult = await locator<HomeRepository>().sendMessage(
                              orderId: widget.order.id,
                              message: message!,
                            );
                            messageResult.fold(
                              (l) => context.showSnackBar(message: l.errorMessage),
                              (r) {
                                locator<HomeBloc>().add(HomeEvent.messageSent(message: r));
                                textEditingController.clear();
                                setState(() => message = null);
                              },
                            );
                          },
                  ),
                ],
              )
            ]),
          ),
        );
      },
    );
  }
}
