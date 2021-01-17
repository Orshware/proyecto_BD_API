export class Producto {
  constructor(id_Producto, precio_Venta, tipo_Articulo, codigo_Barras, nombre) {
    this.id_Producto = id_Producto;
    this.precio_Venta = precio_Venta;
    this.tipo_Articulo = tipo_Articulo;
    this.codigo_Barras = codigo_Barras;
    this.nombre = nombre;
  }

  toJson() {
    return {
      'id_Producto': this.id_Producto,
      'precio_Venta': this.precio_Venta,
      'tipo_Articulo': this.tipo_Articulo,
      'codigo_Barras': this.codigo_Barras,
      'nombre': this.nombre
    };
  }
}