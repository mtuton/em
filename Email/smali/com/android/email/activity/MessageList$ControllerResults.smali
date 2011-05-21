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
    .line 6126
    iput-object p1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mWaitForMailboxType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6126
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList$ControllerResults;-><init>(Lcom/android/email/activity/MessageList;)V

    return-void
.end method

.method private updateBanner(Lcom/android/email/mail/MessagingException;IJ)V
    .locals 3
    .parameter "result"
    .parameter "progress"
    .parameter "mailboxKey"

    .prologue
    .line 6251
    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-eqz v1, :cond_1

    .line 6280
    :cond_0
    :goto_0
    return-void

    .line 6254
    :cond_1
    if-eqz p1, :cond_4

    .line 6255
    const v0, 0x7f080033

    .line 6256
    .local v0, id:I
    instance-of v1, p1, Lcom/android/email/mail/AuthenticationFailedException;

    if-eqz v1, :cond_2

    .line 6257
    const v0, 0x7f0800c7

    .line 6276
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    goto :goto_0

    .line 6258
    :cond_2
    instance-of v1, p1, Lcom/android/email/mail/CertificateValidationException;

    if-eqz v1, :cond_3

    .line 6259
    const v0, 0x7f0800c9

    goto :goto_1

    .line 6261
    :cond_3
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 6263
    :pswitch_0
    const v0, 0x7f0800d0

    .line 6264
    goto :goto_1

    .line 6266
    :pswitch_1
    const v0, 0x7f0800cd

    .line 6267
    goto :goto_1

    .line 6269
    :pswitch_2
    const v0, 0x7f0800ce

    .line 6270
    goto :goto_1

    .line 6272
    :pswitch_3
    const v0, 0x7f0800cf

    goto :goto_1

    .line 6277
    .end local v0           #id:I
    :cond_4
    if-ltz p2, :cond_0

    .line 6278
    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    goto :goto_0

    .line 6261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateProgress(Lcom/android/email/mail/MessagingException;I)V
    .locals 2
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 6230
    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 6231
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->progress(Z)V

    .line 6235
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 6236
    const-string v0, "MessageList >>"

    const-string v1, "[r2d209 check] updateProgress"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6237
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 6239
    :cond_2
    return-void

    .line 6232
    :cond_3
    if-nez p2, :cond_1

    .line 6233
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->progress(Z)V

    goto :goto_0
.end method


# virtual methods
.method public GALSearchCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "searchResults"

    .prologue
    .line 6294
    return-void
.end method

.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 6306
    return-void
.end method

.method public createMailbox()V
    .locals 4

    .prologue
    .line 6284
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v1, Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$5102(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$RefreshFolderListTask;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 6285
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$6300(Lcom/android/email/activity/MessageList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6287
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 6175
    return-void
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 6299
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 6160
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 6156
    return-void
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 6165
    return-void
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 5
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 6207
    if-eqz p1, :cond_0

    .line 6208
    const/4 v0, 0x0

    .line 6210
    .local v0, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 6224
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 6228
    .end local v0           #message:Ljava/lang/String;
    :goto_1
    return-void

    .line 6212
    .restart local v0       #message:Ljava/lang/String;
    :sswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f08021e

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6213
    goto :goto_0

    .line 6215
    :sswitch_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f0800c7

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6216
    goto :goto_0

    .line 6218
    :sswitch_2
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f0800d0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 6221
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 6222
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6226
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const v4, 0x7f08021f

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList$MessageListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 6210
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const-wide/16 v2, -0x1

    .line 6188
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9000(Lcom/android/email/activity/MessageList;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 6190
    cmp-long v0, p4, v2

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p6, :cond_0

    .line 6191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/email/mail/MessagingException;

    .line 6194
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/email/mail/MessagingException;

    if-nez v0, :cond_1

    .line 6195
    iput-object p1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/email/mail/MessagingException;

    .line 6198
    :cond_1
    cmp-long v0, p4, v2

    if-nez v0, :cond_2

    const/16 v0, 0x64

    if-ne p6, v0, :cond_2

    .line 6199
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/email/mail/MessagingException;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v1

    invoke-direct {p0, v0, p6, v1, v2}, Lcom/android/email/activity/MessageList$ControllerResults;->updateBanner(Lcom/android/email/mail/MessagingException;IJ)V

    .line 6202
    :cond_2
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MessageList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 6204
    :cond_3
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
    .line 6170
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
    .line 6147
    invoke-direct {p0, p1, p6, p4, p5}, Lcom/android/email/activity/MessageList$ControllerResults;->updateBanner(Lcom/android/email/mail/MessagingException;IJ)V

    .line 6148
    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p6, v0, :cond_1

    .line 6149
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/email/Email;->updateMailboxRefreshTime(J)V

    .line 6151
    :cond_1
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MessageList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 6152
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 2
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    .line 6138
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/MessageList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 6139
    const/16 v0, 0x64

    if-ne p4, v0, :cond_0

    .line 6140
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mWaitForMailboxType:I

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->lookupMailboxType(JI)V

    .line 6142
    :cond_0
    return-void
.end method
