package com.codefarm.codefarmer.controller.admin;

import com.codefarm.codefarmer.domain.board.BoardDTO;
import com.codefarm.codefarmer.domain.inquire.InquireAnswerDTO;
import com.codefarm.codefarmer.domain.mentor.MentorDTO;
import com.codefarm.codefarmer.domain.mentor.MentorMenteeDTO;
import com.codefarm.codefarmer.domain.notice.NoticeDTO;
import com.codefarm.codefarmer.entity.admin.Banner;
import com.codefarm.codefarmer.entity.admin.Criteria;
import com.codefarm.codefarmer.entity.admin.Crop;
import com.codefarm.codefarmer.entity.admin.Policy;
import com.codefarm.codefarmer.entity.alba.Alba;
import com.codefarm.codefarmer.entity.alba.MemberAlba;
import com.codefarm.codefarmer.entity.board.Reply;
import com.codefarm.codefarmer.entity.inquire.Inquire;
import com.codefarm.codefarmer.entity.inquire.InquireAnswer;
import com.codefarm.codefarmer.entity.member.Member;
import com.codefarm.codefarmer.entity.mentor.Mentor;
import com.codefarm.codefarmer.entity.mentor.MentorBoard;
import com.codefarm.codefarmer.entity.mentor.Review;
import com.codefarm.codefarmer.entity.notice.Notice;
import com.codefarm.codefarmer.entity.program.MemberProgram;
import com.codefarm.codefarmer.entity.program.Program;
import com.codefarm.codefarmer.service.admin.AdminService;
import com.codefarm.codefarmer.service.admin.InformationService;
import com.codefarm.codefarmer.service.admin.InquireService;
import com.codefarm.codefarmer.service.alba.AlbaDetailService;
import com.codefarm.codefarmer.service.board.BoardService;
import com.codefarm.codefarmer.service.board.ReplyService;
import com.codefarm.codefarmer.service.mentor.MentorService;
import com.codefarm.codefarmer.service.notice.NoticeService;
import com.codefarm.codefarmer.service.program.ProgramDeleteService;
import com.codefarm.codefarmer.type.Status;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeParseException;
import java.util.List;
import java.util.UUID;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/*")
@Slf4j
public class AdminController {
    private final AdminService adminService;
//    ????????????
    private final BoardService boardService;
//    ??????
    private final AlbaDetailService albaDetailService;
//    ????????????
    private final ProgramDeleteService programDeleteService;
//    ??????
    private final ReplyService replyService;
//    ??????
    private final NoticeService noticeService;
//    ??????, ??????
    private final InformationService informationService;
//    ??????
    private final InquireService inquireService;
//    ??????
    private final MentorService mentorService;

    @GetMapping("/help")
    public String ask(Model model, Criteria criteria, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "inquireId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<Inquire> inquires = inquireService.inquireShowAll(pageable, keyword, searchText, searchText, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }

        model.addAttribute("inquireCounts", inquireService.countByInquire()); // ?????? ??? ??????
        model.addAttribute("maxPage", 10); // ?????????
        model.addAttribute("inquires", inquires);

        if(keyword.equals("w")) {
            model.addAttribute("resultCount", inquireService.countByNickname(searchText));
        } else {
            model.addAttribute("resultCount", inquires.getTotalPages());
        }
        model.addAttribute("data", inquires.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/ask";
    }

//    ?????? ?????? ????????? (??????, ??????)
    @GetMapping("/help/answer")
    public String askAnswer(Criteria criteria, Long inquireId, Model model) {
        InquireAnswer inquireAnswer = inquireService.answerCheck(inquireService.showInquireOne(inquireId));
        boolean answerCheck = inquireAnswer == null;

        model.addAttribute("inquireAnswer", new InquireAnswerDTO());
        model.addAttribute("inquireAnswerUpdate", inquireAnswer);
        model.addAttribute("answerCheck", answerCheck);
        model.addAttribute("inquire", inquireService.showInquireOne(inquireId));
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???

        return "/admin/ask-detail";
    }

//    ?????? ?????? ??????
    @PostMapping("/help/answer")
    public RedirectView askAnswerWrite(Criteria criteria, RedirectAttributes redirectAttributes, Long inquireId, InquireAnswerDTO inquireAnswerDTO) {
        inquireAnswerDTO.setInquire(inquireService.showInquireOne(inquireId));
        inquireService.answerAdd(inquireAnswerDTO);
        inquireService.statusUpdate(inquireId, Status.CONFIRM);

        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());
        log.info("????????? : " + criteria.getKeyword());
        return new RedirectView("/admin/help");
    }

//    ?????? ?????? ??????
    @PostMapping("/help/answer/update")
    public RedirectView askAnswerUpdate(Criteria criteria, RedirectAttributes redirectAttributes, InquireAnswerDTO inquireAnswerDTO) {
        inquireService.answerUpdate(inquireAnswerDTO);

        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());
        return new RedirectView("/admin/help");
    }

    // ?????? ??????
    @GetMapping("/banner")
    public String banner(Criteria criteria, Model model, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "bannerId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<Banner> banners = adminService.bannerShowAll(pageable, keyword, searchText, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }

        model.addAttribute("banners", banners);
        model.addAttribute("maxPage", 10); // ?????????
        model.addAttribute("bannerCounts", adminService.countByBanner()); // ?????? ??? ??????
        model.addAttribute("data", banners.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/banner";
    }

//    ?????? ??????
    @GetMapping("/banner/register")
    public String bannerWrite(Criteria criteria, Model model) {
        model.addAttribute("banner", new Banner());
        return "/admin/banner-write";
    }

    @PostMapping("/banner/register")
    public RedirectView bannerWrite(Banner banner, String startDate, String endDate, String status, @RequestParam MultipartFile image) throws IOException {
        String path = "C:/upload/banner";
        String uploadFileName = null;

        File uploadPath = new File(path);
        if(!uploadPath.exists()){
            uploadPath.mkdirs();
        }

        if (!image.isEmpty()){
            UUID uuid = UUID.randomUUID();
            String fileName = image.getOriginalFilename();
            uploadFileName = uuid.toString() + "_" + fileName;

            File saveFile = new File(path, uploadFileName);
            image.transferTo(saveFile);
            banner.setBannerRealname(uploadFileName);
        }

        adminService.bannerAdd(banner, status, startDate, endDate);
        return new RedirectView("/admin/banner");
    }

//    ?????? ??????
    @GetMapping("/banner/update")
    public String bannerUpdate(Criteria criteria, Long bannerId, Model model) throws DateTimeParseException {
        Banner banner = adminService.bannerShowOne(bannerId);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

        String startDate = simpleDateFormat.format(java.sql.Timestamp.valueOf(banner.getBannerStartDate()));
        String endDate = simpleDateFormat.format(java.sql.Timestamp.valueOf(banner.getBannerEndDate()));
        model.addAttribute("banner", banner);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/banner-update";
    }

    @PostMapping("/banner/update")
    public RedirectView bannerUpdate(Criteria criteria, Banner banner, String startDate, String endDate, String status, RedirectAttributes redirectAttributes, @RequestParam MultipartFile image) throws IOException {
        String path = "C:/upload/banner";
        String uploadFileName = null;
        String dbFile = adminService.bannerShowOne(banner.getBannerId()).getBannerRealname();

        if (!image.isEmpty()){
            UUID uuid = UUID.randomUUID();
            String fileName = image.getOriginalFilename();
            uploadFileName = uuid.toString() + "_" + fileName;

            if (uploadFileName != dbFile && dbFile != null){
                File file = new File(path, dbFile);
                if(file.exists()){
                    file.delete();
                }
            }

            File saveFile = new File(path, uploadFileName);
            image.transferTo(saveFile);
            banner.setBannerRealname(uploadFileName);

        } else if (dbFile != null) {
            File file = new File(path, dbFile);
            if(file.exists()){
                file.delete();
            }
        }
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());

        adminService.bannerAdd(banner, status, startDate, endDate);
        return new RedirectView("/admin/banner");
    }

//    ?????? ??????
    @PostMapping("/banner/delete")
    public RedirectView bannerDelete(Criteria criteria, RedirectAttributes redirectAttributes, Long bannerId){
        String path = "C:/upload/banner";
        String dbFile = adminService.bannerShowOne(bannerId).getBannerRealname();

        if (dbFile != null) {
            File file = new File(path, dbFile);
            if (file.exists()) {
                file.delete();
            }
        }
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());

        adminService.bannerDelete(bannerId);
        return new RedirectView("/admin/banner");
    }

    // ???????????? (?????????)
    @GetMapping("/board")
    public String adminBoard(Model model, Criteria criteria, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10) Pageable pageable) {
        Page<BoardDTO> boards = adminService.boardShowAll(pageable, keyword, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }

        model.addAttribute("boardCounts", adminService.countByBoard());
        model.addAttribute("maxPage", 10);
        model.addAttribute("boards", boards);
        model.addAttribute("resultCount", adminService.searchCountByBoard(keyword, searchText));
        model.addAttribute("page", pageable);
        model.addAttribute("data", boards.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/board";
    }

//    ???????????? ??????
    @PostMapping("/community/delete")
    public RedirectView detailDelete(Criteria criteria, Long boardId, RedirectAttributes redirectAttributes){
        boardService.removeBoard(boardId);
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());
        return new RedirectView("/admin/board");
    }

    // ???????????? - ?????????(??????)
    @GetMapping("/crop")
    public String crop(Criteria criteria, Model model, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "cropId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<Crop> crops = informationService.cropSearchShowAll(pageable, keyword, searchText, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }
        model.addAttribute("crops", crops);
        model.addAttribute("maxPage", 10); // ?????????
        model.addAttribute("cropCounts", informationService.countByCrop()); // ?????? ??? ??????
        model.addAttribute("data", crops.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/cropInformation";
    }

//    ???????????? ??????
    @GetMapping("/crop/register")
    public String cropWrite(Criteria criteria, Model model) {
        model.addAttribute("crop", new Crop());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/cropInformation-write";
    }

    @PostMapping("/crop/register") // ??????
    public RedirectView cropWrite(Crop crop, @RequestParam MultipartFile image) throws IOException {
        String path = "C:/upload/crop";
        String uploadFileName = null;

        File uploadPath = new File(path);
        if(!uploadPath.exists()){
            uploadPath.mkdirs();
        }

        if (!image.isEmpty()){
            UUID uuid = UUID.randomUUID();
            String fileName = image.getOriginalFilename();
            uploadFileName = uuid.toString() + "_" + fileName;

            File saveFile = new File(path, uploadFileName);
            image.transferTo(saveFile);
            crop.setCropImage(uploadFileName);
        }

        informationService.cropAdd(crop);
        return new RedirectView("/admin/crop");
    }

    //    ???????????? ??????
    @GetMapping("/crop/update")
    public String cropUpdate(Criteria criteria, Long cropId, Model model) {
        model.addAttribute("crop", informationService.cropShowOne(cropId));
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/cropInformation-update";
    }

    @PostMapping("/crop/update")
    public RedirectView cropUpdate(Criteria criteria, Crop crop, RedirectAttributes redirectAttributes, @RequestParam MultipartFile image) throws IOException {
        String path = "C:/upload/crop";
        String uploadFileName = null;
        String dbFile = informationService.cropShowOne(crop.getCropId()).getCropImage();

        if (!image.isEmpty()){
            UUID uuid = UUID.randomUUID();
            String fileName = image.getOriginalFilename();
            uploadFileName = uuid.toString() + "_" + fileName;

            if (uploadFileName != dbFile && dbFile != null){
                File file = new File(path, dbFile);
                if(file.exists()){
                    file.delete();
                }
            }

            File saveFile = new File(path, uploadFileName);
            image.transferTo(saveFile);
            crop.setCropImage(uploadFileName);

        } else if (dbFile != null) {
            File file = new File(path, dbFile);
            if(file.exists()){
                file.delete();
            }
        }
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());

        informationService.cropUpdate(crop);
        return new RedirectView("/admin/crop");
    }

    @GetMapping("/cropimg/display") // ??????
    @ResponseBody
    public byte[] display(String fileName) throws IOException{
        File file = new File("C:/upload/crop", fileName);

        return FileCopyUtils.copyToByteArray(file);
    }

    @GetMapping("/banner/display") // ??????
    @ResponseBody
    public byte[] displays(String fileName) throws IOException{
        File file = new File("C:/upload/banner", fileName);

        return FileCopyUtils.copyToByteArray(file);
    }

    //    ???????????? ??????
    @PostMapping("/crop/delete")
    public RedirectView cropDelete(Criteria criteria, RedirectAttributes redirectAttributes, Long cropId){
        String path = "C:/upload/crop";
        String dbFile = informationService.cropShowOne(cropId).getCropImage();

        if (dbFile != null) {
            File file = new File(path, dbFile);
            if (file.exists()) {
                file.delete();
            }
        }
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());

        informationService.cropDelete(cropId);
        return new RedirectView("/admin/crop");
    }

    // ?????? ??????
    @GetMapping("/job")
    public String job(Model model, Criteria criteria, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "AlbaId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<Alba> albas = adminService.albaShowAll(pageable, keyword, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }

        model.addAttribute("albaCounts", adminService.countByAlba()); // ?????? ??? ??????
        model.addAttribute("maxPage", 10); // ?????????
        model.addAttribute("albas", albas);

        if(keyword.equals("w")) {
            model.addAttribute("resultCount", adminService.countByAlbaNickname(searchText));
        } else {
            model.addAttribute("resultCount", albas.getTotalPages());
        }
        model.addAttribute("data", albas.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/job";
    }
//    ?????? ??????
    @PostMapping("/job/delete")
    public RedirectView albaDelete(Criteria criteria, RedirectAttributes redirectAttributes, Long albaId){
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());

        albaDetailService.removeAlbaId(albaId);
        return new RedirectView("/admin/job");
    }

//    ?????? ????????? ??????
    @GetMapping("/job/participant")
    public String albaMember (Model model, Criteria criteria, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "AlbaApplyId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<MemberAlba> memberAlbas = adminService.memberAlbaalbaShowAll(pageable, keyword, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }
        model.addAttribute("memberProgramCounts", adminService.countByMemberAlba()); // ?????? ??? ??????
        model.addAttribute("maxPage", 10); // ?????????
        model.addAttribute("memberAlbas", memberAlbas);
        model.addAttribute("resultCount", adminService.countByMemberAlbaSearch(keyword, searchText));
        model.addAttribute("data", memberAlbas.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/job-participant";
    }

    // ?????? ??????
    @GetMapping("/main")
    public String adminMain(Model model) {
        model.addAttribute("members", adminService.showAdminByMember());
        model.addAttribute("programs", adminService.showAdminByProgram());
        model.addAttribute("jobs", adminService.showAdminByAlba());
        model.addAttribute("mentors", adminService.showAdminByMentor());
        model.addAttribute("replies", adminService.showAdminByReply());
        model.addAttribute("boards", adminService.showAdminByBoard());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/main";
    }

    // ?????? ??????
    @GetMapping("/mentor")
    public String adminMentorMentor(Model model, @RequestParam(value = "memberId", required = false)Long memberId, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10) Pageable pageable) {
        Page<Mentor> mentors = adminService.mentorShowAll(pageable, keyword, searchText);

        if (memberId != null ) {
//            List<MentorMentee> mentees = adminService.showMentee(memberId);
//
//            log.info("?????? ??????" + memberId);
//
//            model.addAttribute("mentees", mentees);
////            mentees.stream().forEach(m -> log.info("?????? ??????... ??? " + m));
//            mentees.stream().forEach(m -> log.info("?????? ??????... ??? " + m.toString()));
//            for(MentorMentee mentorMentee : mentees){
//                Long memberIdtest = mentorMentee.getMentor().getMemberId();
//                memberIds.add(memberIdtest);
//            }
        }
        model.addAttribute("mentorCounts", adminService.countByMentor());
        model.addAttribute("maxPage", 10);
        model.addAttribute("mentors", mentors);
        model.addAttribute("resultCount", adminService.searchCountByMentor(keyword, searchText));
        model.addAttribute("page", pageable);
//        model.addAttribute("countProgram", adminService.countByMentorProgram);
        model.addAttribute("data", mentors.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/mentor";
    }

    @ResponseBody
    @GetMapping("/mentee/list/{memberId}")
    public List<MentorMenteeDTO> menteeList(@PathVariable("memberId") Long memberId) {
        log.info("????????? : " + memberId);
        List<MentorMenteeDTO> mentees = adminService.showMentee(Long.valueOf(memberId));
        return adminService.showMentee(Long.valueOf(memberId));
    }

    @GetMapping("/mentor/promotion")
    public String mentorPromotion(Model model, Criteria criteria, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10) Pageable pageable){
        Page<MentorBoard> mentorBoards = adminService.mentorBoardShowAll(pageable, keyword, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }
        model.addAttribute("promotionCounts", adminService.countByMentorBoard());
        model.addAttribute("maxPage", 10);
        model.addAttribute("mentorBoards", mentorBoards);
        model.addAttribute("resultCount", adminService.searchCountByMentorBoard(keyword, searchText));
        model.addAttribute("page", pageable);
        model.addAttribute("data", mentorBoards.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/promotion";
    }

//    ?????? ?????? ??? ??????
    @PostMapping("/mentor/promotion/delete")
    public RedirectView mentorPromotionDelete(Criteria criteria, RedirectAttributes redirectAttributes, Long mentorBoardId){
        mentorService.removeMentorBoard(mentorBoardId);
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());
        return new RedirectView("/admin/mentor/promotion");
    }

    // ?????? ??????
    @GetMapping("/notice")
    public String noticeList (Criteria criteria, Model model, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "NoticeId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<Notice> noticeLists = noticeService.searchShowAll(pageable, keyword, searchText, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }
        model.addAttribute("noticeLists", noticeLists);
        model.addAttribute("maxPage", 10);
        model.addAttribute("noticeCount", noticeService.countByNotice());
        model.addAttribute("data", noticeLists.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/notice";
    }

//    ?????? ??????
    @GetMapping("/notice/register")
    public String noticeWrite(Criteria criteria, Model model) {
        model.addAttribute("notice", new NoticeDTO());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/notice-write";
    }

    @PostMapping("/notice/register")
    public RedirectView noticeWrite(NoticeDTO noticeDTO) {
        noticeService.register(noticeDTO);
        return new RedirectView("/admin/notice");
    }

//    ?????? ??????
    @GetMapping("/notice/update")
    public String noticeUpdate(Criteria criteria, Long noticeId, Model model) {
        model.addAttribute("notice", noticeService.showOne(noticeId));
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/notice-update";
    }

    @PostMapping("/notice/update")
    public RedirectView noticeUpdate(Criteria criteria, NoticeDTO noticeDTO, RedirectAttributes redirectAttributes) {
        noticeService.update(noticeDTO);
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());

        return new RedirectView("/admin/notice");
    }

//    ?????? ??????
    @PostMapping("/notice/delete")
    public RedirectView noticeDelete(Criteria criteria, RedirectAttributes redirectAttributes, Long noticeId){
        noticeService.remove(noticeId);
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());
        return new RedirectView("/admin/notice");
    }

    // ???????????? ??????
    @GetMapping("/policy")
    public String policy(Criteria criteria, Model model, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "policyId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<Policy> policies = informationService.policySearchShowAll(pageable, keyword, searchText, searchText);

        model.addAttribute("policies", policies);
        model.addAttribute("maxPage", 10); // ?????????
        model.addAttribute("policyCounts", informationService.countByPolicy()); // ?????? ??? ??????
        model.addAttribute("data", policies.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/policy";
    }

//    ?????? ??????
    @GetMapping("/policy/register")
    public String policyWrite(Criteria criteria, Model model) {
        model.addAttribute("policy", new Policy());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/policy-write";
    }

    @PostMapping("/policy/register")
    public RedirectView policyWrite(Policy policy) {
        informationService.policyAdd(policy);
        return new RedirectView("/admin/policy");
    }

//    ?????? ??????
    @GetMapping("/policy/update")
    public String policyUpdate(Criteria criteria, Long policyId, Model model) {
        model.addAttribute("policy", informationService.policyShowOne(policyId));
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/policy-update";
    }

    @PostMapping("/policy/update")
    public RedirectView policyUpdate(Criteria criteria, Policy policy, RedirectAttributes redirectAttributes) {
        informationService.policyUpdate(policy);
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());

        return new RedirectView("/admin/policy");
    }

//    ?????? ??????
    @PostMapping("/policy/delete")
    public RedirectView policyDelete(Criteria criteria, RedirectAttributes redirectAttributes, Long policyId){
        informationService.policyDelete(policyId);
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());
        return new RedirectView("/admin/policy");
    }

    // ???????????? ??????
    @GetMapping("/program")
    public String adminProgramList(Model model, Criteria criteria, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10) Pageable pageable){
        Page<Program> programs = adminService.programShowAll(pageable, keyword, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }
        model.addAttribute("programCounts", adminService.countByProgram()); // ?????? ??? ??????
        model.addAttribute("maxPage", 10); // ?????????
        model.addAttribute("programs", programs);
        model.addAttribute("resultCount", adminService.countByProgramSearch(keyword, searchText));
        model.addAttribute("data", programs.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/program-list";
    }

//    ???????????? ??????
    @PostMapping("/program/delete")
    public RedirectView programDelete(Criteria criteria, RedirectAttributes redirectAttributes, Long programId){
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());

        programDeleteService.programDelete(programId);
        return new RedirectView("/admin/program");
    }

    @GetMapping("/program/participant")
    public String adminProgramParticipant(Model model, Criteria criteria, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "ProgramApplyId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<MemberProgram> memberPrograms = adminService.memberProgramShowAll(pageable, keyword, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }
        model.addAttribute("memberProgramCounts", adminService.countByMemberProgram()); // ??? ??????
        model.addAttribute("maxPage", 10); // ?????????
        model.addAttribute("memberPrograms", memberPrograms);
        model.addAttribute("resultCount", adminService.countByMemberProgramSearch(keyword, searchText));
        model.addAttribute("data", memberPrograms.isEmpty());

        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/program-participant";
    }

    @GetMapping("/program/pay")
    public String adminPay(Model model){

        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/program-pay";
    }

    // ?????? ??????
    @GetMapping("/review")
    public String adminMentorReply(Model model, Criteria criteria, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "ReviewId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<Review> reviews = adminService.reviewShowAll(pageable, keyword, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }

        model.addAttribute("reviewCounts", adminService.countByReview());
        model.addAttribute("maxPage", 10);
        model.addAttribute("reviews", reviews);
        if(keyword.equals("w")) {
            model.addAttribute("resultCount", adminService.countByReviewNickname(searchText));
        } else {
            model.addAttribute("resultCount", reviews.getTotalPages());
        }
        model.addAttribute("data", reviews.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/mentor-review";
    }

//    ?????? ??????
    @PostMapping("/review/delete")
    public RedirectView reviewDelete(Criteria criteria, Long reviewId, RedirectAttributes redirectAttributes){
//        reviewService.removeReview(reviewId);
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());
        return new RedirectView("/admin/review");
    }

//        ?????? ??????
    @GetMapping("/reply")
    public String adminBoardReply(Model model, Criteria criteria, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "ReplyId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<Reply> replies = adminService.replyShowAll(pageable, keyword, searchText);
        if(criteria.getPage() == 0) {
            criteria.createCriteria(pageable.getPageNumber(), searchText, keyword);
        }

        model.addAttribute("replyCounts", adminService.countByReply());
        model.addAttribute("maxPage", 10);
        model.addAttribute("replies", replies);
        if(keyword.equals("w")) {
            model.addAttribute("resultCount", adminService.countByReplyNickname(searchText));
        } else {
            model.addAttribute("resultCount", replies.getTotalPages());
        }
        model.addAttribute("data", replies.isEmpty());
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        return "/admin/board-reply";
    }

//    ?????? ??????
    @PostMapping("/reply/delete")
    public RedirectView replyDelete(Criteria criteria, Long replyId, RedirectAttributes redirectAttributes){
        replyService.removeReply(replyId);
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());
        return new RedirectView("/admin/reply");
    }

    // ????????? ??????
    @GetMapping("/user")
    public String user(Criteria criteria, Model model, @RequestParam(required = false, defaultValue = "")String keyword, @RequestParam(required = false, defaultValue = "")String searchText, @PageableDefault(size = 10, sort = "MemberId", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<Member> members = adminService.memberShowAll(pageable, keyword, searchText);

        model.addAttribute("members", members);
        model.addAttribute("maxPage", 10); // ?????????
        model.addAttribute("memberCounts", adminService.countByMember()); // ?????? ???
        model.addAttribute("data", members.isEmpty());
        return "/admin/user";
    }

//    ?????? ??????
    @PostMapping("/user/delete")
    public RedirectView userDelete(Criteria criteria, Long memberId, RedirectAttributes redirectAttributes){
        adminService.removeMember(memberId);
        redirectAttributes.addAttribute("page", criteria.getPage());
        redirectAttributes.addAttribute("searchText", criteria.getSearchText());
        redirectAttributes.addAttribute("keyword", criteria.getKeyword());
        return new RedirectView("/admin/user");
    }


}
