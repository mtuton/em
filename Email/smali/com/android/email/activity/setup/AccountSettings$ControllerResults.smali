.class Lcom/android/email/activity/setup/AccountSettings$ControllerResults;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/email/Controller$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 6
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x7

    .line 331
    if-eqz p1, :cond_5

    .line 332
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 334
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 336
    .local v0, messageErr:I
    packed-switch v0, :pswitch_data_0

    .line 344
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 377
    .end local v0           #messageErr:I
    :cond_0
    :goto_0
    return-void

    .line 338
    .restart local v0       #messageErr:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 348
    .end local v0           #messageErr:I
    :cond_1
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 349
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_2

    .line 350
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    .line 352
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 354
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 358
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 361
    :cond_5
    const/16 v2, 0x64

    if-ne p4, v2, :cond_7

    .line 362
    if-eqz p5, :cond_6

    .line 363
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 364
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 365
    invoke-virtual {v1, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 366
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 369
    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 373
    :cond_7
    if-nez p4, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createMailbox()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public deviceInformationCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 3
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const/4 v2, 0x7

    .line 448
    if-eqz p1, :cond_4

    .line 449
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 450
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 453
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 462
    :cond_4
    const/16 v0, 0x64

    if-ne p4, v0, :cond_5

    .line 463
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 466
    :cond_5
    if-nez p4, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    .line 399
    if-nez p1, :cond_0

    .line 400
    sparse-switch p4, :sswitch_data_0

    .line 438
    :goto_0
    :sswitch_0
    return-void

    .line 404
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$400(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$400(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 415
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$400(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 420
    :sswitch_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$400(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 426
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$400(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 413
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x20000 -> :sswitch_4
        0x40001 -> :sswitch_3
    .end sparse-switch
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 394
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 318
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 315
    return-void
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 396
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/email/mail/MessagingException;[BII)V
    .locals 0
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 443
    return-void
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 389
    return-void
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 324
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
    .line 321
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 312
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 307
    return-void
.end method
