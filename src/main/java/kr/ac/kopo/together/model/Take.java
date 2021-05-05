package kr.ac.kopo.together.model;

public class Take {
	int serviceId;				// 서비스 번호 
	int usrId;					//사용자 번호 
	int serviceSortId;			//서비스 분류번호 
	String serviceStartDate;	//서비스 가능 시작일 
	String serviceEndDate;		//서비스가능 종료일 
	String serviceWalkingTime;	//산책시간 
	String serviceHouseSort;	// 주택종류 
	String serviceHouseSize;	// 주택크기 
	int serviceHouseYard;		//마당유무 
	int servicePickup;			// 픽업여부 
	String serviceEtc; 			// 특이사항 
	String serviceWalkingPrice; //산책가격 
	String serviceSittingPrice; //돌봄가격 
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public int getUsrId() {
		return usrId;
	}
	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}
	public int getServiceSortId() {
		return serviceSortId;
	}
	public void setServiceSortId(int serviceSortId) {
		this.serviceSortId = serviceSortId;
	}
	public String getServiceStartDate() {
		return serviceStartDate;
	}
	public void setServiceStartDate(String serviceStartDate) {
		this.serviceStartDate = serviceStartDate;
	}
	public String getServiceEndDate() {
		return serviceEndDate;
	}
	public void setServiceEndDate(String serviceEndDate) {
		this.serviceEndDate = serviceEndDate;
	}
	public String getServiceWalkingTime() {
		return serviceWalkingTime;
	}
	public void setServiceWalkingTime(String serviceWalkingTime) {
		this.serviceWalkingTime = serviceWalkingTime;
	}
	public String getServiceHouseSort() {
		return serviceHouseSort;
	}
	public void setServiceHouseSort(String serviceHouseSort) {
		this.serviceHouseSort = serviceHouseSort;
	}
	public String getServiceHouseSize() {
		return serviceHouseSize;
	}
	public void setServiceHouseSize(String serviceHouseSize) {
		this.serviceHouseSize = serviceHouseSize;
	}
	public int getServiceHouseYard() {
		return serviceHouseYard;
	}
	public void setServiceHouseYard(int serviceHouseYard) {
		this.serviceHouseYard = serviceHouseYard;
	}
	public int getServicePickup() {
		return servicePickup;
	}
	public void setServicePickup(int servicePickup) {
		this.servicePickup = servicePickup;
	}
	public String getServiceEtc() {
		return serviceEtc;
	}
	public void setServiceEtc(String serviceEtc) {
		this.serviceEtc = serviceEtc;
	}
	public String getServiceWalkingPrice() {
		return serviceWalkingPrice;
	}
	public void setServiceWalkingPrice(String serviceWalkingPrice) {
		this.serviceWalkingPrice = serviceWalkingPrice;
	}
	public String getServiceSittingPrice() {
		return serviceSittingPrice;
	}
	public void setServiceSittingPrice(String serviceSittingPrice) {
		this.serviceSittingPrice = serviceSittingPrice;
	}
	
	
	
}