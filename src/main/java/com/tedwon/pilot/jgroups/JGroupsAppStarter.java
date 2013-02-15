package com.tedwon.pilot.jgroups;

import org.jgroups.JChannel;
import org.jgroups.Message;
import org.jgroups.ReceiverAdapter;


public class JGroupsAppStarter {

    public static void main(String[] args) throws Exception {

        JChannel channel = new JChannel("udp.xml");
        channel.setReceiver(new ReceiverAdapter() {
            public void receive(Message msg) {
                System.out.println("received msg from " + msg.getSrc() + ": " + msg.getObject());
            }
        });
        channel.connect("MyCluster");
        channel.send(new Message(null, null, "hello world"));


        synchronized (JGroupsAppStarter.class) {
            JGroupsAppStarter.class.wait();
        }

        channel.close();

    }
}
