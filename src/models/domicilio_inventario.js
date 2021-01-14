class Domicilio_Inventario {
  constructor(id_Domicilio_Inventario, id_Inventario, id_Domicilio) {
    this.id_Domicilio_Inventario = id_Domicilio_Inventario;
    this.id_Inventario = id_Inventario;
    this.id_Domicilio = id_Domicilio;
  }

  toJson() {
    return {
      'id_Domicilio_Inventario': this.id_Domicilio_Inventario,
      'id_Inventario': this.id_Inventario,
      'id_Domicilio': this.id_Domicilio
    };
  }
}