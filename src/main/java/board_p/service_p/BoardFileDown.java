package board_p.service_p;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.URLEncoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_p.BoardService;

public class BoardFileDown implements BoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			
			String fName= request.getParameter("fname");
			
			String ffName = URLEncoder.encode(fName,"UTF-8");	
			response.setHeader("Content-Disposition", "attachment;filename="+ffName);
	
	//		out.clear();
	//		out = pageContext.pushBody();
	
			String path = request.getRealPath("bbb_fff");
			path = "C:\\Users\\satae\\jsp_work\\jspProj\\src\\main\\webapp\\bbb_fff";
			
			path += "\\"+fName;
			
			FileInputStream fis = new FileInputStream(path);
		
			ServletOutputStream sos = response.getOutputStream();
			
			byte [] buf = new byte[1024];
			
			while(fis.available() >0){
				int len = fis.read(buf);
				sos.write(buf,0,len);
			}
			
			sos.close();
			fis.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
