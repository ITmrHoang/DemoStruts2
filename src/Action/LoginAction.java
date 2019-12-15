package Action;

import com.opensymphony.xwork2.ActionSupport;
import Common.Constant;
 
public class LoginAction extends ActionSupport {
    private String userName;
    private String password;
 
    /**
     * login method
     * 
     * @return success or error
     */
    public String login() {
        if (!(Constant.USERNAME.equals(userName) 
                && Constant.PASSWORD.equals(password))) {
            addActionError(Constant.INVALID_ACCOUNT_MSG);
            return ERROR;
        }
        return SUCCESS;
    }
 
    // define setter & setter
    public String getUserName() {
        return userName;
    }
 
    public void setUserName(String userName) {
        this.userName = userName;
    }
 
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
}
