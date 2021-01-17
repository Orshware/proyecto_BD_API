export class Compra {
  constructor(id_Compra, id_Venta, id_Cliente, id_Producto) {
    this.id_Compra = id_Compra;
    this.id_Venta = id_Venta;
    this.id_Cliente = id_Cliente;
    this.id_Producto = id_Producto;
  }

  toJson() {
    return {
      'id_Compra': this.id_Compra,
      'id_Venta': this.id_Venta,
      'id_Cliente': this.id_Cliente,
      'id_Producto': this.id_Producto
    };
  }
}