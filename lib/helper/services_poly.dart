
import 'package:arif_app/helper/api.dart';
import 'package:arif_app/model/m_poly.dart';
import 'package:dio/dio.dart';


class ServicesPoly {
  Future<List<Poly>> listData() async {
    final Response response = await Api().get('poly');
    final List data = response.data as List;
    List<Poly> result = data.map((json) => Poly.fromJson(json)).toList();
    return result;
  }




}