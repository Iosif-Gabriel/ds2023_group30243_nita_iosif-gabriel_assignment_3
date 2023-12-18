import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;
import org.json.JSONObject;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.util.Scanner;

public class MessageProducer {
    public static void main(String[] args) throws Exception {
        String queue = "broker";
        ConnectionFactory factory = new ConnectionFactory();

        factory.setPort(5672);
        factory.setUsername("bemqpwbz");
        factory.setPassword("IEyNCTFxxHCLmxUARW2D4bkHdVB7SzxZ");
        factory.setVirtualHost("bemqpwbz");
        factory.setUri("amqps://bemqpwbz:IEyNCTFxxHCLmxUARW2D4bkHdVB7SzxZ@shrimp.rmq.cloudamqp.com/bemqpwbz");


        factory.setConnectionTimeout(30000);

        Connection connection = factory.newConnection();
        Channel channel2 = connection.createChannel();
        channel2.queueDeclare(queue, false, false, false, null);

        File file = new File("src/main/resources/sensor.csv");
        Scanner scan = new Scanner(file);
        while (scan.hasNextLine()) {
            String value2 = scan.nextLine();
            JSONObject message = new JSONObject();
            message.put("timestamp", System.currentTimeMillis());

            message.put("device_id", "a6a765dd-8ab5-45f6-821e-3d7dbe2905ca");
            message.put("measurement_value", value2);

            System.out.println("Sent: '" + message.toString() + "'");
            channel2.basicPublish("", queue, null, message.toString().getBytes(StandardCharsets.UTF_8));

            Thread.sleep(5000);
        }
    }
}
