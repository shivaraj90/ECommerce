package com.tadigital.ecommerce.customer.dao;

import com.tadigital.ecommerce.customer.entity.User;
import com.tadigital.ecommerce.customer.entity.Password;

public interface UserDao {
	public boolean searchUserByEmailAndPassword( User user );
	public boolean insertNewUser( User user );
	public boolean updatePassword( Password passwordObj ) ;
	public boolean updateUserDetails( User user );
}