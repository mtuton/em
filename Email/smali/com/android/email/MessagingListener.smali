.class public Lcom/android/email/MessagingListener;
.super Ljava/lang/Object;
.source "MessagingListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkMailFinished(Landroid/content/Context;JJJ)V
    .locals 0
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"

    .prologue
    .line 66
    return-void
.end method

.method public checkMailStarted(Landroid/content/Context;JJ)V
    .locals 0
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 63
    return-void
.end method

.method public controllerCommandCompleted(Z)V
    .locals 0
    .parameter "moreCommandsToRun"

    .prologue
    .line 119
    return-void
.end method

.method public listFoldersFailed(JLjava/lang/String;)V
    .locals 0
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 36
    return-void
.end method

.method public listFoldersFinished(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 39
    return-void
.end method

.method public listFoldersStarted(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 33
    return-void
.end method

.method public loadAttachmentFailed(JJJLjava/lang/String;)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "reason"

    .prologue
    .line 108
    return-void
.end method

.method public loadAttachmentFinished(JJJZ)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 101
    return-void
.end method

.method public loadAttachmentStarted(JJJZ)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 93
    return-void
.end method

.method public loadMessageForViewFailed(JLjava/lang/String;)V
    .locals 0
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 60
    return-void
.end method

.method public loadMessageForViewFinished(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 57
    return-void
.end method

.method public loadMessageForViewStarted(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 54
    return-void
.end method

.method public movemessageToOtherAccountCallback(ZJJJJJJII)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "source_accountId"
    .parameter "orig_boxkey"
    .parameter "target_accountId"
    .parameter "target_boxkey"
    .parameter "source_trashMailboxId"
    .parameter "target_server_type"
    .parameter "source_server_type"

    .prologue
    .line 86
    return-void
.end method

.method public sendPendingMessagesCompleted(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 72
    return-void
.end method

.method public sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 75
    return-void
.end method

.method public sendPendingMessagesStarted(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 69
    return-void
.end method

.method public synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 51
    return-void
.end method

.method public synchronizeMailboxFinished(JJII)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"

    .prologue
    .line 47
    return-void
.end method

.method public synchronizeMailboxStarted(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 43
    return-void
.end method
