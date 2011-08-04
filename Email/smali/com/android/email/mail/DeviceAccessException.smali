.class public Lcom/android/email/mail/DeviceAccessException;
.super Lcom/android/email/mail/MessagingException;
.source "DeviceAccessException.java"


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "exceptionType"
    .parameter "exceptionMessage"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    .line 12
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "exceptionType"
    .parameter "message"

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    .line 9
    return-void
.end method
