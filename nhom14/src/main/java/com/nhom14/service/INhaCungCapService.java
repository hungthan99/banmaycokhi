package com.nhom14.service;

import java.util.List;

import com.nhom14.dto.NhaCungCapDto;

public interface INhaCungCapService {
	List<NhaCungCapDto> getAllNhaCungCap();
	NhaCungCapDto getNhaCungCapbyTen(String ten);
}
