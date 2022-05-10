package bas;

import javax.servlet.http.HttpServletRequest;

public class scoreDTO {
	String name = "";
	int kor, eng, mat;
	float total = 0, avg = 0;
	
	public void init(HttpServletRequest request) {
		name = request.getParameter(name);
		kor = Integer.parseInt(request.getParameter("kor"));
		eng = Integer.parseInt(request.getParameter("eng"));
		mat = Integer.parseInt(request.getParameter("mat"));
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMat() {
		return mat;
	}
	public void setMat(int mat) {
		this.mat = mat;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public float getAvg() {
		return avg;
	}
	public void setAvg(float avg) {
		this.avg = avg;
	}
	@Override
	public String toString() {
		return "scoreDTO [name=" + name + ", kor=" + kor + ", eng=" + eng + ", mat=" + mat + ", total=" + total
				+ ", avg=" + avg + "]";
	}
	
	
	
	
}
