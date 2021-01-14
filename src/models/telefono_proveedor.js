class Telefono_Proveedor {
  constructor(id_Telefono_Proveedor, id_Telefono, id_Proveedor) {
    this.id_Telefono_Proveedor = id_Telefono_Proveedor;
    this.id_Telefono = id_Telefono;
    this.id_Proveedor = id_Proveedor;
  }

  toJson() {
    return {
      'id_Telefono_Proveedor': this.id_Telefono_Proveedor,
      'id_Telefono': this.id_Telefono,
      'id_Proveedor': this.id_Proveedor
    };
  }
}