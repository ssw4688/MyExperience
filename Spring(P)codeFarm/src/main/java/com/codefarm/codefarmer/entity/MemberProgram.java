package com.codefarm.codefarmer.entity;

import com.codefarm.codefarmer.type.ProgramStatus;
import com.sun.istack.NotNull;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name = "TBL_MEMBER_PROGRAM")
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class MemberProgram extends Period{
    @Id @GeneratedValue
    private Long programApplyId;

    @NotNull
    @Enumerated(EnumType.STRING)
    private ProgramStatus programStatus;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PROGRAM_ID")
    private Program program;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MEMBER_ID")
    private Member member;

    @ColumnDefault("1")
    private int programApplyCount;
    @ColumnDefault("0")
    private int programPayment;

    @NotNull
    private String programApplyName;

    @NotNull
    private String programApplyPhoneNum;

    @NotNull
    private String programApplyEmail;

    @NotNull
    private String programApplyLocation;

    @NotNull
    private LocalDateTime programApplyBirth;

    public void changeMember(Member member){
        this.member = member;
    }
    public void changeProgram(Program program){ this.program = program; }

   /* @Builder
  *//*  public MemberProgram(ProgramStatus programStatus, int programApplyCount, int programPayment ,String pro) {
        this.programStatus = programStatus;
        this.programApplyCount = programApplyCount;
        this.programPayment = programPayment;

    }*/

    @Builder
    public MemberProgram(ProgramStatus programStatus, int programApplyCount, int programPayment, String programApplyName, String programApplyPhoneNum, String programApplyEmail, String programApplyLocation, LocalDateTime programApplyBirth) {
        this.programStatus = programStatus;
        this.programApplyCount = programApplyCount;
        this.programPayment = programPayment;
        this.programApplyName = programApplyName;
        this.programApplyPhoneNum = programApplyPhoneNum;
        this.programApplyEmail = programApplyEmail;
        this.programApplyLocation = programApplyLocation;
        this.programApplyBirth = programApplyBirth;
    }
}
