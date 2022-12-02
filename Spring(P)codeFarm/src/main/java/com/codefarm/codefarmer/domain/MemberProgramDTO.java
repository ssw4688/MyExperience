package com.codefarm.codefarmer.domain;

import com.codefarm.codefarmer.entity.Alba;
import com.codefarm.codefarmer.entity.Member;
import com.codefarm.codefarmer.entity.MemberProgram;
import com.codefarm.codefarmer.entity.Program;
import com.codefarm.codefarmer.type.ProgramStatus;
import com.codefarm.codefarmer.type.Status;
import com.querydsl.core.annotations.QueryProjection;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.ColumnDefault;
import org.springframework.stereotype.Component;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.LocalDateTime;

@Component
@NoArgsConstructor
@Data
public class MemberProgramDTO {
    private Long programApplyId;
    private Program program;
    private Member member;
    private ProgramStatus programStatus;
    private int programApplyCount;
    private int programPayment;
    private String programApplyName;
    private String programApplyPhoneNum;
    private String programApplyEmail;
    private String programApplyLocation;
    private LocalDateTime programApplyBirth;

    public MemberProgram toEntity(){
        return MemberProgram.builder()
                .programApplyCount(programApplyCount)
                .programPayment(programPayment)
                .programStatus(programStatus)
                .programApplyName(programApplyName)
                .programApplyBirth(programApplyBirth)
                .programApplyEmail(programApplyEmail)
                .programApplyLocation(programApplyLocation)
                .programApplyPhoneNum(programApplyPhoneNum)
                .build();
    }

    @QueryProjection
    public MemberProgramDTO(Program program, Member member, ProgramStatus programStatus, int programApplyCount, int programPayment) {
        this.program = program;
        this.member = member;
        this.programStatus = programStatus;
        this.programApplyCount = programApplyCount;
        this.programPayment = programPayment;
    }
}