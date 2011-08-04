.class Lcom/android/email/activity/MessageList$ControllerResults;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Lcom/android/email/Controller$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field mSendMessageException:Lcom/android/email/mail/MessagingException;

.field mWaitForMailboxType:I

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 1
    .parameter

    .prologue
    .line 7748
    iput-object p1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7754
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mWaitForMailboxType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7748
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList$ControllerResults;-><init>(Lcom/android/email/activity/MessageList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageList$ControllerResults;Lcom/android/email/mail/MessagingException;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 7748
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageList$ControllerResults;->updateBanner(Lcom/android/email/mail/MessagingException;IJ)V

    return-void
.end method

.method private updateBanner(Lcom/android/email/mail/MessagingException;IJ)V
    .locals 3
    .parameter "result"
    .parameter "progress"
    .parameter "mailboxKey"

    .prologue
    .line 7885
    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-eqz v1, :cond_1

    .line 7925
    :cond_0
    :goto_0
    return-void

    .line 7888
    :cond_1
    if-eqz p1, :cond_4

    .line 7889
    const v0, 0x7f08003a

    .line 7890
    .local v0, id:I
    instance-of v1, p1, Lcom/android/email/mail/AuthenticationFailedException;

    if-eqz v1, :cond_2

    .line 7891
    const v0, 0x7f0800d1

    .line 7921
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    goto :goto_0

    .line 7892
    :cond_2
    instance-of v1, p1, Lcom/android/email/mail/CertificateValidationException;

    if-eqz v1, :cond_3

    .line 7893
    const v0, 0x7f0800d4

    goto :goto_1

    .line 7895
    :cond_3
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 7897
    :sswitch_0
    const v0, 0x7f0800db

    .line 7898
    goto :goto_1

    .line 7900
    :sswitch_1
    const v0, 0x7f0800d8

    .line 7901
    goto :goto_1

    .line 7903
    :sswitch_2
    const v0, 0x7f0800d9

    .line 7904
    goto :goto_1

    .line 7906
    :sswitch_3
    const v0, 0x7f0800da

    .line 7907
    goto :goto_1

    .line 7910
    :sswitch_4
    const v0, 0x7f0802cb

    .line 7911
    goto :goto_1

    .line 7914
    :sswitch_5
    const v0, 0x7f0802cd

    goto :goto_1

    .line 7922
    .end local v0           #id:I
    :cond_4
    if-ltz p2, :cond_0

    .line 7923
    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    goto :goto_0

    .line 7895
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x40001 -> :sswitch_4
        0x40002 -> :sswitch_5
    .end sparse-switch
.end method

.method private updateProgress(Lcom/android/email/mail/MessagingException;I)V
    .locals 2
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 7864
    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 7865
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->progress(Z)V

    .line 7869
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 7870
    const-string v0, "MessageList >>"

    const-string v1, "[r2d209 check] updateProgress"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7871
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 7873
    :cond_2
    return-void

    .line 7866
    :cond_3
    if-nez p2, :cond_1

    .line 7867
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->progress(Z)V

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
    .line 7951
    return-void
.end method

.method public createMailbox()V
    .locals 4

    .prologue
    .line 7929
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v1, Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$5402(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$RefreshFolderListTask;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 7930
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$7000(Lcom/android/email/activity/MessageList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 7932
    return-void
.end method

.method public deviceInformationCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 7957
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 7797
    return-void
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 7944
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 7782
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 7778
    return-void
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 7787
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/email/mail/MessagingException;[BII)V
    .locals 5
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 7967
    if-eqz p1, :cond_2

    .line 7968
    const/4 v0, 0x0

    .line 7970
    .local v0, message:Ljava/lang/String;
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/email/mail/DeviceAccessException;

    if-eqz v2, :cond_0

    .line 7971
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f0802cb

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7972
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 7976
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 7990
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 8001
    .end local v0           #message:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 7978
    .restart local v0       #message:Ljava/lang/String;
    :sswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f0800fb

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7979
    goto :goto_0

    .line 7981
    :sswitch_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f0800d1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7982
    goto :goto_0

    .line 7984
    :sswitch_2
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f0800db

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 7987
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 7988
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7992
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_2
    const/16 v2, 0x64

    if-ne p3, v2, :cond_1

    .line 7993
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$9200(Lcom/android/email/activity/MessageList;)V

    .line 7994
    const/4 v2, 0x1

    if-ne p4, v2, :cond_3

    .line 7995
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v4, 0x7f080101

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList$MessageListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 7997
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v4, 0x7f0800fd

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList$MessageListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 7976
    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 5
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 7836
    if-eqz p1, :cond_0

    .line 7837
    const/4 v0, 0x0

    .line 7839
    .local v0, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 7858
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 7862
    .end local v0           #message:Ljava/lang/String;
    :goto_1
    return-void

    .line 7841
    .restart local v0       #message:Ljava/lang/String;
    :sswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f08024d

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7842
    goto :goto_0

    .line 7844
    :sswitch_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f0800d1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7845
    goto :goto_0

    .line 7847
    :sswitch_2
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f0800db

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7848
    goto :goto_0

    .line 7851
    :sswitch_3
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f0802cb

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 7855
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 7856
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7860
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v4, 0x7f08024e

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList$MessageListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 7839
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x16 -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 6
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const-wide/16 v4, -0x1

    const/16 v3, 0x64

    .line 7811
    instance-of v0, p1, Lcom/android/email/mail/DeviceAccessException;

    if-eqz v0, :cond_0

    .line 7812
    iput-object p1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/email/mail/MessagingException;

    .line 7813
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/email/mail/MessagingException;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/email/activity/MessageList$ControllerResults;->updateBanner(Lcom/android/email/mail/MessagingException;IJ)V

    .line 7814
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/MessageList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 7817
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9700(Lcom/android/email/activity/MessageList;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 7819
    cmp-long v0, p4, v4

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    if-nez p6, :cond_1

    .line 7820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/email/mail/MessagingException;

    .line 7823
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/email/mail/MessagingException;

    if-nez v0, :cond_2

    .line 7824
    iput-object p1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/email/mail/MessagingException;

    .line 7827
    :cond_2
    cmp-long v0, p4, v4

    if-nez v0, :cond_3

    if-ne p6, v3, :cond_3

    .line 7828
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/email/mail/MessagingException;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v1

    invoke-direct {p0, v0, p6, v1, v2}, Lcom/android/email/activity/MessageList$ControllerResults;->updateBanner(Lcom/android/email/mail/MessagingException;IJ)V

    .line 7831
    :cond_3
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MessageList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 7833
    :cond_4
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
    .line 7792
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V
    .locals 2
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 7769
    invoke-direct {p0, p1, p6, p4, p5}, Lcom/android/email/activity/MessageList$ControllerResults;->updateBanner(Lcom/android/email/mail/MessagingException;IJ)V

    .line 7770
    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p6, v0, :cond_1

    .line 7771
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/email/Email;->updateMailboxRefreshTime(J)V

    .line 7773
    :cond_1
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MessageList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 7774
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 2
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    .line 7760
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/MessageList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 7761
    const/16 v0, 0x64

    if-ne p4, v0, :cond_0

    .line 7762
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mWaitForMailboxType:I

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->lookupMailboxType(JI)V

    .line 7764
    :cond_0
    return-void
.end method
