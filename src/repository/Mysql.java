package repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Mysql {
    private static Connection connection;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/aula_5",
                    "root",
                    ""
            );
            return connection;
        }
            catch (SQLException e) {
                System.out.println("Erro de conexão com o banco de dados.");
            }
            catch (ClassNotFoundException e) {
                System.out.println("Erro ao importar os drivers MySQL.");
            }
            return null;
    }
}
