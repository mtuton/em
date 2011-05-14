.class Lcom/android/email/activity/MessageCompose$Listener;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/Controller$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 4281
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$Listener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GALSearchCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "searchResults"

    .prologue
    .line 4339
    return-void
.end method

.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 4317
    return-void
.end method

.method public createMailbox()V
    .locals 0

    .prologue
    .line 4343
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 4304
    return-void
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 4333
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 4299
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4295
    return-void
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4310
    return-void
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 4328
    return-void
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4325
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/email/mail/MessagingException;JJIJ)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 4321
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V
    .locals 1
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 4288
    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p6, v0, :cond_1

    .line 4289
    :cond_0
    invoke-static {p4, p5}, Lcom/android/email/Email;->updateMailboxRefreshTime(J)V

    .line 4291
    :cond_1
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 4284
    return-void
.end method
