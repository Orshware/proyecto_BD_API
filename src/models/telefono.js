export class Telefono {
  constructor(id_Telefono, num_Telefono) {
    this.id_Telefono = id_Telefono;
    this.num_Telefono = num_Telefono;
  }

  toJson() {
    return {
      'id_Telefono': this.id_Telefono,
      'num_Telefono': this.num_Telefono
    };
  }
}