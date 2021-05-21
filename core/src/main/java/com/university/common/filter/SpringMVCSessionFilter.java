package com.university.common.filter;

import com.university.common.util.NoCheckUrlsUtils;
import org.apache.log4j.Logger;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;


public class SpringMVCSessionFilter extends OncePerRequestFilter {

    // 不登陆可访问URL列表
    private List<String> noCheckUrlList;

    // 日志
    Logger logger = Logger.getLogger(SpringMVCSessionFilter.class);

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {

        FilterConfig filterConfig = this.getFilterConfig();

        String redirectURL = filterConfig.getInitParameter("redirectURL");// 未登录跳转页面
        String checkSessionKey = filterConfig.getInitParameter("checkSessionKey");// 用户在session中存储的key值
        String noCheckUrlStr = filterConfig.getInitParameter("noCheckUrl");
        String moduleName = filterConfig.getInitParameter("moduleName");


        if ("client".equals(moduleName)){
            noCheckUrlStr = NoCheckUrlsUtils.GenerateClientNoCheckUrls();
        }

        // 组装不登陆可访问URL列表
        if (noCheckUrlList == null || noCheckUrlList.size() == 0) {
            noCheckUrlList = new ArrayList<String>();
            if (noCheckUrlStr != null && !"".equals(noCheckUrlStr.trim()) ) {
                // 去除空格
                noCheckUrlStr = noCheckUrlStr.replaceAll(" ","");
                // 分割为数组
                String[] noCheckUrls = noCheckUrlStr.split(";");
                // 组装
                if(noCheckUrls != null && noCheckUrls.length > 0){
                    for(int i = 0; i < noCheckUrls.length; i++){
                        noCheckUrlList.add(noCheckUrls[i]);
                    }
                }
            }
        }

        String uri  = request.getRequestURI();

        Enumeration params = request.getParameterNames();
        String paramsStr = "";

        while (params.hasMoreElements()){
            String paramName = String.valueOf(params.nextElement());
            String paramValue = request.getParameter(paramName);

            paramsStr = paramsStr + "&" + paramName + "=" + paramValue;
        }
        paramsStr = paramsStr.replaceFirst("&","?");

        if(!uri.equals("/server/alive.do")){
            logger.info(uri+paramsStr);
        }


        // 检查URI是否是不需登陆的URI
        boolean bl = isNoCheckRequestUri(uri);

        if (bl) {
            filterChain.doFilter(request, response);// 不执行过滤，继续
        }else{
            filterChain.doFilter(request, response);// 不执行过滤，继续
        }
    }

    // 是否是不需登陆的URI
    private boolean isNoCheckRequestUri(String uri) {
        boolean result = false;
        if(noCheckUrlList != null && noCheckUrlList.size() > 0 && uri != null && !"".equals(uri.trim())){
            for(int i = 0; i < noCheckUrlList.size(); i++){
                String noCheckUrl = noCheckUrlList.get(i);
                if(noCheckUrl != null){
                    if(uri.indexOf(noCheckUrl) >= 0){
                        result = true;
                        break;
                    }
                }
            }
        }
        return result;
    }
}
