package com.demo.project.DAO;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;



@Entity
@Table(name="USERTABLE")
public class UserDAO {

@EmbeddedId
private UserPK UserPK;

private String FirstName;

private String LastName;

private String password;

public UserPK getUserPK() {
	return UserPK;
}

public void setUserPK(UserPK userPK) {
	UserPK = userPK;
}

public String getFirstName() {
	return FirstName;
}

public void setFirstName(String firstName) {
	FirstName = firstName;
}

public String getLastName() {
	return LastName;
}

public void setLastName(String lastName) {
	LastName = lastName;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}


	
	
}
