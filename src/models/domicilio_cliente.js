class Domicilio_Cliente {
  constructor(id_Domicilio_Cliente, id_Cliente, id_Domicilio) {
    this.id_Domicilio_Cliente = id_Domicilio_Cliente;
    this.id_Cliente = id_Cliente;
    this.id_Domicilio = id_Domicilio;
  }

  toJson() {
    return {
      'id_Domicilio_Cliente': this.id_Domicilio_Cliente,
      'id_Cliente': this.id_Cliente,
      'id_Domicilio': this.id_Domicilio
    };
  }
}