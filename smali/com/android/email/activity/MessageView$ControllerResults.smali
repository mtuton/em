.class Lcom/android/email/activity/MessageView$ControllerResults;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Lcom/android/email/Controller$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter

    .prologue
    .line 5485
    iput-object p1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

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
    .line 5720
    return-void
.end method

.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 5709
    return-void
.end method

.method public createMailbox()V
    .locals 0

    .prologue
    .line 5713
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 5599
    return-void
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 5725
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 5
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5545
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attach : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " p : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 5546
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5700(Lcom/android/email/activity/MessageView;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 5547
    if-nez p1, :cond_1

    .line 5548
    sparse-switch p6, :sswitch_data_0

    .line 5593
    :cond_0
    :goto_0
    return-void

    .line 5550
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 5551
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 5552
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->fetchingAttachment()V

    goto :goto_0

    .line 5555
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 5556
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 5557
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, p4, p5}, Lcom/android/email/activity/MessageView;->access$6800(Lcom/android/email/activity/MessageView;J)V

    .line 5558
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/android/email/activity/MessageView$MessageViewHandler;->finishLoadAttachment(J)V

    goto :goto_0

    .line 5562
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v1, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$6902(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadBodyTask;)Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 5563
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6900(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadBodyTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 5573
    :cond_1
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 5575
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> loadAttachmentCallback  >>>>> 4752"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5576
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 5577
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 5578
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->securityRequiredError()V

    goto :goto_0

    .line 5584
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 5585
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 5586
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->networkError()V

    .line 5588
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5589
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->finish()V

    goto/16 :goto_0

    .line 5548
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 7
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v6, "file:///android_asset/empty.html"

    .line 5489
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5700(Lcom/android/email/activity/MessageView;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6300(Lcom/android/email/activity/MessageView;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 5541
    :cond_0
    :goto_0
    return-void

    .line 5494
    :cond_1
    if-nez p1, :cond_3

    .line 5495
    sparse-switch p4, :sswitch_data_0

    .line 5516
    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6402(Z)Z

    goto :goto_0

    .line 5497
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5498
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/loading.html"

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    .line 5499
    invoke-static {v5}, Lcom/android/email/activity/MessageView;->access$6402(Z)Z

    goto :goto_0

    .line 5502
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v3, v4}, Lcom/android/email/activity/MessageView;->access$6302(Lcom/android/email/activity/MessageView;J)J

    .line 5503
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5504
    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6402(Z)Z

    .line 5507
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)V

    .line 5508
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6600(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 5509
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v5}, Lcom/android/email/activity/MessageView;->access$6602(Lcom/android/email/activity/MessageView;Z)Z

    .line 5510
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "loadMessageForViewCallback() >>>>> mNeedToReloadMessage from true to false >>> message Reloaded SUCCESS!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5512
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v1, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v3, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5700(Lcom/android/email/activity/MessageView;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$6702(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 5513
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6700(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 5524
    :cond_3
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 5526
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> ControllerResults  >>>>> 4703"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5527
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v3, v4}, Lcom/android/email/activity/MessageView;->access$6302(Lcom/android/email/activity/MessageView;J)J

    .line 5528
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5529
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->securityRequiredError()V

    .line 5530
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5536
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v3, v4}, Lcom/android/email/activity/MessageView;->access$6302(Lcom/android/email/activity/MessageView;J)J

    .line 5537
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5538
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->networkError()V

    .line 5539
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5495
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 7
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 5605
    const-string v1, "Email"

    const-string v2, "loadMoreCallback called!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5606
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1, v3}, Lcom/android/email/activity/MessageView;->access$7002(Lcom/android/email/activity/MessageView;Z)Z

    .line 5608
    if-nez p1, :cond_0

    .line 5609
    sparse-switch p4, :sswitch_data_0

    .line 5679
    :goto_0
    return-void

    .line 5613
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->startLoadMore()V

    .line 5615
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5616
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v1

    const-string v2, "file:///android_asset/loading.html"

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    goto :goto_0

    .line 5621
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->finishLoadMore()V

    .line 5623
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1, v4, v5}, Lcom/android/email/activity/MessageView;->access$6302(Lcom/android/email/activity/MessageView;J)J

    .line 5624
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5627
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)V

    .line 5628
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v2, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v3, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v4, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v4}, Lcom/android/email/activity/MessageView;->access$5700(Lcom/android/email/activity/MessageView;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageView;->access$6702(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 5629
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$6700(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 5640
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1, v4, v5}, Lcom/android/email/activity/MessageView;->access$6302(Lcom/android/email/activity/MessageView;J)J

    .line 5641
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5644
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5663
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v1

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageView$MessageViewHandler;->errorLoadMore(I)V

    .line 5671
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)V

    .line 5672
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v2, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v3, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v4, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v4}, Lcom/android/email/activity/MessageView;->access$5700(Lcom/android/email/activity/MessageView;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageView;->access$6702(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 5673
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$6700(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5647
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5648
    .local v0, code:I
    const/high16 v1, 0x5

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 5651
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->errorLoadMore(I)V

    .line 5655
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)V

    .line 5656
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v2, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v3, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v4, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v4}, Lcom/android/email/activity/MessageView;->access$5700(Lcom/android/email/activity/MessageView;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageView;->access$6702(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 5657
    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$6700(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5609
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 5644
    :pswitch_data_0
    .packed-switch 0x30000
        :pswitch_0
    .end packed-switch
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 5702
    return-void
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 5698
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
    .line 5694
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
    .line 5683
    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p6, v0, :cond_1

    .line 5684
    :cond_0
    invoke-static {p4, p5}, Lcom/android/email/Email;->updateMailboxRefreshTime(J)V

    .line 5686
    :cond_1
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 5690
    return-void
.end method
