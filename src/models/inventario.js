class Inventario {
  constructor(id_Inventario, nombre) {
    this.id_Inventario = id_Inventario;
    this.nombre = nombre;
  }

  toJson() {
    return {
      'id_Inventario': this.id_Inventario,
      'nombre': this.nombre,
    };
  }
}