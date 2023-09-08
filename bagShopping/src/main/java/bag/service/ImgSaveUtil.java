package bag.service;

import java.io.File;
import java.io.FileOutputStream;

import org.springframework.stereotype.Service;

import bag.model.BagsDTO;
import jakarta.servlet.http.HttpServletRequest;

@Service
public class ImgSaveUtil {
	
	String path = "C:\\SPRING_JH\\shoppingMall_bag\\bagShopping\\src\\main\\webapp\\upFile";

	public void img1Save(BagsDTO dto) {
		// 파일 업로드 유무 확인
		if(dto.getBagImg1() != null && !dto.getBagImg1().equals("")) {
			dto.setBagImg1(dto.getBagImg1());
			return;
		}
		if (dto.getImg1() == null || dto.getImg1().isEmpty()) {
			dto.setBagImg1("");
			return;
		}
		int dot = dto.getImg1().getOriginalFilename().lastIndexOf(".");
		String fDomain = dto.getImg1().getOriginalFilename().substring(0, dot);
		String ext = dto.getImg1().getOriginalFilename().substring(dot);

		dto.setBagImg1(fDomain + ext);
		File ff = new File(path + "\\" + dto.getBagImg1());
		int cnt = 1;
		while (ff.exists()) {
			dto.setBagImg1(fDomain + "_" + cnt + ext);
			ff = new File(path + "\\" + dto.getBagImg1());
			cnt++;
		}
		try {
			FileOutputStream fos = new FileOutputStream(ff);
			fos.write(dto.getImg1().getBytes());
			fos.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void img2Save(BagsDTO dto) {
		// 파일 업로드 유무 확인
		if(dto.getBagImg2() != null && !dto.getBagImg2().equals("")) {
			dto.setBagImg2(dto.getBagImg2());
			return;
		}
		if (dto.getImg2() == null || dto.getImg2().isEmpty()) {
			dto.setBagImg2("");
			return;
		}
		int dot = dto.getImg2().getOriginalFilename().lastIndexOf(".");
		String fDomain = dto.getImg2().getOriginalFilename().substring(0, dot);
		String ext = dto.getImg2().getOriginalFilename().substring(dot);

		dto.setBagImg2(fDomain + ext);
		File ff = new File(path + "\\" + dto.getBagImg2());
		int cnt = 1;
		while (ff.exists()) {
			dto.setBagImg2(fDomain + "_" + cnt + ext);
			ff = new File(path + "\\" + dto.getBagImg2());
			cnt++;
		}
		try {
			FileOutputStream fos = new FileOutputStream(ff);
			fos.write(dto.getImg2().getBytes());
			fos.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void img3Save(BagsDTO dto) {
		// 파일 업로드 유무 확인
		if(dto.getBagImg3() != null && !dto.getBagImg3().equals("")) {
			dto.setBagImg3(dto.getBagImg3());
			return;
		}
		if (dto.getImg3() == null || dto.getImg3().isEmpty()) {
			dto.setBagImg3("");
			return;
		}
		int dot = dto.getImg3().getOriginalFilename().lastIndexOf(".");
		String fDomain = dto.getImg3().getOriginalFilename().substring(0, dot);
		String ext = dto.getImg3().getOriginalFilename().substring(dot);

		dto.setBagImg3(fDomain + ext);
		File ff = new File(path + "\\" + dto.getBagImg3());
		int cnt = 1;
		while (ff.exists()) {
			dto.setBagImg3(fDomain + "_" + cnt + ext);
			ff = new File(path + "\\" + dto.getBagImg3());
			cnt++;
		}
		try {
			FileOutputStream fos = new FileOutputStream(ff);
			fos.write(dto.getImg3().getBytes());
			fos.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void img4Save(BagsDTO dto) {
		// 파일 업로드 유무 확인
		if(dto.getBagImg4() != null && !dto.getBagImg4().equals("")) {
			dto.setBagImg4(dto.getBagImg4());
			return;
		}
		if (dto.getImg4() == null || dto.getImg4().isEmpty()) {
			dto.setBagImg4("");
			return;
		}
		int dot = dto.getImg4().getOriginalFilename().lastIndexOf(".");
		String fDomain = dto.getImg4().getOriginalFilename().substring(0, dot);
		String ext = dto.getImg4().getOriginalFilename().substring(dot);

		dto.setBagImg4(fDomain + ext);
		File ff = new File(path + "\\" + dto.getBagImg4());
		int cnt = 1;
		while (ff.exists()) {
			dto.setBagImg4(fDomain + "_" + cnt + ext);
			ff = new File(path + "\\" + dto.getBagImg4());
			cnt++;
		}
		try {
			FileOutputStream fos = new FileOutputStream(ff);
			fos.write(dto.getImg4().getBytes());
			fos.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
