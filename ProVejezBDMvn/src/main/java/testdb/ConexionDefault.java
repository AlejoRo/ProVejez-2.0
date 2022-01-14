/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testdb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionDefault {

    private final String DB = "bxur3hlhe5gq3cqrq1bz";
    private final String URL = "jdbc:mysql://uamx1wedjav9kuxc:dMysrH369GjKA1MO66GS@bxur3hlhe5gq3cqrq1bz-mysql.services.clever-cloud.com:3306/bxur3hlhe5gq3cqrq1bz";
    ;
    private final String USER = "uamx1wedjav9kuxc";
    private final String PASS = "dMysrH369GjKA1MO66GS";

    public void openConnection() {

        Connection connect = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            connect = (Connection) DriverManager.getConnection(URL, USER, PASS);

            if (connect != null) {
                System.out.println("Conexión exitosa");
            } else {
                System.out.println("Conexión Fallida");
            }

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("error " + ex.getMessage());
        }

    }

    public void closeConnection(Connection connect) {
        try {
            connect.close();
            System.out.println("Conexión Cerrada Exitosamente");
        } catch (SQLException ex) {
            Logger.getLogger(ConexionDefault.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
