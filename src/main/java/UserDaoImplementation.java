package com.tadigital.ecommerce.customer.dao;

import com.tadigital.ecommerce.customer.entity.User;
import com.tadigital.ecommerce.customer.entity.Password;
import com.tadigital.ecommerce.dao.Dao;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImplementation extends Dao implements UserDao{
	public boolean searchUserByEmailAndPassword(User user) {
		boolean status = false;
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		
		try {
			  String str = "SELECT cust_id,cust_fname,cust_lname,cust_profile_pic FROM customer_information WHERE cust_email='" + user.getEmail() + "' AND cust_pwd='"
				+ user.getPassword() + "'";

		    con = getConnection();
			stmt = getStatement(con);
			rs = getResultSet(stmt, str);
			
			if (rs.next()) {
				status = true;
				
				user.setId(rs.getInt("cust_id"));
				user.setfirstName(rs.getString("cust_fname"));
				user.setlastName(rs.getString("cust_lname"));
				user.setProfilePicture(rs.getString("cust_profile_pic"));

			}
		} catch (SQLException sqlex) {
			sqlex.printStackTrace();
		} finally {

			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	public boolean insertNewUser(User user) {
		boolean status = false;
		ResultSet rs = null;
		Connection con = getConnection();
		Statement stmt = getStatement(con);
		
		int emailDb = 0;
		try {
			if ( user.getEmail().length() != 0 ) { 
				String sql = "SELECT cust_email FROM customer_information";
				rs = getResultSet(stmt, sql);
				String emailDB = "" ;
				while(rs.next()) 
				{
					emailDB = rs.getString("cust_email");

					if(user.getEmail().equals(emailDB))
					{
						emailDb = 1 ;
					}
				}
				if ( emailDb == 0 ) {
					String str = "INSERT INTO customer_information(cust_fname,cust_lname,cust_email,cust_pwd,cust_profile_pic) VALUES ('" + user.getfirstName() + "','" + user.getlastName() + "', '"
						+ user.getEmail() + "', '" + user.getPassword() + "','" + user.getProfilePicture() + "')";

					int row = stmt.executeUpdate(str);
					if (row != 0) {

						status = true;

					}
				}
			}
		} catch (SQLException sqlex) {
			sqlex.printStackTrace();
		} finally {

			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	public boolean updatePassword(Password passwordObj) {
		boolean status = false;

		Connection con = getConnection();
		Statement stmt = getStatement(con);

		try {
			if( passwordObj.getNewPassword().equals(passwordObj.getRetypePassword()) ) {

				String str = "UPDATE customer_information SET cust_pwd='" + passwordObj.getNewPassword() + "' WHERE cust_pwd='"
						+ passwordObj.getPassword() + "'";

				int row = stmt.executeUpdate(str);
				if (row != 0) {

					status = true;

				} else {
					return status;
				}
			}
		} catch (SQLException sqlex) {
			sqlex.printStackTrace();
		} finally {

			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	public boolean updateUserDetails( User user ) {
		boolean status = false;

		Connection con = getConnection();
		Statement stmt = getStatement(con);

		try {

			String str = "UPDATE customer_information SET cust_fname='" + user.getfirstName() + "', cust_lname= '" + user.getlastName() + "', gender='" + user.getGender() + "',address='" + user.getAddress() + "', city='" + user.getCity() + "', zipcode='" + user.getZipcode() + "', state='" + user.getState() + "', country='" + user.getCountry() + "', number= '" + user.getNumber() +"' WHERE cust_email='" + user.getEmail() + "'";

			int row = stmt.executeUpdate(str);

			if (row != 0) {

				status = true;

			}
		} catch (SQLException sqlex) {
			sqlex.printStackTrace();
		} finally {

			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}
}