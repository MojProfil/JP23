package edunova10;

import java.sql.*;

public class Start {

    public Start() {

        try {
            // ime url-a za driver:
            Class.forName("org.mariadb.jdbc.Driver");
            Connection veza = DriverManager.getConnection(
                    "jdbc:mariadb://127.0.0.1/edunovajp23",
                    "edunova",
                    "edunova");

            Statement izraz = veza.createStatement();
            ResultSet rs = izraz.executeQuery("select * from smjer");
            while (rs.next()){
                System.out.print(rs.getString("naziv"));
                System.out.println(rs.getFloat("cijena"));
            }

            //                INSERT INTO smjer added:
            String insert = "insert into smjer (naziv, cijena, trajanje) VALUES (?,?,?)";
            int rowInsert;
            try (PreparedStatement statement = veza.prepareStatement(insert)) {
                statement.setString(1, "Java programer");
                statement.setFloat(2, 5500.00F);
                statement.setInt(3, 180);
                rowInsert = statement.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Neispravan insert.");
            }
            //            UPDATE smjer added
            String update = "Update smjer SET cijena=? WHERE naziv=?";
            int rowUpdate;
            try {
                PreparedStatement statement = veza.prepareStatement(update);
                statement.setFloat(1,  8800.99F);
                statement.setString(2, "PHP programer");
                rowUpdate = statement.executeUpdate();
            } catch (Exception e) {
               e.printStackTrace();
                System.out.println("Neispravan update.");
            }
            //          DELETE FROM smjer added
            String delete = "Delete from smjer where naziv=?";
            int rowDelete;
            try {
                PreparedStatement statement = veza.prepareStatement(delete);
                statement.setString(1, "Java programer");
                rowDelete = statement.executeUpdate();
            } catch (Exception e) {
               e.printStackTrace();
                System.out.println("Neispravan delete.");
            }

            rs.close();
            veza.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        new Start();
    }
}
