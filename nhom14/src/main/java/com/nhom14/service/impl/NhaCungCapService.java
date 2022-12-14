package com.nhom14.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom14.dto.NhaCungCapDto;
import com.nhom14.entity.NhaCungCap;
import com.nhom14.repository.INhaCungCapReponsitory;
import com.nhom14.service.INhaCungCapService;

@Service
public class NhaCungCapService implements INhaCungCapService {

	@Autowired 
	private INhaCungCapReponsitory nhaCungCapReponsitory;
	@Override
	public List<NhaCungCapDto> getAllNhaCungCap() {
		List<NhaCungCap> listncc=nhaCungCapReponsitory.getAllNhaCungCap();
		List<NhaCungCapDto> dto=new ArrayList<NhaCungCapDto>();
		for (NhaCungCap n : listncc) {
			dto.add(new NhaCungCapDto(n.getMaNhaCungCap(),n.getTenNhaCungCap(), n.getDiaChi()));
		}
		return dto;
	}
	@Override
	public NhaCungCapDto getNhaCungCapbyTen(String ten) {
		NhaCungCap n=nhaCungCapReponsitory.getNhaCungCapbyTen(ten);
		NhaCungCapDto dto=new NhaCungCapDto(n.getMaNhaCungCap(),n.getTenNhaCungCap(),n.getDiaChi());
		return dto;
	}

}
