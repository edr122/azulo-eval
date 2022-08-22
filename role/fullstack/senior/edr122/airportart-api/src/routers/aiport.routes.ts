import { Router } from "express";
import {getAirportsDetail,updateAirport, updatePriorityAirportByList} from '../controllers/aiport.controller';

const router = Router();

router.route('/')
    .get(getAirportsDetail);

router.route('/:airportId')
    .patch(updateAirport);

router.route('/priorities/all')
    .patch(updatePriorityAirportByList);


export default router; 