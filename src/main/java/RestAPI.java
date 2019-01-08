
import org.eclipse.jetty.server.Server;
import java.io.IOException;



public class RestAPI {

    public static void main(String[] args){

        Server jettyServer = new Server(8082);


        try {

            jettyServer.setHandler(new HelloHandler());
            jettyServer.start();
            jettyServer.join();


        } catch (IOException e) {
            System.out.println("Error");
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


}



