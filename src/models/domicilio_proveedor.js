class Domicilio_Proveedor {
  constructor(id_Domicilio_Proveedor, id_Proveedor, id_Domicilio) {
    this.id_Domicilio_Proveedor = id_Domicilio_Proveedor;
    this.id_Proveedor = id_Proveedor;
    this.id_Domicilio = id_Domicilio;
  }

  toJson() {
    return {
      'id_Domicilio_Proveedor': this.id_Domicilio_Proveedor,
      'id_Proveedor': this.id_Proveedor,
      'id_Domicilio': this.id_Domicilio
    };
  }
}