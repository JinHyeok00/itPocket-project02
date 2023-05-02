package com.itPocket.post.domain;

public class PostVO {
	private Long postId;
	private Long memberId;
	private String postType;
	private String postName;
	private Long postViewCount;
	private String postRegisterDate;
	private String postUpdateDate;
	private String postContent;
	private boolean postIsBlinded;
	private String postLanguageType;
	private String postKnowhow;
	
	public PostVO () {;}
	
	public Long getPostId() {
		return postId;
	}
	public void setPostId(Long postId) {
		this.postId = postId;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
	public String getPostType() {
		return postType;
	}
	public void setPostType(String postType) {
		this.postType = postType;
	}
	public String getPostName() {
		return postName;
	}
	public void setPostName(String postName) {
		this.postName = postName;
	}
	public Long getPostViewCount() {
		return postViewCount;
	}
	public void setPostViewCount(Long postViewCount) {
		this.postViewCount = postViewCount;
	}
	public String getPostRegisterDate() {
		return postRegisterDate;
	}
	public void setPostRegisterDate(String postRegisterDate) {
		this.postRegisterDate = postRegisterDate;
	}
	public String getPostUpdateDate() {
		return postUpdateDate;
	}
	public void setPostUpdateDate(String postUpdateDate) {
		this.postUpdateDate = postUpdateDate;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public boolean isPostIsBlinded() {
		return postIsBlinded;
	}
	public void setPostIsBlinded(boolean postIsBlinded) {
		this.postIsBlinded = postIsBlinded;
	}
	public String getPostLanguageType() {
		return postLanguageType;
	}
	public void setPostLanguageType(String postLanguageType) {
		this.postLanguageType = postLanguageType;
	}
	public String getPostKnowhow() {
		return postKnowhow;
	}
	public void setPostKnowhow(String postKnowhow) {
		this.postKnowhow = postKnowhow;
	}
	
	@Override
	public String toString() {
		return "PostVO [postId=" + postId + ", memberId=" + memberId + ", postType=" + postType + ", postName="
				+ postName + ", postViewCount=" + postViewCount + ", postRegisterDate=" + postRegisterDate
				+ ", postUpdateDate=" + postUpdateDate + ", postContent=" + postContent + ", postIsBlinded="
				+ postIsBlinded + ", postLanguageType=" + postLanguageType + ", postKnowhow=" + postKnowhow + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PostVO other = (PostVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
	
}
