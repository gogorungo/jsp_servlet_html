package jdbc_p;


import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class MemberDTO {
	String pid, pname, pw, tel;
	int no, age;
	boolean marriage;
	Date reg_date;
	
	public void init(HttpServletRequest request) {
		pid = request.getParameter("pid");
		
		if(request.getParameter("no")!=null){
			no = Integer.parseInt(request.getParameter("no"));
		}
	}
	
	public MemberDTO(){
		System.out.println("MemberDTO 기본 생성자 실행");
	}
	
	public MemberDTO(String pid, int no, boolean marriage) {
		super();
		this.pid = pid;
		this.no = no;
		this.marriage = marriage;
	}
	
	public MemberDTO(String pid, String pw, String pname) {
		super();
		this.pid = pid;
		this.pw = pw;
		this.pname = pname;
	}
	


	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public MemberDTO(String pid, String pname) {
		super();
		this.pid = pid;
		this.pname = pname;
	}

	public String getPid() {
		return pid;
	}
	
	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public void setPid(String pid) {
		this.pid = pid;
	}
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	
	public void setNo(String no) {
		if(no!=null) {
			this.no = Integer.parseInt(no);
		}
	}
	
	public boolean isMarriage() {
		return marriage;
	}
	
	public int getMarriageInt() {
		if(marriage)
			return 1;
		return 0;
	}
	
	public void setMarriage(boolean marriage) {
		this.marriage = marriage;
	}

	public void setMarriage(int marriage) {
		// 삼항연산자
		this.marriage = marriage == 1;
		
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	
	public String getNickname() {
		return "김강규만세";
	}
	
	@Override
	public String toString() {
		return "MemberDTO [pid=" + pid + ", pname=" + pname + ", pw=" + pw + ", no=" + no + ", age=" + age + ", tel="
				+ tel + ", marriage=" + marriage + ", reg_date=" + reg_date + "]";
	}
	
}
