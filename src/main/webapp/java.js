function checkValue(){
    if(document.frm.car_num.value == ""){
        alert("차량번호가 입력되지 않았습니다.");
        document.frm.car_num.focus();
        return false;
    }
    return true;
}

function checkOut(){
		if(document.frm.car_num.value==""){
			alert("차량번호가 입력되지 않았습니다.");
			document.frm.car_num.focus();
			return false;
		}
		return true;		
}

function check_In(){
	if(document.frm.car_num.value == ""){
		alert("차량번호가 입력되지 않았습니다.");
		return false;
	}
	if(document.frm.owner.value==""){
		alert("소유자 이름이 입력되지 않았습니다.");
		return false;
	}
	if(document.frm.area.value==""){
		alert("주차위치가 선택 되지 않았습니다.");
		return false;
	}
	if(document.frm.in_time.value==""){
		alert("입차 시간이 입력되지 않았습니다.");
		return false;	
	}
	return true;
}