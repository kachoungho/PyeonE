<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
#div1 {
	width: 50%;
	height: 100%;
	float: left;
	margin-left: 5%;
	padding-left: 100px;
	padding-top: 100px;
	padding-bottom: 200px;
	background-color: #e8f5ff;
}
#div2 {
	width: 40%;
	height: 100%;
	float: left;  
	margin-right: 5%;
	padding-left: 30px;
	padding-top: 50px;
	padding-bottom: 110px; 
	background-color: #e8f5ff;
}

#td1{
	width: 180px;
	height: 50px;
	text-align: center;
	font-size: 15px;
	font-family: 'Jeju Gothic', sans-serif;
}

#td2{
	width: 420px;
	height: 50px;
	text-align: center;
	font-family: 'Jeju Gothic', sans-serif;
}
</style>
<meta charset="utf-8">
<title>키워드로 장소검색하기</title>

</head>
<body>
		
		<div id="div1">
			<table>
				<c:forEach items="${list}" var="list">
				<tr>
					<td id="td1">지    점</td>
					<td id="td2">${list.area} 점</td>
				</tr>
				<tr>
					<td id="td1">주    소</td>
					<td id="td2">${list.address}</td>
				</tr>
				<tr>
					<td id="td1">전화번호</td>
					<td id="td2">${list.phone}</td>
				</tr>
				<tr>
					<td id="td1">홈페이지</td>
					<td id="td2"><a href="${pageContext.request.contextPath}/customer/cus_sector?area=${list.area}&item_name=${item_name}">홈페이지 이동</a></td>
				</tr>
					</c:forEach>
			</table>
		</div>
	
		
		<div id="div2">
		<c:forEach items="${list}" var="list">
			<input type="hidden" value="${list.address}" id="keyword" size="20">
			<input type="hidden" value="${list.place}" id="place" size="15">
			<input type="hidden" value="${list.phone}" id="place" size="15">
		</c:forEach>
		
		
		<div id="map" style="width: 350px; height: 350px; "></div><!-- margin-left: 30.5%; margin-top: 5%; margin-bottom: 5%; -->
	
		<script type="text/javascript"
			src="//apis.daum.net/maps/maps3.js?apikey=d8a783ab647cf241b46707bc4e31d1ac&libraries=services//apis.daum.net/maps/maps3.js?apikey=d8a783ab647cf241b46707bc4e31d1ac&libraries=services"></script>
		<script>
			// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
			var infowindow = new daum.maps.InfoWindow({
				zIndex : 1
			});
	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};
	
			// 지도를 생성합니다    
			var map = new daum.maps.Map(mapContainer, mapOption);
	
			// 장소 검색 객체를 생성합니다
			var ps = new daum.maps.services.Places();
	
			// 키워드로 장소를 검색합니다
			var keyword = document.getElementById('keyword').value;
			/* var place2 = document.getElementById('place').value; */
			
			ps.keywordSearch(keyword, placesSearchCB);
			
			// 키워드 검색 완료 시 호출되는 콜백함수 입니다
			function placesSearchCB(status, data, pagination) {
				
	
				if (status === daum.maps.services.Status.OK) {
	
					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다
					var bounds = new daum.maps.LatLngBounds();
	 
					for (var i = 0; i < data.places.length; i++) {
						displayMarker(data.places[i]);
						bounds.extend(new daum.maps.LatLng(data.places[i].latitude,
								data.places[i].longitude));
					} 
					/* displayMarker(place);
					bounds.extend(new daum.maps.LatLng(places.latitude,places.longitude)); */
					// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					map.setBounds(bounds);
					displayMarker(keyword);
				}
			}
	
			// 지도에 마커를 표시하는 함수입니다
			function displayMarker(keyword) {
	
				// 마커를 생성하고 지도에 표시합니다
				var marker = new daum.maps.Marker(
						{
							map : map,
							position : new daum.maps.LatLng(keyword.latitude, keyword.longitude)
						});
	
				// 마커에 클릭이벤트를 등록합니다
				daum.maps.event.addListener(marker, 'mouseover', function() {/* click */
					// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
					infowindow.setContent('<div style="padding:5px;font-size:12px;">' + document.getElementById('place').value + '</div>');
					infowindow.open(map, marker);
				});
				 
				// 마우스 아웃 이벤트
				daum.maps.event.addListener(marker, 'mouseout', function() {
					infowindow.close();
				});
				
				/* 
				daum.maps.event.addListener(marker, 'click', function() {
					alert(event.point instanceof daum.maps.Point);
				}); 
				
				daum.maps.event.addListener(marker, 'click', function() {
				    alert(); // true
				});*/
			}
		</script>
	</div>
</body>
</html>