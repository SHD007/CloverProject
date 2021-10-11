package com.clover.spring.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AjaxBoardResult {
	int count;   // 데이터 개수
	String status;  // 처리결과
	String message;  // 결과 메세지
}
