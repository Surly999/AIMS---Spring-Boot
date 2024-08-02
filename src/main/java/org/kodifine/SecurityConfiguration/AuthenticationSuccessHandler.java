package org.kodifine.SecurityConfiguration;

import java.io.IOException;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler
{
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws ServletException, IOException {

        boolean isSales = authentication.getAuthorities().stream()
                .anyMatch(grantedAuthority -> grantedAuthority.getAuthority().equals("ROLE_sales"));

        boolean isManager = authentication.getAuthorities().stream()
                .anyMatch(grantedAuthority -> grantedAuthority.getAuthority().equals("ROLE_manager"));

        boolean isAuditor = authentication.getAuthorities().stream()
                .anyMatch(grantedAuthority -> grantedAuthority.getAuthority().equals("ROLE_auditor"));

        if (isSales) {
            setDefaultTargetUrl("/sales/exehome");
        } else if (isManager) {
            setDefaultTargetUrl("/manager/managerhome");
        } else if (isAuditor) {
            setDefaultTargetUrl("/auditor/audhome");
        } else {
            setDefaultTargetUrl("/login");
        }

        super.onAuthenticationSuccess(request, response, authentication);
    }
}
