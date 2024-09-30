function buyRandomIcon(user_idx) {
    console.log("사용자 ID:", user_idx, "로 랜덤 아이콘 구매 시도 중");
    const confirmation = confirm("ランダムアイコンを購入しますか?");
    if (!confirmation) {
        return; // 구매 취소
    }
    $.ajax({
        url: '/Maru/shop/buyRandomIcon',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ user_idx: user_idx }),
        success: function(response) {
            console.log("서버 응답:", response);
            if (response === "success") {
                alert("ランダムアイコン購入成功!");
                location.reload(); // 구매 완료 후 페이지 새로고침
            } else if (response === "insufficient_points_or_no_available_icons") {
                alert("ポイントが不足しているか、購入できるアイコンがありません。");
            }
        },
        error: function(xhr, status, error) {
            console.error("AJAX 요청 실패:", status, error);
            if (xhr.status === 400) {
                alert("ポイントが不足しているため、アイコンを購入できません。");
            } else {
                alert("アイコンの購入中にエラーが発生しました。");
            }
        }
    });
}

//아이템을 구매하는 함수
function buyIcon(icon_idx, user_idx) {
    console.log("아이콘 ID:", icon_idx, "사용자 ID:", user_idx, "로 아이콘 구매 시도 중");
    // 구매 확인
    const confirmation = confirm("このアイコンを購入しますか？");
    if (!confirmation) {
        return; // 구매 취소
    }
    $.ajax({
        url: '/Maru/shop/buyIcon',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ icon_idx: icon_idx, user_idx: user_idx }),
        success: function(response) {
            console.log("서버 응답:", response);
            if (response === "success") {
                alert("購入成功！");
                location.reload(); // 구매 완료 후 페이지 새로고침
            } else if (response === "insufficient_points") {
                alert("ポイントが不足しているため、アイコンを購入できません。");
            }
        },
        error: function(xhr, status, error) {
            console.error("AJAX 요청 실패:", status, error);
            if (xhr.status === 400) {
                alert("ポイントが不足しているため、アイコンを購入できません。");
            } else {
                alert("アイコンの購入中にエラーが発生しました。");
            }
        }
    });
}





// 아이콘 리스트를 토글하는 함수
function toggleIcons(iconType) {
    const iconList = document.getElementById(iconType + 'Icons');
    
    // 선택한 아이콘 리스트가 보이는지 여부에 따라 토글
    if (iconList.style.display === 'flex') {
        iconList.style.display = 'none';
    } else {
        iconList.style.display = 'flex';
    }
}

// 선택한 아이콘을 기본 아이콘으로 설정하는 함수
function selectIcon(iconType, iconIndex) {
    const defaultIconElement = document.getElementById('default' + capitalizeFirstLetter(iconType) + 'Icon');
    const selectedIconElement = document.getElementById(iconType + 'Icon' + iconIndex);
    if (defaultIconElement && selectedIconElement) {
        defaultIconElement.src = selectedIconElement.src;
    } else {
        console.error("아이콘 타입:", iconType, "아이콘 인덱스:", iconIndex, "에 대한 요소를 찾을 수 없습니다.");
    }
}

// 사용자 아이콘을 클릭하면 기본 아이콘으로 설정하는 함수
function selectUserIcon(iconIndex) {
    const selectedIconElement = document.getElementById('userIcon' + iconIndex);
    if (selectedIconElement) {
        const iconType = selectedIconElement.getAttribute('data-icon-type');
        const defaultIconElement = document.getElementById('default' + capitalizeFirstLetter(iconType) + 'Icon');
        if (defaultIconElement) {
            defaultIconElement.src = selectedIconElement.src;
        } else {
            console.error("기본 아이콘 요소를 찾을 수 없습니다.");
        }
    } else {
        console.error("사용자 아이콘 인덱스:", iconIndex, "에 대한 요소를 찾을 수 없습니다.");
    }
}

// 문자열의 첫 글자를 대문자로 변환하는 함수
function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}

// 아이콘 리스트를 스크롤하는 함수
function scrollIcons(direction) {
    const iconLists = document.querySelectorAll('.icon-list');
    iconLists.forEach(list => {
        if (direction === 'left') {
            list.scrollLeft -= 100; // 스크롤 양을 필요에 따라 조정
        } else if (direction === 'right') {
            list.scrollLeft += 100; // 스크롤 양을 필요에 따라 조정
        }
    });
}

// 페이지 로드 시 모든 아이콘 리스트를 숨김
window.onload = function() {
    document.getElementById('dinosaurIcons').style.display = 'none';
    document.getElementById('dogIcons').style.display = 'none';
    document.getElementById('gorillaIcons').style.display = 'none';
    document.getElementById('otterIcons').style.display = 'none';
    document.getElementById('rabbitIcons').style.display = 'none';
};