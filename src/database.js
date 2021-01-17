import { Pool } from 'pg';

const pool = new Pool({
    host: 'localhost',
    user: 'papeleria',
    database: 'papeleria_system_test',
    port: '5432',
    password: 'papeleria1234'
});

export default pool;