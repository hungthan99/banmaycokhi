package com.nhom14.repository;

import java.util.List;

import com.nhom14.entity.NguoiDung;

public interface INguoiDungRepository {
	void Dangki(NguoiDung nguoiDung);
	List<NguoiDung> getAllNguoiDung();
	NguoiDung getNguoiDungByEmail(String email);
	NguoiDung updateKhachHang(NguoiDung nguoiDung);
}
