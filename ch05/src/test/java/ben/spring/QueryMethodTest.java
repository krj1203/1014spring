package ben.spring;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import ben.spring.domain.Board;
import ben.spring.persistence.BoardRepository;

@SpringBootTest
public class QueryMethodTest {
	@Autowired
	private BoardRepository boardRepo;
	
//	@BeforeEach
//	public void dataPrepare() {
//		for(int i=1; i<=200; i++) {
//			Board board = new Board();
//			board.setTitle("테스트 제목!!" + i);
//			board.setWriter("테스터");
//			board.setContent("테스트 내용" + i);
//			board.setCreateDate(new Date());
//			board.setCnt(0L);
//			boardRepo.save(board);
//		}
//	}
//	
//	@Test
//	public void testFindByTitle() {
//		List<Board> boardList = boardRepo.findByTitle("테스트 제목!! 10");
//		
//		System.out.println("검색 결과");
//		for(Board board : boardList) {
//			System.out.println("---->" + board.toString());
//		}
//	}
//	@Test
//	public void testByContentContaining() {
//		List<Board> boardList = boardRepo.findByContentContaining("17");
//		
//		System.out.println("검색 결과!!");
//		for(Board board : boardList) {
//			System.out.println("---->>>>" + board.toString());
//		}
//	}
	
//	@Test
//	public void testFindByTitleContainingOrContentContaining() {
//		List<Board> boardList = boardRepo.findByTitleContainingOrContentContaining("17", "17");
//		
//		System.out.println("검색 결과");
//		for(Board board : boardList) {
//			System.out.println("--->>" + board.toString());
//		}
//	}
	
//	@Test
//	public void testFindByTitleContaingOrderBySeqDesc() {
//		List<Board> boardList = boardRepo.findByTitleContainingOrderBySeqDesc("17");
//		
//		System.out.println("검색 결과");
//		for(Board board : boardList) {
//			System.out.println("--->>" + board.toString());
//		}
//	}
	
//	@Test
//	public void testFindByTitleContaing() {
//		Pageable paging = PageRequest.of(0, 5, Sort.Direction.DESC,"seq");
//		List<Board> boardList = boardRepo.findByTitleContaining("제목", paging);
//				
//		System.out.println("검색 결과");
//		for(Board board : boardList) {
//			System.out.println("--->>" + board.toString());
//		}
//	}
	
//	@Test
//	public void testFindByTitleContaining() {
//		Pageable paging = PageRequest.of(0, 5,Sort.Direction.DESC,"seq");
//		
//		Page<Board> pageInfo = boardRepo.findByTitleContaining("제목", paging);
//		
//		System.out.println("PAGE SIZE : " + pageInfo.getSize());
//		System.out.println("TOTAL PAGES : " + pageInfo.getTotalPages());
//		System.out.println("TOTAL COUNT : " + pageInfo.getTotalElements());
//		System.out.println("NEXT : " + pageInfo.nextPageable());
//		
//		List<Board> boardList = pageInfo.getContent();
//		
//		System.out.println("검색 결과");
//		for(Board board : boardList) {
//			System.out.println("--->>" + board.toString());
//		}
//	}
	
	@Test
	public void testQueryAnnotationTest2() {
		List<Object[]> boardList = boardRepo.queryAnnotationTest2("테스트 제목 10");
		
		System.out.println("검색 결과");
		for(Object[] row : boardList) {
			System.out.println("--->>" + Arrays.toString(row));
		}
	}
}
