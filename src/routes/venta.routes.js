import { Router } from 'express';
import data_base from '../database';

import { Venta } from '../models/venta';

const router = Router();

router.get('/', async (req, res) => {
    const response = await data_base.query('SELECT * FROM VENTA;');
    res.json(response.rows);
});

router.post('/', async (req, res) => {

    const venta = new Venta(
        null, 
        req.body.cant_Art_Total, 
        req.body.precio_Total, 
        req.body.fecha_Venta
    );

    const response = await data_base.query('INSERT INTO VENTA(cant_Art_Total, precio_Total, fecha_Venta) VALUES ($1, $2, $3);', [venta.cant_Art_Total, venta.precio_Total, venta.fecha_Venta]);

    res.json(response);
});

router.patch('/', async (req, res) => {

    const venta = new Venta(
        null, 
        req.body.cant_Art_Total, 
        req.body.precio_Total, 
        req.body.fecha_Venta
    );

    const response = await data_base.query('SELECT id_Venta FROM VENTA WHERE cant_Art_Total = $1 AND precio_Total = $2 AND fecha_Venta = $3;', [venta.cant_Art_Total, venta.precio_Total, venta.fecha_Venta]);

    //response.body = domicilio.toJson();

    res.json(response.rows);
});

export default router;