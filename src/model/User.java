package model;

public class User {
String username, password, id, email;
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
int status;

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
@Override
public String toString() {
	return "User [username=" + username + ", password=" + password + ", status=" + status + "]";
}
public void setPassword(String password) {
	this.password = password;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
}
