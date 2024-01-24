import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_glass/common/custom_scaffold.dart';
import 'package:flutter_glass/pages/widgets/blurred_main_container.dart';
import 'package:flutter_glass/server/api.dart';
import 'package:flutter_glass/services/dio_service.dart';

class HomePage extends StatefulWidget {
  static const String id = "/home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();

  void getWeather() async {
    String? result = await DioService.get(
      context,
      ApiServer.apiGetAllData,
      ApiServer.paramGetWeather(
        textEditingController.text.trim(),
      ),
    );
    log(result.toString());
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Scaffold(
          appBar: AppBar(
            title: TextField(
              controller: textEditingController,
              onSubmitted: (value) {
                getWeather();
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(255, 255, 255, 0.1),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                      width: 1,
                    )),
                focusColor: const Color.fromRGBO(255, 255, 255, 0.8),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                      width: 1,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                      width: 1,
                    )),
                enabled: true,
              ),
            ),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: 30,
            itemBuilder: (_, index) {
              return const BlurredMainContainer(
                name: "Hello",
              );
            },
          )),
    );
  }
}
