class Inventario_Producto {
  constructor(id_Inventario_Producto, id_Inventario, id_Producto, descripcion, cantidad, marca) {
    this.id_Inventario_Producto = id_Inventario_Producto;
    this.id_Inventario = id_Inventario;
    this.id_Producto = id_Producto;
    this.descripcion = descripcion;
    this.cantidad = cantidad;
    this.marca = marca;
  }

  toJson() {
    return {
      'id_Inventario_Producto': this.id_Inventario_Producto,
      'id_Inventario': this.id_Inventario,
      'id_Producto': this.id_Producto,
      'descripcion': this.descripcion,
      'cantidad': this.cantidad,
      'marca': this.marca
    };
  }
}