package bas;

import javax.servlet.http.HttpServletRequest;

public class MemberDTO {
	String pid;
	int no;
	boolean marriage;
	
	public void init(HttpServletRequest request) {
		pid = request.getParameter("pid");
		
		if(request.getParameter("no")!=null){
			no = Integer.parseInt(request.getParameter("no"));
		}
	}
	
	public String getPid() {
		return pid;
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
	
	public void setMarriage(boolean marriage) {
		this.marriage = marriage;
	}
	
	
	@Override
	public String toString() {
		return "MemberDTO [pid=" + pid + ", no=" + no + ", marriage=" + marriage + "]";
	}
	
	
	
	
}
