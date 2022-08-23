import {createPool} from 'mysql2/promise';


export async function connect(){
    const connection = await createPool({
        host:'localhost',
        port: 33060,
        user:'eder',
        password:'eder',
        database:'azulapp',
        connectionLimit:10
    });

    return connection;
}