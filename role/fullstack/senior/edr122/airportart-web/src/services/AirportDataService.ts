import http from "../http-common";

class AirportDataService {
    getAll(){
        return http.get("/airports");
    }
}


export default new AirportDataService();