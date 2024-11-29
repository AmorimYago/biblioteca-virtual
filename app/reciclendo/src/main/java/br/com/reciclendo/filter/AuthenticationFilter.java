package br.com.reciclendo.filter;


import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter({"/admin/*"})
public class AuthenticationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        HttpSession session = httpServletRequest.getSession(false);

        String userType = (session != null) ? (String) session.getAttribute("userType") : null;
        String path = httpServletRequest.getRequestURI();

        if (path.startsWith("/admin") && !"admin".equals(userType)){
            //redireciona para o login se o usuario não for admin e tentar ter acesso
            servletRequest.setAttribute("message", "Usuario não autenticado!");

            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/login.jsp?error=unauthorized");;

        }else{
            // Continua a requisição se o acesso for permitido
            chain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() { }

    private boolean isUserLoggedOn(HttpServletRequest httpServletRequest){
        return httpServletRequest.getSession().getAttribute("loggedUser") == null;
    }
}
