import { Router } from 'express';
import data_base from '../database';

import { Compra } from '../models/compra'

const router = Router();

router.get('/', async (req, res) => {
    const response = await data_base.query('SELECT * FROM COMPRA;');
    res.json(response.rows);
});

router.post('/', async (req, res) => {

    const compra = new Compra(
        null,
        req.body.id_Venta,
        req.body.id_Cliente,
        req.body.codigo_Barras
    );

    const response = await data_base.query('INSERT INTO COMPRA(id_Venta, id_Cliente, codigo_Barras) VALUES ($1, $2, $3);', [compra.id_Venta, compra.id_Cliente, compra.codigo_Barras]);

    res.json(response);
});

router.patch('/', async (req, res) => {

    const compra = new Compra(
        null,
        req.body.id_Venta,
        req.body.id_Cliente,
        req.body.codigo_Barras
    );

    const response = await data_base.query('SELECT id_Compra FROM COMPRA WHERE id_Venta = $1 AND id_Cliente = $2 AND codigo_Barras = $3;', [compra.id_Venta, compra.id_Cliente, compra.codigo_Barras]);

    //response.body = domicilio.toJson();

    res.json(response.rows);
});

export default router;