.class public Lcom/android/email/mail/AuthenticationFailedException;
.super Lcom/android/email/mail/MessagingException;
.source "AuthenticationFailedException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 23
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/mail/AuthenticationFailedException;->mExceptionType:I

    .line 29
    return-void
.end method
