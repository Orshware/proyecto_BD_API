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

    const response = await data_base.query('INSERT INTO CLIENTE(nombre, ap_Pat, ap_Mat, razon_Social, email) VALUES ($1, $2, $3, $4, $5);', [cliente.nombre, cliente.ap_Pat, cliente.ap_Mat, cliente.razon_Social, cliente.email]);

    res.json(response);
});

export default router;