/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testdb;

import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

public class ConexionPool {

    private final String DB = "bxur3hlhe5gq3cqrq1bz";
    private final String URL = "jdbc:mysql://uamx1wedjav9kuxc:dMysrH369GjKA1MO66GS@bxur3hlhe5gq3cqrq1bz-mysql.services.clever-cloud.com:3306/bxur3hlhe5gq3cqrq1bz";
    ;
    private final String USER = "uamx1wedjav9kuxc";
    private final String PASS = "dMysrH369GjKA1MO66GS";

    public DataSource dataSource = null;

    public ConexionPool() {

        inicializaDataSource();

    }

    private void inicializaDataSource() {

        try {

            BasicDataSource basicDataSource = new BasicDataSource();

            basicDataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
            basicDataSource.setUsername(USER);
            basicDataSource.setPassword(PASS);
            basicDataSource.setUrl(URL);
            basicDataSource.setMaxTotal(50);

            dataSource = basicDataSource;

            System.out.println("Conexion exitosa");

        } catch (Exception ex) {
            System.out.println("error " + ex.getMessage());
        }

    }

}
