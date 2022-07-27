package com.nhom14.repository;

import java.util.List;

import com.nhom14.entity.ChiTietDonHang;

public interface IChiTietDonHangReponsitory {
	List<ChiTietDonHang> getAllChiTietDonHang();

	ChiTietDonHang addChiTietDonHang(ChiTietDonHang chiTietDonHang);

	ChiTietDonHang updateChiTietDonHang(ChiTietDonHang chiTietDonHang);

	ChiTietDonHang removeChiTietDonHang(ChiTietDonHang chiTietDonHang);

	List<ChiTietDonHang> getAllChiTietDonHangbyDoHang(int maDonHang);

	ChiTietDonHang getChiTietbyDHSP(int maDonHang, int maSanPham);
}
