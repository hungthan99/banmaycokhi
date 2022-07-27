package com.nhom14.service;

import java.util.List;

import com.nhom14.dto.DonHangDto;


public interface IDonHangService {
	 DonHangDto addKDonHang(DonHangDto dto);

	 DonHangDto updateDonHang(DonHangDto donHang);

	 DonHangDto removeDonHang(DonHangDto donHang);

	List<DonHangDto> getAllDonHang();

	 int getIdMax();

	 List<DonHangDto> getAllDonHangbyMaKhachHang(int maKhacHang);
}
