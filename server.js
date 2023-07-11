import Hapi from '@hapi/hapi'
import routes from './routes.js';

const init = async () => {
    const server = Hapi.server({
        port: 5000,
        host: 'http://192.168.0.164',
    });

    server.route(routes)


    await server.start();
    console.log(`Server berjalan pada ${server.info.uri}`);
};

init();