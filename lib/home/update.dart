import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:package_info/package_info.dart';
//import 'package:simple_permissions/simple_permissions.dart';
//import 'package:flutter_downloader/flutter_downloader.dart';
//import 'package:path_provider/path_provider.dart';

class CheckUpdates {
  final String downLoadUrl = 'https://www.gwm.haval.com';
  final TargetPlatform defaultTargetPlatform = TargetPlatform.android;

  Future<bool> checkNewVersion() async {
    try {
      final res = await http.get(downLoadUrl + '/version.json');
      if (res.statusCode == 200) {
        final Map<String, dynamic> body = json.decode(res.body);
        if (defaultTargetPlatform == TargetPlatform.android) {
          final packageInfo = await PackageInfo.fromPlatform();
          final newVersion = body['android'];
          return (newVersion.compareTo(packageInfo.version) == 1);
        }
      }
    } catch (e) {
      return false;
    }
    return false;
  }

  //是否有权限
//  Future<bool> checkPermission() async {
//    bool res = await SimplePermissions.checkPermission(
//        Permission.WriteExternalStorage);
//    return res;
//  }
//
//  //打开权限
//  Future<PermissionStatus> requestPermission() async {
//    return SimplePermissions.requestPermission(Permission.WriteExternalStorage);
//  }

  // 获取安装地址
//  Future<String> get _apkLocalPath async {
//    final directory = await getExternalStorageDirectory();
//    return directory.path;
//  }
// 下载
//  Future<void> executeDownload() async {
//    final path = await _apkLocalPath;
//    //下载
//    final taskId = await FlutterDownloader.enqueue(
//        url: downLoadUrl + '/app-release.apk',
//        savedDir: path,
//        showNotification: true,
//        openFileFromNotification: true);
//    FlutterDownloader.registerCallback((id, status, progress) {
//      // 当下载完成时，调用安装
//      if (taskId == id && status == DownloadTaskStatus.complete) {
//        //_installApk();
//      }
//    });
//  }
// 安装
//  Future<Null> _installApk() async {
//    // XXXXX为项目名
//    const platform = const MethodChannel(XXXXX);
//    try {
//      final path = await _apkLocalPath;
//      // 调用app地址
//      await platform.invokeMethod('install', {'path': path + '/app-release.apk'});
//    } on PlatformException catch (_) {}
//  }
}

