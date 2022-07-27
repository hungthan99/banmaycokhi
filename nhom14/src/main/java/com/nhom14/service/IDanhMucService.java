package com.nhom14.service;

import java.util.List;

import com.nhom14.dto.DanhMucDto;

public interface IDanhMucService {
	List<DanhMucDto> getAllDanhMuc();
	DanhMucDto getDanhMucbyTen(String ten);
}
