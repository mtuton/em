.class public Lcom/android/email/mail/Sender$LimitViolationException;
.super Lcom/android/email/mail/MessagingException;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitViolationException"
.end annotation


# instance fields
.field public final mActual:J

.field public final mLimit:J

.field public final mMsgResourceId:I


# direct methods
.method private constructor <init>(IJJ)V
    .locals 1
    .parameter "msgResourceId"
    .parameter "actual"
    .parameter "limit"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    .line 163
    iput p1, p0, Lcom/android/email/mail/Sender$LimitViolationException;->mMsgResourceId:I

    .line 164
    iput-wide p2, p0, Lcom/android/email/mail/Sender$LimitViolationException;->mActual:J

    .line 165
    iput-wide p4, p0, Lcom/android/email/mail/Sender$LimitViolationException;->mLimit:J

    .line 166
    return-void
.end method

.method public static check(IJJ)V
    .locals 6
    .parameter "msgResourceId"
    .parameter "actual"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/Sender$LimitViolationException;
        }
    .end annotation

    .prologue
    .line 170
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 171
    new-instance v0, Lcom/android/email/mail/Sender$LimitViolationException;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/mail/Sender$LimitViolationException;-><init>(IJJ)V

    throw v0

    .line 173
    :cond_0
    return-void
.end method
