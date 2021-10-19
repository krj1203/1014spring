package ben.spring;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import ben.spring.domain.Board;
import ben.spring.persistence.BoardRepository;

@SpringBootTest
public class QueryAnnotationtest {
	@Autowired
	private BoardRepository boardRepo;
	
	@Test
	public void testQueryAnnotationTest1() {
		List<Board> boardList = boardRepo.queryAnnotationTest1("테스트 제목 10");
		
		System.out.println("검색 결과");
		for(Board board : boardList) {
			System.out.println("--->>" + board.toString());
		}
	}
}
