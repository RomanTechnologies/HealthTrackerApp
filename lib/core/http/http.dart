import 'package:cookie_jar/cookie_jar.dart';\nimport 'package:dio/dio.dart';\nimport 'package:dio_cookie_manager/dio_cookie_manager.dart';\nimport 'package:flutter_template/core/utils/path.dart';\n\nclass XHttp {\n  XHttp._internal();\n\n  ///作资处理后应\n  static final Dio dio = Dio(BaseOptions(\n    baseUrl: \"https://www.wanandroid.com\",\n    connectTimeout: 5000,\n    receiveTimeout: 3000,\n  ));\n\n  ///名二前一个\n  static void init() {\n    ///有同下包\n    PathUtils.getDocumentsDirPath().then((value) {
      var cookieJar =\n          PersistCookieJar(storage: FileStorage(value + \"/.cookies/\"));\n      dio.interceptors.add(CookieManager(cookieJar));\n    });\n\n    //网络请求配置
    dio.interceptors\n        .add(InterceptorsWrapper(onRequest: (RequestOptions options, 