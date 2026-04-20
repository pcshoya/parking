function checkValue(){
    if(document.frm.car_num.value == ""){
        alert("차량번호가 입력되지 않았습니다.");
        document.frm.car_num.focus();
        return false;
    }
    return true;
}

function checkIn(){
	// name="area"인 라디오 버튼 중에서 선택된(checked) 요소를 가져옴
	const selected = document.querySelector('input[name="area"]:checked');
	
	if(document.frm.car_num.value == ""){
    alert("차량번호가 입력되지 않았습니다.");
    document.frm.car_num.focus();
    return false;
	}
	if(document.frm.owner.value==""){
		alert("소유자 이름이 입력되지 않았습니다.");
		return false;
	}

	if (!selected) {
	    alert("주차 위치를 선택하세요.");
	    return false;
	}	

	if(document.frm.in_time.value==""){
		alert("입차 시간이 입력되지 않았습니다.");
		document.frm.in_time.focus();
		return false;	
	}
	return true;
}

function checkOut(){
	const select = document.querySelector('select[name="car_num"]');
	if(select.selectedIndex === 0){
			alert("차량번호가 입력되지 않았습니다.");
			return false;
		}
		if(document.frm.owner.value==""){
			alert("소유자 이름이 입력되지 않았습니다.");
			document.frm.car_num.focus();			
			return false;
		}
		if(document.frm.d_time.value==""){
			alert("출차시간이 입력되지 않았습니다.");
			document.frm.ex_time.focus();			
			return false;
		}		
		return true;		
}