package com.desdelashorasextras;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Ejemplo1 {
    JFrame frame;
    JButton boton1;
    JButton boton2;

    Ejemplo1() {
        frame = new JFrame();
        boton1 = new JButton("Pulsa el boton Uno !!");
        boton2 = new JButton("Pulsa el boton Dos!!!");

        frame.setSize(550, 500);
        frame.setLayout(null);
        frame.add(boton1);
        frame.add(boton2);

        boton1.setBounds(10, 100, 200, 60);
        //Configuro un evento de forma tradicional para cuando el usuario haga clic,
        //se ve que necesito crear una clase anonima que capture el evento
        boton1.addActionListener( ( new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JOptionPane.showMessageDialog(frame, "Gracias desde el UNO!!");
            }
        }));

        boton2.setBounds(250, 100, 200, 60);
        //Misma situacion que la anterior pero usando programación declarativa
        //Disponible en las versiones modernas de Java
        boton2.addActionListener(e -> JOptionPane.showMessageDialog(frame, "Gracias desde el UNO!!"));


        frame.setVisible(true);
    }

    public static void main(String[] args) {
        new Ejemplo1();
    }
}