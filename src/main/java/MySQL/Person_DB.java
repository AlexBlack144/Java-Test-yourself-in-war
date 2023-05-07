package MySQL;

import java.sql.*;
import java.util.ArrayList;

public class Person_DB {
    private static String url = "jdbc:mysql://localhost:3306/person";
    private static String username = "root";
    private static String password = "123456";

    public static ArrayList<Persons> select() {

        ArrayList<Persons> persons = new ArrayList<Persons>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
            try (Connection conn = DriverManager.getConnection(url, username, password)){

                Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM persons");
                while(resultSet.next()){

                    int idpersons = resultSet.getInt(1);
                    String first_name = resultSet.getString(2);
                    String last_name = resultSet.getString(3);
                    int age = resultSet.getInt(4);
                    String address = resultSet.getString(5);
                    String phone = resultSet.getString(6);
                    String email = resultSet.getString(7);
                    String profession = resultSet.getString(8);

                    Persons person = new Persons(idpersons, first_name, last_name, age, address, phone, email, profession);
                    persons.add(person);
                }
            }
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return persons;
    }
    //
    public static int insert(Persons persons) {

        try{
            Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
            try (Connection conn = DriverManager.getConnection(url, username, password)){

                String sql = "INSERT INTO persons (first_name, last_name, age, address, phone, email, profession) Values (?, ?,?,?,?,?)";
                try(PreparedStatement preparedStatement = conn.prepareStatement(sql)){
                    preparedStatement.setString(1, persons.getFirst_name());
                    preparedStatement.setString(2, persons.getLast_name());
                    preparedStatement.setInt(3, persons.getAge());
                    preparedStatement.setString(4, persons.getAddress());
                    preparedStatement.setString(5, persons.getPhone());
                    preparedStatement.setString(6, persons.getEmail());
                    preparedStatement.setString(7, persons.getProfession());

                    return  preparedStatement.executeUpdate();
                }
            }
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return 0;
    }
}
