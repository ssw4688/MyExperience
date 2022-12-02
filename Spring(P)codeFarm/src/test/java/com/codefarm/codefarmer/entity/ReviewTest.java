package com.codefarm.codefarmer.entity;

import com.codefarm.codefarmer.domain.ReviewDTO;
import com.codefarm.codefarmer.repository.FarmerRepository;
import com.codefarm.codefarmer.repository.MentorBoardRepository;
import com.codefarm.codefarmer.repository.ReviewRepository;
import com.codefarm.codefarmer.repository.UserRepository;
import com.codefarm.codefarmer.type.UserType;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@SpringBootTest
@Slf4j
@Transactional
@Rollback(false)
public class ReviewTest {

    @Autowired
    private ReviewRepository reviewRepository;
    @Autowired
    private FarmerRepository farmerRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private MentorBoardRepository mentorBoardRepository;

//   리뷰댓글 작성(멘티만)
    @Test
    public void saveReviewTest(){
        ReviewDTO reviewDTO = new ReviewDTO();
        Optional<User> findUser = userRepository.findById(15L);
        Optional<MentorBoard> findMentorBoard = mentorBoardRepository.findById(6L);

        if(findUser.get().getUserType().equals(UserType.MENTEE)){
            reviewDTO.setReviewContent("멘토님 짱!");
            reviewDTO.setMentorBoardId(findMentorBoard.get());
            reviewDTO.setMemberId(findUser.get());
        }

        Review review = reviewDTO.toEntity();
        review.changeMember(reviewDTO.getMemberId());
        review.changeMentorBoard(reviewDTO.getMentorBoardId());
        reviewRepository.save(review);
    }

//   해당 멘토보드에 리뷰 댓글 수
    @Test
    public void findReviewCountTest(){
        log.info("멘토 리뷰댓글 총 수 : " + reviewRepository.countByMentorBoardMentorBoardId(6L));
    }

//    모든 리뷰 총 수
    @Test
    public void findAllReviewCountTest(){
        log.info("모든 리뷰 총 수 : " +  reviewRepository.count());
    }


//    리뷰 단 사람 닉네임 갖고오기
    @Test
    public void findNickName(){
        Optional<Review> findReviewUser = reviewRepository.findById(19L);
        log.info("nickName : " + findReviewUser.get().getMember().getMemberNickname());
        log.info("createDate : " + findReviewUser.get().getCreatedDate());
    }

//    댓글 내용 갖고오기(최신꺼)
    public void findReviewCountDESCTest(){

    }





//    리뷰 삭제하기
    @Test
    public void reviewDeleteTest(){
        reviewRepository.deleteById(16L);
    }


}
