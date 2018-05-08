package filterdemo;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EcodingFilter implements Filter{

	private String charSet;
	public void destroy() {}
	public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain) throws IOException, ServletException {
		System.out.println("test");
		request.setCharacterEncoding(this.charSet);
		chain.doFilter(request, response);
	}
	
	public void init(FilterConfig config) throws ServletException{
		this.charSet=config.getInitParameter("charset");
	}
	
}
