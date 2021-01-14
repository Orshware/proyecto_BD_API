class Proveedor {
  constructor(id_Proveedor, nombre, ap_Pat, ap_Mat, razon_Social) {
    this.id_Proveedor = id_Proveedor;
    this.nombre = nombre;
    this.ap_Pat = ap_Pat;
    this.ap_Mat = ap_Mat;
    this.razon_Social = razon_Social;
  }

  toJson() {
    return {
      'id_Proveedor': this.id_Proveedor,
      'nombre': this.nombre,
      'ap_Pat': this.ap_Pat,
      'ap_Mat': this.ap_Mat,
      'razon_Social': this.razon_Social
    };
  }
}