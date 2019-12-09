package ua.lviv.lgs.dto;

import ua.lviv.lgs.entity.User;

public class UserDto {

    private String firstName;
    private String lastName;
    private String email;

    public UserDto(){

    }

    public UserDto(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public  static UserDto convertToDto(User user){
        return new UserDto(user.getFirstName(),user.getLastName(),user.getEmail());
    }
}
