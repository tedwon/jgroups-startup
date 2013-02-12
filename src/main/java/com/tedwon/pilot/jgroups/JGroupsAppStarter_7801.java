package com.tedwon.pilot.jgroups;

import org.jgroups.JChannel;
import org.jgroups.Message;
import org.jgroups.ReceiverAdapter;

/**
 * VM Options: -Djava.net.preferIPv4Stack=true -Djgroups.bind_addr=localhost
 */
public class JGroupsAppStarter_7801 {

    public static void main(String[] args) throws Exception {

        JChannel channel = new JChannel("tcp-7801.xml");
        channel.setReceiver(new ReceiverAdapter() {
            public void receive(Message msg) {
                System.out.println("received msg from " + msg.getSrc() + ": " + msg.getObject());
            }
        });
        channel.connect("MyCluster");
        channel.send(new Message(null, null, "hello world"));


        synchronized (JGroupsAppStarter_7801.class) {
            JGroupsAppStarter_7801.class.wait();
        }

        channel.close();

    }
}
