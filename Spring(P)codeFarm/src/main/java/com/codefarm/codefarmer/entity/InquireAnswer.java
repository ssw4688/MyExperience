package com.codefarm.codefarmer.entity;

import com.codefarm.codefarmer.type.Status;
import com.querydsl.core.annotations.QueryProjection;
import com.sun.istack.NotNull;
import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "TBL_INQUIRE_ANSWER")
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class InquireAnswer extends Period{
    @Id @GeneratedValue
    private Long inquireAnswerId;
    @NotNull
    private String inquireAnswer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "INQUIRE_ID")
    private Inquire inquire;

    public void changeInquire(Inquire inquire){
        this.inquire = inquire;
    }

    @Builder
    public InquireAnswer(String inquireAnswer) {
        this.inquireAnswer = inquireAnswer;
    }

    @QueryProjection
    public InquireAnswer(String inquireAnswer, Inquire inquire) {
        this.inquireAnswer = inquireAnswer;
        this.inquire = inquire;
    }
}
