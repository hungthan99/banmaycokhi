package com.nhom14.controller.home;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhom14.cartbean.GioHang;
import com.nhom14.cartbean.Item;
import com.nhom14.dto.ChiTietDonHangDTo;
import com.nhom14.dto.SanPhamDto;
import com.nhom14.service.IChiTietDonHangService;
import com.nhom14.service.IDanhMucService;
import com.nhom14.service.ISanPhamService;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	private ISanPhamService sanPhamService;

	@Autowired
	private IDanhMucService danhMucService;

	@Autowired
	private IChiTietDonHangService chiTietDonHangService;

	@GetMapping("trangchu")
	public String home(ModelMap modelMap, ModelMap modelMap2,ModelMap modelMap3, HttpServletRequest request) {
		HttpSession session = request.getSession();
		GioHang gioHang = null;
		Object objGioHang = session.getAttribute("cart"); // Lấy cart từ jsp

		if (objGioHang != null) {
			gioHang = (GioHang) objGioHang;
		} else {
			gioHang = new GioHang();
			session.setAttribute("cart", gioHang);
		}
		modelMap.addAttribute("listSanPham", sanPhamService.getAllSanPham());
		modelMap2.addAttribute("listDanhMuc", danhMucService.getAllDanhMuc());
		
		return "/home/TrangChuView";
	}

	@GetMapping("xemthongtinsanpham")
	public String xemSanPham(Model sanPhamModel, HttpServletRequest request,
			@RequestParam("maSanPham") String maSanPham, Model soLuongDaBan, Model soLuongCon) {

		SanPhamDto sanPham = sanPhamService.getSanPhamByID(Integer.parseInt(maSanPham));
		sanPhamModel.addAttribute("sp", sanPham);
		soLuongDaBan.addAttribute("soLuongDaBan", soLuongSanPhamDaDat(Integer.parseInt(maSanPham)));
		return "/home/ThongTinSanPhamView";
	}

	@PostMapping("dathang")
	public String themVaoGioHang(@RequestParam("action") String action, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		if (action != null && !action.equals("")) {
			if (action.equals("add")) {
				addItem(request, response);
				return "redirect:/home/giohang";
			} else if (action.equals("update")) {
				updateSoLuong(request, response);
				return "redirect:/home/giohang";
			} else if (action.equals("delete")) {
				deleteItem(request, response);
				return "redirect:/home/giohang";
			}

		}
		return "redirect:/home/giohang";

	}

	@GetMapping("timkiem")
	public String showFormTimKiem(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String tenSanPham = request.getParameter("timkiem");
		List<SanPhamDto> list = sanPhamService.getSanPhamByten(tenSanPham);
		request.setAttribute("listSanPham", list);
		request.setAttribute("tukhoa", tenSanPham);
		return "/home/ListKetQuaTimKiemView";
	}

	@GetMapping("giohang")
	public String showGioHang(Model model) {
		return "/home/ChiTietDonHangView";
	}

	@GetMapping("maybao")
	public String showListHonda(Model model, Model model2) {
		List<SanPhamDto> list = sanPhamService.getSanPhamByDanhMucByTen("Máy Bào");
		model.addAttribute("listSanPham", list);
		model2.addAttribute("danhmuc", "Máy bào");
		return "/home/ListMenuSanPhamView";
	}

	@GetMapping("maycat")
	public String showListYamaha(Model model, Model model2) {
		List<SanPhamDto> list = sanPhamService.getSanPhamByDanhMucByTen("Máy Cắt");
		model.addAttribute("listSanPham", list);
		model2.addAttribute("danhmuc", "Máy Cắt");
		return "/home/ListMenuSanPhamView";
	}

	@GetMapping("maychuot")
	public String showListDkBike(Model model, Model model2) {
		List<SanPhamDto> list = sanPhamService.getSanPhamByDanhMucByTen("Máy Chuốt");
		model.addAttribute("listSanPham", list);
		model2.addAttribute("danhmuc", "Máy Chuốt");
		return "/home/ListMenuSanPhamView";
	}

	@GetMapping("maymai")
	public String showListHitasa(Model model, Model model2) {
		List<SanPhamDto> list = sanPhamService.getSanPhamByDanhMucByTen("Máy Mài");
		model.addAttribute("listSanPham", list);
		model2.addAttribute("danhmuc", "Máy Mài");
		return "/home/ListMenuSanPhamView";
	}

	@GetMapping("maytien")
	public String showListHkBike(Model model, Model model2) {
		List<SanPhamDto> list = sanPhamService.getSanPhamByDanhMucByTen("Máy Tiện");
		model.addAttribute("listSanPham", list);
		model2.addAttribute("danhmuc", "Máy Tiện");
		return "/home/ListMenuSanPhamView";
	}

	@GetMapping("gioithieu")
	public String gioithieu(Model model, Model model2, HttpServletRequest request, HttpServletResponse response) {
		return "/include/gioithieu";
	}

	@GetMapping("tintuc")
	public String tintuc(Model model, Model model2, HttpServletRequest request, HttpServletResponse response) {
		return "/include/tintuc";
	}

	@GetMapping("lienhe")
	public String lienhe(Model model, Model model2, HttpServletRequest request, HttpServletResponse response) {
		return "/include/lienhe";
	}

	public void addItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id = Integer.valueOf(request.getParameter("maSanPham"));
		String tenSanPham = request.getParameter("tenSanPham");
		String urlHinhAnh = request.getParameter("urlHinh");
		long donGia = Long.valueOf(request.getParameter("donGia"));
		int soLuong = Integer.valueOf(request.getParameter("soLuong"));

		HttpSession session = request.getSession();
		GioHang gioHang = null;
		Object objGioHang = session.getAttribute("cart");
		
		if (objGioHang != null) {
			gioHang = (GioHang) objGioHang;
		} else {
			gioHang = new GioHang();
			session.setAttribute("cart", gioHang);
		}
		int soLuongConTrongKho = 0;
		try {
			if (soLuongConTrongKho(id) != 0) {
				soLuongConTrongKho += soLuongConTrongKho(id);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		gioHang.ThemItem(new Item(id, tenSanPham, urlHinhAnh, donGia, soLuong, soLuongConTrongKho));
		session.setAttribute("cart", gioHang);
	}

	public void updateSoLuong(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		int soLuong = Integer.valueOf(request.getParameter("soLuong"));

		HttpSession session = request.getSession();
		GioHang gioHang = null;
		Object objGioHang = session.getAttribute("cart");
		if (objGioHang != null) {
			gioHang = (GioHang) objGioHang;
		} else {
			gioHang = new GioHang();
			session.setAttribute("cart", gioHang);
		}

		gioHang.updateItem(gioHang.getItemById(id), soLuong);
	}

	public void deleteItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		HttpSession session = request.getSession();
		GioHang gioHang = null;
		Object objGioHang = session.getAttribute("cart");
		if (objGioHang != null) {
			gioHang = (GioHang) objGioHang;
		} else {
			gioHang = new GioHang();
			session.setAttribute("cart", gioHang);
		}

		gioHang.deleteItem(gioHang.getItemById(id));
	}

	public int soLuongSanPhamDaDat(int maSanPham) {
		int soLuong = 0;
		// List<SanPham> listSanPhamDaDat = new ArrayList<SanPham>();
		for (ChiTietDonHangDTo dto : chiTietDonHangService.getAllChiTietDonHang()) {
			if (dto.getSanPham().getMaSanPham() == maSanPham) {
				soLuong += dto.getSoLuong();
			}
		}
		return soLuong;
	}

	public int soLuongConTrongKho(int maSanPham) {
		int soLuongCon = 0;
		soLuongCon = sanPhamService.getSanPhamByID(maSanPham).getSoLuongNhap();
		return soLuongCon;
	}

}
