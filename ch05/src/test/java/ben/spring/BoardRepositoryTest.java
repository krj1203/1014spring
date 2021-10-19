package ben.spring;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import ben.spring.persistence.BoardRepository;
@SpringBootTest
public class BoardRepositoryTest {
	
	@Autowired
	private BoardRepository boardRepo;																		
	
//	@Test
//	public void testInsertBoard() {
//		Board board = new Board();
//		board.setTitle("두 번째 글!");
//		board.setWriter("테스트 합니다.");
//		board.setContent("등록이 잘 되면 좋겠다");
//		board.setCreateDate(new Date());
//		board.setCnt(0L);
//		
//		boardRepo.save(board);
//	}
	
//	@Test
//	public void testGetBoard() {
//		Board board = boardRepo.findById(1L).get();
//		System.out.println(board.toString());
//	}
	
//	@Test
//	public void testUpdateBoard() {
//		System.out.println("======1번 게시글 조회===");
//		Board board = boardRepo.findById(1L).get();
//				
//		System.out.println("=====1번 게시글 제목 수정");
//		board.setTitle("제목을 수정했습니다");
//		boardRepo.save(board);
//	}
//	@Test
//	public void testDeleteBoard() {
//		boardRepo.deleteById(1L);
//	}
}
