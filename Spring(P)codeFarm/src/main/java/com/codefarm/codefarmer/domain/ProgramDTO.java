package com.codefarm.codefarmer.domain;

import com.codefarm.codefarmer.entity.Member;
import com.codefarm.codefarmer.entity.Program;
import com.codefarm.codefarmer.type.ProgramLevel;
import com.codefarm.codefarmer.type.ProgramType;
import com.querydsl.core.annotations.QueryProjection;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.ColumnDefault;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.time.LocalDateTime;

@Component
@NoArgsConstructor
@Data
public class ProgramDTO {
    private Long programId;
    private String programCrop;
    private ProgramType programType;
    private String programTarget1;
    private String programTarget2;
    private String programTarget3;
    private String programTarget4;
    private String programTitle;
    private String programTitleSub;
    private ProgramLevel programLevel;
    private String programResult1;
    private String programResult2;
    private String programResult3;
    private String programResult4;
    private String programFarmerInfo;
    private String programInfoTitle1;
    private String programInfoContent1;
    private String programInfoTitle2;
    private String programInfoContent2;
    private String programInfoTitle3;
    private String programInfoContent3;
    private String programInfoTitle4;
    private String programInfoContent4;
    private LocalDateTime programWorkDate;
    private LocalDateTime programWorkStartTime;
    private LocalDateTime programWorkEndTime;
    private LocalDateTime programApplyStartDate;
    private LocalDateTime programApplyEndDate;
    private int programApplyCount;
    private int programApplyTotalCount;
    private int programPrice;
    private String programLocation;
    private String programInquire;
    private Member member;


    public Program toEntity(){
        return Program.builder()
                .programApplyCount(programApplyCount)
                .programApplyEndDate(programApplyEndDate)
                .programApplyStartDate(programApplyStartDate)
                .programApplyTotalCount(programApplyTotalCount)
                .programCrop(programCrop)
                .programFarmerInfo(programFarmerInfo)
                .programInfoContent1(programInfoContent1)
                .programInfoContent2(programInfoContent2)
                .programInfoContent3(programInfoContent3)
                .programInfoContent4(programInfoContent4)
                .programInfoTitle1(programInfoTitle1)
                .programInfoTitle2(programInfoTitle2)
                .programInfoTitle3(programInfoTitle3)
                .programInfoTitle4(programInfoTitle4)
                .programInquire(programInquire)
                .programLevel(programLevel)
                .programLocation(programLocation)
                .programPrice(programPrice)
                .programResult1(programResult1)
                .programResult2(programResult2)
                .programResult3(programResult3)
                .programResult4(programResult4)
                .programTarget1(programTarget1)
                .programTarget2(programTarget2)
                .programTarget3(programTarget3)
                .programTarget4(programTarget4)
                .programTitle(programTitle)
                .programTitleSub(programTitleSub)
                .programType(programType)
                .programWorkDate(programWorkDate)
                .programWorkEndTime(programWorkEndTime)
                .programWorkStartTime(programWorkStartTime)
                .build();
    }

    @QueryProjection
    public ProgramDTO(String programCrop, ProgramType programType, String programTarget1, String programTarget2, String programTarget3, String programTarget4, String programTitle, String programTitleSub, ProgramLevel programLevel, String programResult1, String programResult2, String programResult3, String programResult4, String programFarmerInfo, String programInfoTitle1, String programInfoContent1, String programInfoTitle2, String programInfoContent2, String programInfoTitle3, String programInfoContent3, String programInfoTitle4, String programInfoContent4, LocalDateTime programWorkDate, LocalDateTime programWorkStartTime, LocalDateTime programWorkEndTime, LocalDateTime programApplyStartDate, LocalDateTime programApplyEndDate, int programApplyCount, int programApplyTotalCount, int programPrice, String programLocation, String programInquire) {
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
        this.programWorkEndTime = programWorkEndTime;
        this.programApplyStartDate = programApplyStartDate;
        this.programApplyEndDate = programApplyEndDate;
        this.programApplyCount = programApplyCount;
        this.programApplyTotalCount = programApplyTotalCount;
        this.programPrice = programPrice;
        this.programLocation = programLocation;
        this.programInquire = programInquire;
    }
}
























