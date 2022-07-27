package com.nhom14.repository;

import java.util.List;

import com.nhom14.entity.DanhMuc;

public interface IDanhMucReponsitory {
	List<DanhMuc> getAllDanhMuc();
	DanhMuc getDanhMucbyTen(String ten);
}
