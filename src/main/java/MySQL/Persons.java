package MySQL;

public class Persons {

    private int idpersons;
    private String first_name;
    private String last_name;
    private int age;
    private String address;
    private String phone;
    private String email;
    private String profession;


    public Persons(String first_name, String last_name, int age, String address, String phone, String email, String profession) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.age = age;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.profession = profession;
    }

    public Persons(int idpersons, String first_name, String last_name, int age, String address, String phone, String email, String profession)
    {
        this.idpersons = idpersons;
        this.first_name = first_name;
        this.last_name = last_name;
        this.age = age;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.profession = profession;
    }
    public int getIdpersons() {
        return idpersons;
    }

    public void setIdpersons(int idpersons) {
        this.idpersons = idpersons;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }




}
