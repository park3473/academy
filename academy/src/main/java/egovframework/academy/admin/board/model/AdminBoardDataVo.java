package egovframework.academy.admin.board.model;

import com.system.util.SearchVo;

public class AdminBoardDataVo extends SearchVo{

	String idx = "";			//게시글 번호
	String board_idx = "";		//게시판 번호
	String level = "";			//게시판 레벨
	String type = "";			//게시판 타입
	String title = "";			//게시판 제목
	String password = "";		//게시판 비밀번호
	String content = "";		//게시판 내용
	String member_id = "";		//작성자 아이디
	String company = "";		//작성자 회사
	String email = "";			//작성자 이메일
	String phone = "";			//작성자 번호
	String phone2 = "";			//작성자 번호2
	String name = "";			//작성자 이름
	String image = "";			//게시글 이미지 (썸네일용);
	String file = "";			//게시글 파일 여부
	String create_tm = "";		//게시글 생성 시간
	String update_tm = "";		//게시글 수정 시간
	String rdcnt = "";			//게시글 조회수
	
	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(String board_idx) {
		this.board_idx = board_idx;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getCreate_tm() {
		return create_tm;
	}
	public void setCreate_tm(String create_tm) {
		this.create_tm = create_tm;
	}
	public String getUpdate_tm() {
		return update_tm;
	}
	public void setUpdate_tm(String update_tm) {
		this.update_tm = update_tm;
	}
	public String getRdcnt() {
		return rdcnt;
	}
	public void setRdcnt(String rdcnt) {
		this.rdcnt = rdcnt;
	}
	
	
	
	
	
}
