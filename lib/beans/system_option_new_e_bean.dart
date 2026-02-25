
/// 生料相关信息页面数据类
class SystemOptionBean5{
  // 入窑提升机
  double ruyao_kw;
  double ruyao_product;

  //皮带输送机
  double pidai_kw;
  double pidai_product;

  SystemOptionBean5(
      this.ruyao_kw,
      this.ruyao_product,
      this.pidai_kw,
      this.pidai_product,);

  @override
  String toString() {
    return 'SystemOptionBean5{ ruyao_kw: $ruyao_kw, '
        'ruyao_product: $ruyao_product,'
        ' pidai_kw: $pidai_kw,'
        ' pidai_product: $pidai_product }';
  }
}