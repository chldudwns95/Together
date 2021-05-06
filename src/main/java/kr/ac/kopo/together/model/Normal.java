package kr.ac.kopo.together.model;


public class Normal {
	int boardId;// 게시판번호
	int usrId;// 사용자번호
	String boardTitle;// 게시판제목
	int boardSort;// 게시글분류
	String boardDate;// 게시일자
	String boardContent;// 게시글내용
	String boardUpdate;// 수정일자
	int boardIng;// 진행상황

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public int getUsrId() {
		return usrId;
	}

	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public int getBoardSort() {
		return boardSort;
	}

	public void setBoardSort(int boardSort) {
		this.boardSort = boardSort;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardUpdate() {
		return boardUpdate;
	}

	public void setBoardUpdate(String boardUpdate) {
		this.boardUpdate = boardUpdate;
	}

	public int getBoardIng() {
		return boardIng;
	}

	public void setBoardIng(int boardIng) {
		this.boardIng = boardIng;
	}

}
