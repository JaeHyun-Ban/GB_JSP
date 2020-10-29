/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.39
 * Generated at: 2020-10-29 07:46:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.session_005fquiz;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.session.UserRepository;
import com.session.User;

public final class login02_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.session.UserRepository");
    _jspx_imports_classes.add("com.session.User");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

//처리영역

/* login02.jsp
1. 입력된 회원 정보를 가져오세요.
	
2. 로그인을 시도하는 회원의 모든 정보를 얻어오세요. (getUser() 만들어 주세요.)
getUser() -> 아이디를 전달받아 해당 아이디와 일치하는 객체가 있는지
확인 후, 있다면 그 객체를 리턴. (UserRepository 클래스에 메서드를 선언하세요.)
일치하는 객체가 없다면 null을 리턴.
	
3. 조건문을 사용하여 getUser()의 리턴값이 null인지 아닌지를 확인하여
 null값을 받았다면 회원가입이 되어있지 않은 사람이 로그인을 시도한 것이므로
로그인 페이지로 보내주세요. (script로 경고창 띄운 후 로그인 페이지로. location.href)
	  
4. getUser()의 리턴값이 null이 아닌 경우
회원 가입 당시에 작성했던 비밀번호가 로그인할 때 작성한 비밀번호와
일치하는지를 확인하여 같다면 세션에 로그인 데이터를 저장해 주세요.
("login", User객체)
	
5. 세션을 만든 후 "login03.jsp"로 페이지를 이동시켜 주세요.
	
6. 비밀번호가 일치하지 않는다면 script태그로 "비밀번호가 일치하지 않습니다."
 경고창 하나 띄워 주시고 다시 로그인 페이지로 이동시켜 주세요.
*/

	
	//1. 입력된 회원 정보를 가져오세요.
	request.setCharacterEncoding("utf-8");//인코딩
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	User user = UserRepository.getUser(id);//반환받기 user타입
	
	
	if(user != null){ //아이디가 있는
		if(user.getPw().equals(pw)){ //비밀번호가 일치하는 경우
			session.setAttribute("login", user);
			response.sendRedirect("login03.jsp");
		} else { //비밀번호가 일치하지 않는 경우	

      out.write("\r\n");
      out.write("\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\talert(\"비밀번호가 일치하지 않습니다\");\r\n");
      out.write("\t\t\tlocation.href = \"login01.jsp\";\r\n");
      out.write("\t\t</script>\r\n");
	
		}
	} else { //아이디가 없는 경우

      out.write("\r\n");
      out.write("\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\talert(\"아이디가 일치하지 않습니다.\");\r\n");
      out.write("\t\t\tlocation.href = \"login01.jsp\";\r\n");
      out.write("\t\t</script>\r\n");
	
	} 

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
