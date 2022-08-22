import { Request, Response } from "express";
import {connect} from '../database';
import { Airport } from "../Interface/Airport.interface";


export async function  getAirportsDetail(req:Request, res: Response): Promise<Response>  {
    const conn =  await connect();
    const aiports = await conn.query(`Select  ap.Id, ap.AirportCode, ap.Name as AirportName,
                                        lo.ProvinceOrState,
                                        lo.Country,
                                        apo.Name as AirportOperatorName,
                                        ap.PriorityOrder
                                    FROM airport ap
                                    INNER JOIN location lo on ap.LocationId = lo.Id
                                    INNER JOIN airportoperator apo on ap.AirportOperatorId = apo.Id
                                    order by ap.PriorityOrder asc`);

    return res.json(aiports[0]);
}

export async function updateAirport(req:Request, res: Response) {
    const conn = await connect();
    const id = req.params.airportId;
    const updateAirport:Airport = req.body;
    await conn.query('Update airport set ? where id = ?', [updateAirport,id]);
    return res.json({
        message:"Airport Updated"
    });
}

export async function  updatePriorityAirportByList(req:Request, res: Response) {
    const conn = await connect();
    const updateListAirport:Airport[] = req.body;

    updateListAirport.forEach(async Item => {
        await conn.query('Update airport set PriorityOrder = ? where id = ?', [Item.PriorityOrder,Item.Id]);
    });

    return res.json({
        message:"Priorities Airports Updated"
    });
}

