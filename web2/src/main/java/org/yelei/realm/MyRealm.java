package org.yelei.realm;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.yelei.entity.User;
import org.yelei.service.ClientService;
import org.yelei.service.UserService;

import javax.annotation.Resource;


/**
 *
 * @author liao
 *
 */
public class MyRealm extends AuthorizingRealm{

	@Resource
	private UserService userService;
	@Resource
	private ClientService clientService;
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0){
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

		String userName=(String)token.getPrincipal();
		System.out.println(userName+"test");
		User user=userService.getByUserName(userName);
		/*System.out.println("test12:"+user.getUserName());*/
		if(user!=null){

			SecurityUtils.getSubject().getSession().setAttribute("currentUser", user);
			AuthenticationInfo authenticationInfo=new SimpleAuthenticationInfo(
					user.getUserName(), user.getPassword(), "");
			return authenticationInfo;
		}else {
			return null;
		}

	}

	}
