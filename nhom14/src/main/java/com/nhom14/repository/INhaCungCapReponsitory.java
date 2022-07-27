package com.nhom14.repository;

import java.util.List;

import com.nhom14.entity.NhaCungCap;

public interface INhaCungCapReponsitory {
	List<NhaCungCap> getAllNhaCungCap();
	NhaCungCap getNhaCungCapbyTen(String ten);
}
