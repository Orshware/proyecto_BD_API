class Domicilio {
  constructor(id_Domicilio, estado, colonia, calle, numero, cp) {
    this.id_Domicilio = id_Domicilio;
    this.estado = estado;
    this.colonia = colonia;
    this.calle = calle;
    this.numero = numero;
    this.cp = cp;
  }

  toJson() {
    return {
      'id_Domicilio': this.id_Domicilio,
      'estado': this.estado,
      'colonia': this.colonia,
      'calle': this.calle,
      'numero': this.numero,
      'cp': this.cp
    };
  }
}