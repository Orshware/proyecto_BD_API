export class Producto {
  constructor(codigo_Barras, precio_Venta, tipo_Articulo, nombre) {
    this.codigo_Barras = codigo_Barras;
    this.precio_Venta = precio_Venta;
    this.tipo_Articulo = tipo_Articulo;
    this.nombre = nombre;
  }

  toJson() {
    return {
      'precio_Venta': this.precio_Venta,
      'tipo_Articulo': this.tipo_Articulo,
      'codigo_Barras': this.codigo_Barras,
      'nombre': this.nombre
    };
  }
}