package ch11;

public class CheckIdPwd {

	private String id = "superman";
	private String pwd = "flyingman";

	public String checkId(String id) throws IdPwdException {
		if(this.id.equalsIgnoreCase(id)) {
			return "ID OK";
		} else {
			throw new IdPwdException("ID가 올바르지 않습니다.");
		}
	}

	public String checkPwd(String pwd) throws IdPwdException {
		if(this.pwd.equalsIgnoreCase(pwd)) {
			return "PWD OK";
		} else {
			throw new IdPwdException("PWD가 올바르지 않습니다.");
		}
	}

}
