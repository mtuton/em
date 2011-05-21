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
    .line 240
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

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
    .line 265
    return-void
.end method

.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 6
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x7

    .line 269
    if-eqz p1, :cond_5

    .line 270
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 272
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 274
    .local v0, messageErr:I
    packed-switch v0, :pswitch_data_0

    .line 282
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    .end local v0           #messageErr:I
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v0       #messageErr:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 279
    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 286
    .end local v0           #messageErr:I
    :cond_1
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 287
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_2

    .line 288
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    .line 290
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 292
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 296
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 299
    :cond_5
    const/16 v2, 0x64

    if-ne p4, v2, :cond_7

    .line 300
    if-eqz p5, :cond_6

    .line 301
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 302
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 303
    invoke-virtual {v1, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 304
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 307
    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 311
    :cond_7
    if-nez p4, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 274
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
    .line 330
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    .line 334
    if-nez p1, :cond_0

    .line 335
    sparse-switch p4, :sswitch_data_0

    .line 367
    :goto_0
    :sswitch_0
    return-void

    .line 339
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 350
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

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

    .line 355
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 348
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x20000 -> :sswitch_3
    .end sparse-switch
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 329
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 256
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 253
    return-void
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 331
    return-void
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 324
    return-void
.end method

.method public searchCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "searchResults"

    .prologue
    .line 320
    return-void
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 262
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
    .line 259
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
    .line 250
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 245
    return-void
.end method
