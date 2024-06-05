package himedia;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.logging.Logger;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

	
		//Logger 포함
		private static final Logger logger = Logger.getLogger("HelloServlet");
		
		
		//1) init () : 초기화
		@Override
		public void init(ServletConfig config) throws ServletException {
			logger.info("[LifeCycle]: init");
			super.init(config);
		}

		//
		//2)service() : 서비스
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			logger.info("[LifeCycle]: service");
			super.service(req, resp);
		}
		
		//doGet
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			logger.info("[LifeCycle]: doGet");
			
			resp.setContentType("text/html; charset=UTF-8");
			
			//사용자로부터 name 파라미터를 전달받아서 출력
			//파라미터로 데이터가 전달되는 GET방식의 요청을 처리하는 메서드
			String name = req.getParameter("name");
			
			if(name == null) {
				name = "아무개";
			}
	
			//super.doGet(req, resp); --> 주석처리해주기 (주의)
			
			PrintWriter out = resp.getWriter();
			out.println("<h1>Hello Servlet</h1>");
			out.println("<p>안녕하세요," + name + "님</p>");
			
		}

		//doPost
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			logger.info("[LifeCycle]: doPost");
			
			// 클라이언트의 form 으로부터 전달받은 데이터를 목록 출력
			resp.setContentType("text/html; charset=UTF-8");
			
			PrintWriter out = resp.getWriter();
			out.println("<h1>폼 데이터 처리</h1>");
			
			out.println("<p>폼으로부터 전송된 데이터</p>");
			
			
			// 폼으로부터 전송된 파라미터명 확인
			Enumeration<String> params = req.getParameterNames();
			out.println("<ul>");
			
			while(params.hasMoreElements()) {
				String paramName = params.nextElement();
				out.printf("<li>%s=%s</li>%n", paramName, req.getParameter(paramName));
			}
			out.println("</ul>");
			
			//super.doPost(req, resp); --> 주석처리해주기 (주의)
		}
		
		//
		//3)destroy() :소멸자 
		@Override
		public void destroy() {
			logger.info("[LifeCycle]: servlet shutdown...");
			super.destroy();
		}
		
		
}
