package egovframework.academy.admin.program.model;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.mysql.fabric.xmlrpc.base.Array;
import com.system.util.SearchVo;

public class AdminProgramVo extends SearchVo{

	String idx = "";
	String title = "";
	String image = "";
	String operate = "";
	String start_tm = "";
	String end_tm = "";
	String explan = "";
	String content = "";
	String create_tm = "";
	String update_tm = "";
	String tagType = "";		//태그 여부
	String tags = "";
	
	//태그들 분배
	public List<String> getTagList() {
	    List<String> tagList = new ArrayList<String>();
	    if (tags != null && !tags.isEmpty()) {
	        String[] tagArray = tags.split("#");
	        for (String tag : tagArray) {
	            if (!tag.isEmpty()) {
	                tagList.add(tag);
	            }
	        }
	    }
	    return tagList;
	}
	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getOperate() {
		return operate;
	}
	public void setOperate(String operate) {
		this.operate = operate;
	}
	public String getStart_tm() {
		return start_tm;
	}
	public void setStart_tm(String start_tm) {
		this.start_tm = start_tm;
	}
	public String getEnd_tm() {
		return end_tm;
	}
	public void setEnd_tm(String end_tm) {
		this.end_tm = end_tm;
	}
	public String getExplan() {
		return explan;
	}
	public void setExplan(String explan) {
		this.explan = explan;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public String getTagType() {
		return tagType;
	}
	public void setTagType(String tagType) {
		this.tagType = tagType;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	
	
	
}
