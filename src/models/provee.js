class Provee {
  constructor(id_Provee, id_Proveedor, id_Producto, cant_Compra, precio_Compra, fecha_Compra) {
    this.id_Provee = id_Provee;
    this.id_Proveedor = id_Proveedor;
    this.id_Producto = id_Producto;
    this.cant_Compra = cant_Compra;
    this.precio_Compra = precio_Compra;
    this.fecha_Compra = fecha_Compra;
  }

  toJson() {
    return {
      'id_Provee': this.id_Provee,
      'id_Proveedor': this.id_Proveedor,
      'id_Producto': this.id_Producto,
      'cant_Compra': this.cant_Compra,
      'precio_Compra': this.precio_Compra,
      'fecha_Compra': this.fecha_Compra
    };
  }
}