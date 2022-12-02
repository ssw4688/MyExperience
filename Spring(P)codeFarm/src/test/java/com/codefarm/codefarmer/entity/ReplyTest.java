package com.codefarm.codefarmer.entity;

import com.codefarm.codefarmer.domain.ReplyDTO;
import com.codefarm.codefarmer.repository.BoardRepository;
import com.codefarm.codefarmer.repository.FarmerRepository;
import com.codefarm.codefarmer.repository.ReplyRepository;
import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import javax.swing.text.html.Option;
import java.util.Optional;

import static com.codefarm.codefarmer.entity.QReply.reply;

@SpringBootTest
@Slf4j
@Transactional
@Rollback(false)
public class ReplyTest {


    @Autowired
    private JPAQueryFactory jpaQueryFactory;

    @Autowired
    private ReplyRepository replyRepository;

    @Autowired
    private FarmerRepository farmerRepository;

    @Autowired
    private BoardRepository boardRepository;

// 댓글 작성하기(댓글작성한 사람과 게시판번호 갖고오기)
    @Test
    public void replySaveTest(){
        ReplyDTO replyDTO =  new ReplyDTO();
        Optional<Farmer> findFarmer = farmerRepository.findById(1L);
        Optional<Board> findBoard = boardRepository.findById(42L);


            replyDTO.setReplyContent("곧 크리스마스.. 취업하고프다");
            replyDTO.setBoardId(findBoard.get());
            replyDTO.setMemberId(findFarmer.get());


        Reply reply = replyDTO.toEntity();
        reply.changeMember(replyDTO.getMemberId());
        reply.changeBoard(replyDTO.getBoardId());
        replyRepository.save(reply);
    }

//    댓글 수정하기
    @Test
    public void replyUpdateTest(){
        ReplyDTO replyDTO = new ReplyDTO();
        Optional<Farmer> findFarmer = farmerRepository.findById(1L);
        Reply reply = replyRepository.findById(16L).get();

        if(findFarmer.isPresent()){
            replyDTO.setReplyContent("수정된 댓글");
            replyDTO.setMemberId(findFarmer.get());
        }

        reply.update(replyDTO);
    }

//    댓글 단 사람의 닉네임 갖고오기
    @Test
    public void findReplyUserTest(){
        Optional<Reply> findReplyUser = replyRepository.findById(8L);
            log.info("nickName : " + findReplyUser.get().getMember().getMemberNickname());
            log.info("createDate : " + findReplyUser.get().getCreatedDate());
//            findReplyUser.get().getMember().getMemberNickname();
    }

//    댓글 총 수
    @Test
    public void findReplyCountTest(){
        log.info("Count : " + replyRepository.count());
    }

//    내가 등록한 댓글 총 수
    @Test
    public void findReplyCountMineTest(){
        log.info("내가 쓴 댓글 총 수 : " + replyRepository.countByMemberMemberId(5L));
    }

//    해당 보드 댓글 총 수
    @Test
    public void findReplyCountBoardTest(){
        log.info("게시판 댓글 총 수 : " + replyRepository.countByBoard_BoardId(7L));
    }

//    보드 누가 댓글 최신에 달았는지 보여주는 테스트
    @Test
    public void findReplyListDescTest(){
       log.info(jpaQueryFactory.select(reply.member.memberNickname)
                .from(reply)
                .where(reply.board.boardId.eq(36L))
                .orderBy(reply.createdDate.desc())
                .limit(1)
                .fetchOne());
    }


// 댓글 삭제
    @Test
    public void replyDeleteTest(){
        replyRepository.deleteById(15L);
    }
}
