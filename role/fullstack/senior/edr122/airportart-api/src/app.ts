import express, {Application} from 'express';
import morgan from 'morgan';
import cors from 'cors';
import IndexRouters from './routers/index.routes'
import AirportRouters from './routers/aiport.routes';

export class App {
    private app:Application;

    constructor(private port?: number | string){
        this.app = express();
        this.settings();
        this.middlewares();
        this.routes();
    }

    settings(){
        this.app.set('port', this.port || process.env.PORT || 3001);
    }

    middlewares(){
        this.app.use(morgan('dev'));
        this.app.use(cors({origin: '*'}));
        this.app.use(express.json());
    }

    routes(){
        this.app.use(IndexRouters);
        this.app.use('/airports',AirportRouters);
    }

    async listen(){
        await this.app.listen(this.app.get('port'));
        console.log("Server on port: ", this.app.get('port'));
    }

}