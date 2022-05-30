package board_p.model_p;

import java.util.Date;
import java.util.regex.Pattern;


public class BoardDTO {
	int id, cnt;
	Date reg_date;
	String pname, pw, title, content, upfile;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public String getContentBr() {
		return content.replaceAll("\n", "<br>");
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUpfile() {
		if(upfile == null || 
				upfile.trim().equals("")|| 
				upfile.trim().equals("null")) {
			return null;
		}
		return upfile;
	}
	public void setUpfile(String upfile) {
		this.upfile = upfile;
	}
	
	public boolean isImg() {
		
		// 파일이 없다면
		if(getUpfile()==null) {
			return false;
		}
		
//		int pos = upfile.lastIndexOf(".");
//		// 대소문자 구분없이 전부 소문자로(디지털카메라에서는 확장자가 대문자인 경우도 있다) + 점을 뺀 위치부터
//		String ext = upfile.toLowerCase().substring(pos+1);
		
		// . 으로 시작하는 모든 이미지 파일들 , 소문자로
		return Pattern.matches(".*[.](jpg|jpeg|png|bmp|gif)", upfile.toLowerCase());
		
	}
	
	@Override
	public String toString() {
		return "BoardDTO [id=" + id + ", cnt=" + cnt + ", reg_date=" + reg_date + ", pname=" + pname + ", pw=" + pw
				+ ", title=" + title + ", content=" + content + ", upfile=" + upfile + "]";
	}
}
