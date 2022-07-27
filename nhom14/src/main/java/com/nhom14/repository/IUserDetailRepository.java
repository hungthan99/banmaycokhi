package com.nhom14.repository;

import com.nhom14.entity.NguoiDung; 

public interface IUserDetailRepository {
	 NguoiDung findUserInfo(String email);
	 String getUserRole(String email);
}
