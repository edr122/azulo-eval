import {Request, Response} from 'express';

export function indexWelcome  (rep:Request, res: Response): Response{

    return res.json('Welcome to my API Airport - Azulapp');

}