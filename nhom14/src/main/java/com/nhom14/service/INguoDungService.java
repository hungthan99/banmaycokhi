package com.nhom14.service;

import java.util.List;

import com.nhom14.dto.NguoiDungDto;

public interface INguoDungService {
	void DangKi(NguoiDungDto nguoiDungDto);
	List<NguoiDungDto> getAllNguoiDung();
	NguoiDungDto getNguoiDungByEmail(String email);
	NguoiDungDto updateKhachHang(NguoiDungDto nguoiDung);
}
