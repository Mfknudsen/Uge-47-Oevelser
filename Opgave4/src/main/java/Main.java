import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Main {
    public static void main(String[] args){
        Connection con = null;
        try{
            ///
            /// Intellij og MySQL ville ikke forbindel på grund af forskellige tidszoner og efter længere tid søgen, hvor jeg ikke fandt et svar,
            /// har jeg valgt at lave videre på koden, men jeg ved derfor ikke om det virker.
            ///
            con = DriverManager.getConnection("jdbc:mysql://localhost/world", "root", "ftu58fqs");
            PreparedStatement ps_CityCount = con.prepareStatement("SELECT COUNT(*) FROM city");

            ResultSet resultSet = ps_CityCount.executeQuery();
            while(resultSet.next())
                System.out.println(resultSet.getString("city"));

            PreparedStatement ps_CityCountByPopulation = con.prepareStatement("" +
                    "SELECT * " +
                    "FROM city " +
                    "WHERE ");

            resultSet = ps_CityCountByPopulation.executeQuery();
            while(resultSet.next())
                System.out.println(resultSet.getString("city"));

        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
}
