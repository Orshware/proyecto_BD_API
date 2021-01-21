import { Router } from 'express';
import { Cliente } from '../models/cliente';
import data_base from '../database';

const router = Router();

router.get('/', async (req, res) => {
    const response = await data_base.query('SELECT * FROM CLIENTE;');
    res.json(response.rows);
});

router.post('/', async (req, res) => {

    const cliente = new Cliente(
        null, 
        req.body.nombre, 
        req.body.ap_pat, 
        req.body.ap_mat, 
        req.body.razon_social, 
        req.body.email
    );

    const response = await data_base.query('INSERT INTO CLIENTE(nombre, ap_pat, ap_mat, razon_social, email) VALUES ($1, $2, $3, $4, $5);', [cliente.nombre, cliente.ap_pat, cliente.ap_mat, cliente.razon_social, cliente.email]);

    res.json(response);
});

router.patch('/', async (req, res) => {

    const cliente = new Cliente(
        null, 
        req.body.nombre, 
        req.body.ap_pat, 
        req.body.ap_mat, 
        req.body.razon_social, 
        req.body.email
    );

    const response = await data_base.query('SELECT id_Cliente FROM CLIENTE WHERE nombre = $1 AND ap_pat = $2 AND ap_mat = $3 AND email = $4;', [cliente.nombre, cliente.ap_pat, cliente.ap_mat, cliente.email]);

    //response.body = domicilio.toJson();

    res.json(response.rows);
});

export default router;