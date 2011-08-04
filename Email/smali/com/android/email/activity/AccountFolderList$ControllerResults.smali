.class Lcom/android/email/activity/AccountFolderList$ControllerResults;
.super Ljava/lang/Object;
.source "AccountFolderList.java"

# interfaces
.implements Lcom/android/email/Controller$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountFolderList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/AccountFolderList;)V
    .locals 0
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderList$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderList$ControllerResults;-><init>(Lcom/android/email/activity/AccountFolderList;)V

    return-void
.end method

.method private updateProgress(Lcom/android/email/mail/MessagingException;I)V
    .locals 2
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 1103
    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderList;->access$1400(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountFolderList$MessageListHandler;->progress(Z)V

    .line 1108
    :cond_1
    :goto_0
    return-void

    .line 1105
    :cond_2
    if-nez p2, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderList;->access$1400(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountFolderList$MessageListHandler;->progress(Z)V

    goto :goto_0
.end method


# virtual methods
.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 1121
    return-void
.end method

.method public createMailbox()V
    .locals 0

    .prologue
    .line 1145
    return-void
.end method

.method public deviceInformationCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 1140
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 1076
    return-void
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 1126
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 1071
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1067
    return-void
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1087
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/email/mail/MessagingException;[BII)V
    .locals 0
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 1133
    return-void
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 1112
    return-void
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 1
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1097
    const/16 v0, 0x64

    if-ne p6, v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderList;->access$800(Lcom/android/email/activity/AccountFolderList;)V

    .line 1100
    :cond_0
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
    .line 1092
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/AccountFolderList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 1093
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V
    .locals 1
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    const/16 v0, 0x64

    .line 1056
    if-nez p1, :cond_0

    if-ne p6, v0, :cond_1

    .line 1057
    :cond_0
    invoke-static {p4, p5}, Lcom/android/email/Email;->updateMailboxRefreshTime(J)V

    .line 1059
    :cond_1
    if-ne p6, v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderList;->access$800(Lcom/android/email/activity/AccountFolderList;)V

    .line 1062
    :cond_2
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/AccountFolderList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 1063
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    .line 1051
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/AccountFolderList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 1052
    return-void
.end method
