.class public interface abstract Lcom/android/email/Controller$Result;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Result"
.end annotation


# virtual methods
.method public abstract OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
.end method

.method public abstract createMailbox()V
.end method

.method public abstract deviceInformationCallback(Lcom/android/email/mail/MessagingException;JI)V
.end method

.method public abstract emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
.end method

.method public abstract folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
.end method

.method public abstract loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
.end method

.method public abstract loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
.end method

.method public abstract loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
.end method

.method public abstract moveConvAlwaysCallback(Lcom/android/email/mail/MessagingException;[BII)V
.end method

.method public abstract moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
.end method

.method public abstract sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
.end method

.method public abstract serviceCheckMailCallback(Lcom/android/email/mail/MessagingException;JJIJ)V
.end method

.method public abstract updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V
.end method

.method public abstract updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
.end method
