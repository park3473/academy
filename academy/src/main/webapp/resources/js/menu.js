$(document).ready(function(){
	$.ajax({
	
		url : '/view/menu/list.do',
		type : 'POST',
		success : function(data , status , xhr){
				
				console.log(data);
			
				var data = data.list;
				
				var menu = $("#menu_list");
	
		        var currentDepth1 = null;
		        var currentDepth2 = null;
		        var depth1UL = null;
	
		        for (var i = 0; i < data.length; i++) {
		            var item = data[i];
		            if (item.depth === 0) {
		                // Create a new top-level list item
		                var listItem = $("<li></li>");
		                var anchor = $("<a></a>").attr("href", item.link).append("<span>" + item.name + "</span>");
		                listItem.append(anchor);
	
		                // Create a new sub-menu for depth 1 items
		                depth1UL = $("<ul class='depth2'></ul>");
		                listItem.append(depth1UL);
		                menu.append(listItem);
	
		                currentDepth1 = listItem;
		                currentDepth2 = depth1UL;
		            } else if (item.depth === 1) {
		                // Create a new list item for depth 1 items
		                var listItem = $("<li></li>");
		                var anchor = $("<a></a>").attr("href", item.link).append("<span>" + item.name + "</span>");
		                listItem.append(anchor);
	
		                // Append it to the current depth 2 ul
		                currentDepth2.append(listItem);
		            }
		        }
				
				//메뉴 부분 navi 설정
				var header = $("#header");
				var windowWidth = $(window).width();

				$(".btn-gnb-open").on("click",function () { // [p] 20190503 수정
					m_gnb_open ();
				});
				$(".btn-gnb-close").on("click",function () { // [p] 20190503 수정
					m_gnb_close ();
				});
				

				// PC GNB 2Depth
				$(".gnb-menu li").on("mouseover", function () {
					depth2_open(this);
				});

				// [p] 20190514 수정
				$(".nav-inner").mouseleave(function () { 
					depth2_close(this);
				});

				// Mobile GNB 2Depth
				$(".gnb-menu li > a").on("click",function () {
					m_depth2_open(this);
				});

				// 언어 선택
				$(".lang-list").children(".lang").on("click",function () {
					$(this).next(".select-lang").toggleClass("hide");
				});

				$(".select-lang").children("li").each(function () {
					$(this).find("a").click(function () {
						var selected = $(this).children("span").html();
						$(this).parent("li").addClass("on").siblings("li").removeClass("on")
						$(this).parent().parent(".select-lang").addClass("hide").siblings(".lang").children("span").html(selected);
					})
				});


				$(window).resize(function () {
					if($(window).width() >= 768 && $("#header").hasClass("m-gnb-open")) {
						m_gnb_close();
					}
					m_mode()

					// [p] 20190509 수정
					if (windowWidth >= 768) {
						$(".nav-inner").on("mouseleave", function () { 
							depth2_close(this);
						});
					}
				});

			// 스크롤
				$(window).on("scroll", function(){
			       goTop();
			       scroll_header (); // 스크롤시 header
			    });
				
			},
			error : function(status , xhr){
				
				console.log('error : ' + status);
				
			}
		});
		
});