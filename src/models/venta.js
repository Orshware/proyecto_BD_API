export class Venta {
    constructor(id_Venta, cant_Art_Total, precio_Total, fecha_Venta) {
      this.id_Venta = id_Venta;
      this.cant_Art_Total = cant_Art_Total;
      this.precio_Total = precio_Total;
      this.fecha_Venta = fecha_Venta;
    }
  
    toJson() {
      return {
        'id_Venta': this.id_Venta,
        'cant_Art_Total': this.cant_Art_Total,
        'precio_Total': this.precio_Total,
        'fecha_Venta': this.fecha_Venta
      };
    }
  }