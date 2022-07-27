package com.nhom14.service;

import java.util.List;

import com.nhom14.dto.ChiTietDonHangDTo;
public interface IChiTietDonHangService {
	List<ChiTietDonHangDTo> getAllChiTietDonHang();

	ChiTietDonHangDTo addChiTietDonHang(ChiTietDonHangDTo chiTietDonHang);

	ChiTietDonHangDTo updateChiTietDonHang(ChiTietDonHangDTo chiTietDonHang);

	ChiTietDonHangDTo removeChiTietDonHang(ChiTietDonHangDTo chiTietDonHang);

	List<ChiTietDonHangDTo> getAllChiTietDonHangbyDonHang(int maDonHang);

	ChiTietDonHangDTo getChiTietbyDHSP(int maDonHang, int maSanPham);
}
