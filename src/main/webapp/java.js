function checkValue(){
    if(document.frm.car_num.value == ""){
        alert("차량번호가 입력되지 않았습니다.");
        document.frm.car_num.focus();
        return false;
    }
    return true;
}