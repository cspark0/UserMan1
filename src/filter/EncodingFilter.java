package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * ServletRequest객체에 인코딩을 설정하는 Filter클래스.
 * 
 * @web.filter name="Encoding Filter" 
 * 			   display-name="Encoding Filter"
 * 	
 * @web.filter-init-param name="encoding"
 * 						  value="EUC-KR"		    
 * 
 * @web.filter-mapping url-pattern="/*"
 * 					   
 */
public class EncodingFilter implements Filter {
	private String encoding = null;

	protected FilterConfig filterConfig = null;

	public void destroy() {

		this.encoding = null;
		this.filterConfig = null;

	}

	/**
	 * ServletRequest객체에 web.xml에서 전달된 인코딩을 설정하는 메써드.
	 */
	public void doFilter(
		ServletRequest request,
		ServletResponse response,
		FilterChain chain)
		throws IOException, ServletException {

		if (request.getCharacterEncoding() == null) {
			if (encoding != null) {
				request.setCharacterEncoding(encoding);
			}
		}

		chain.doFilter(request, response);
	}

	/**
	 * web.xml에서 전달된 인코딩 값을 초기화하는 메써드.
	 */
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
		this.encoding = filterConfig.getInitParameter("encoding");
	}

	public FilterConfig getFilterConfig() {
		return filterConfig;
	}

	public void setFilterConfig(FilterConfig cfg) {
		filterConfig = cfg;
	}
}
