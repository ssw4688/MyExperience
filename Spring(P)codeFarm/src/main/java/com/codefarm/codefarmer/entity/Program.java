package com.codefarm.codefarmer.entity;

import com.codefarm.codefarmer.domain.ProgramDTO;
import com.codefarm.codefarmer.type.ProgramLevel;
import com.codefarm.codefarmer.type.ProgramType;
import com.querydsl.core.annotations.QueryProjection;
import com.sun.istack.NotNull;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "TBL_PROGRAM")
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Program extends Period{
    @Id @GeneratedValue
    private Long programId;
    @NotNull
    private String programCrop;
    @NotNull
    @Enumerated(EnumType.STRING)
    private ProgramType programType;
    @NotNull
    private String programTarget1;
    @NotNull
    private String programTarget2;
    @NotNull
    private String programTarget3;
    @NotNull
    private String programTarget4;
    @NotNull
    private String programTitle;
    @NotNull
    private String programTitleSub;
    @NotNull
    @Enumerated(EnumType.STRING)
    private ProgramLevel programLevel;
    @NotNull
    private String programResult1;
    @NotNull
    private String programResult2;
    @NotNull
    private String programResult3;
    @NotNull
    private String programResult4;
    @NotNull
    private String programFarmerInfo;
    @NotNull
    private String programInfoTitle1;
    @NotNull
    private String programInfoContent1;
    @NotNull
    private String programInfoTitle2;
    @NotNull
    private String programInfoContent2;
    @NotNull
    private String programInfoTitle3;
    @NotNull
    private String programInfoContent3;
    @NotNull
    private String programInfoTitle4;
    @NotNull
    private String programInfoContent4;
    @NotNull
    private LocalDateTime programWorkDate;
    @NotNull
    private LocalDateTime programWorkStartTime;
    @NotNull
    private LocalDateTime programApplyStartDate;
    @NotNull
    private LocalDateTime programApplyEndDate;
    @NotNull
    private LocalDateTime programWorkEndTime;
    @ColumnDefault("0")
    private int programApplyCount;
    @NotNull
    private int programApplyTotalCount;
    @NotNull
    private int programPrice;
    @NotNull
    private String programLocation;
    @NotNull
    private String programInquire;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MEMBER_ID")
    private Member member;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "program")
    private List<ProgramFile> programFiles;

    public void update(ProgramDTO programDTO){
        this.programCrop = programDTO.getProgramCrop();
        this.programType = programDTO.getProgramType();
        this.programTarget1 = programDTO.getProgramTarget1();
        this.programTarget2 = programDTO.getProgramTarget2();
        this.programTarget3 = programDTO.getProgramTarget3();
        this.programTarget4 = programDTO.getProgramTarget4();
        this.programTitle = programDTO.getProgramTitle();
        this.programTitleSub = programDTO.getProgramTitleSub();
        this.programLevel = programDTO.getProgramLevel();
        this.programResult1 = programDTO.getProgramResult1();
        this.programResult2 = programDTO.getProgramResult2();
        this.programResult3 = programDTO.getProgramResult3();
        this.programResult4 = programDTO.getProgramResult4();
        this.programFarmerInfo = programDTO.getProgramFarmerInfo();
        this.programInfoTitle1 = programDTO.getProgramInfoTitle1();
        this.programInfoContent1 = programDTO.getProgramInfoContent1();
        this.programInfoTitle2 = programDTO.getProgramInfoTitle2();
        this.programInfoContent2 = programDTO.getProgramInfoContent2();
        this.programInfoTitle3 = programDTO.getProgramInfoTitle3();
        this.programInfoContent3 = programDTO.getProgramInfoContent3();
        this.programInfoTitle4 = programDTO.getProgramInfoTitle4();
        this.programInfoContent4 = programDTO.getProgramInfoContent4();
        this.programWorkDate = programDTO.getProgramWorkDate();
        this.programWorkStartTime = programDTO.getProgramWorkStartTime();
        this.programWorkEndTime = programDTO.getProgramWorkEndTime();
        this.programApplyStartDate = programDTO.getProgramApplyStartDate();
        this.programApplyEndDate = programDTO.getProgramApplyEndDate();
        this.programApplyTotalCount = programDTO.getProgramApplyTotalCount();
        this.programPrice = programDTO.getProgramPrice();
        this.programLocation = programDTO.getProgramLocation();
        this.programInquire = programDTO.getProgramInquire();
    }

    public void changeMember(Member member){
        this.member = member;
    }

    @Builder
    public Program(String programCrop, ProgramType programType, String programTarget1, String programTarget2, String programTarget3, String programTarget4, String programTitle, String programTitleSub, ProgramLevel programLevel, String programResult1, String programResult2, String programResult3, String programResult4, String programFarmerInfo, String programInfoTitle1, String programInfoContent1, String programInfoTitle2, String programInfoContent2, String programInfoTitle3, String programInfoContent3, String programInfoTitle4, String programInfoContent4, LocalDateTime programWorkDate, LocalDateTime programWorkStartTime, LocalDateTime programApplyStartDate, LocalDateTime programApplyEndDate, LocalDateTime programWorkEndTime, int programApplyCount, int programApplyTotalCount, int programPrice, String programLocation, String programInquire) {
        this.programCrop = programCrop;
        this.programType = programType;
        this.programTarget1 = programTarget1;
        this.programTarget2 = programTarget2;
        this.programTarget3 = programTarget3;
        this.programTarget4 = programTarget4;
        this.programTitle = programTitle;
        this.programTitleSub = programTitleSub;
        this.programLevel = programLevel;
        this.programResult1 = programResult1;
        this.programResult2 = programResult2;
        this.programResult3 = programResult3;
        this.programResult4 = programResult4;
        this.programFarmerInfo = programFarmerInfo;
        this.programInfoTitle1 = programInfoTitle1;
        this.programInfoContent1 = programInfoContent1;
        this.programInfoTitle2 = programInfoTitle2;
        this.programInfoContent2 = programInfoContent2;
        this.programInfoTitle3 = programInfoTitle3;
        this.programInfoContent3 = programInfoContent3;
        this.programInfoTitle4 = programInfoTitle4;
        this.programInfoContent4 = programInfoContent4;
        this.programWorkDate = programWorkDate;
        this.programWorkStartTime = programWorkStartTime;
        this.programApplyStartDate = programApplyStartDate;
        this.programApplyEndDate = programApplyEndDate;
        this.programWorkEndTime = programWorkEndTime;
        this.programApplyCount = programApplyCount;
        this.programApplyTotalCount = programApplyTotalCount;
        this.programPrice = programPrice;
        this.programLocation = programLocation;
        this.programInquire = programInquire;
    }
}






















