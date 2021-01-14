class Cliente {
  constructor(id_Cliente, nombre, ap_Pat, ap_Mat, razon_Social, email) {
    this.id_Cliente = id_Cliente;
    this.nombre = nombre;
    this.ap_Pat = ap_Pat;
    this.ap_Mat = ap_Mat;
    this.razon_Social = razon_Social;
    this.email = email;
  }

  toJson() {
    return {
      'id_Cliente': this.id_Cliente,
      'nombre': this.nombre,
      'ap_Pat': this.ap_Pat,
      'ap_Mat': this.ap_Mat,
      'razon_Social': this.razon_Social,
      'email': this.email
    };
  }
}