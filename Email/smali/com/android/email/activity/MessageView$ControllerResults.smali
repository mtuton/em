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
    .line 5681
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
    .line 5931
    return-void
.end method

.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 5920
    return-void
.end method

.method public createMailbox()V
    .locals 0

    .prologue
    .line 5924
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 5801
    return-void
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 5936
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

    .line 5747
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

    .line 5748
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4300(Lcom/android/email/activity/MessageView;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 5749
    if-nez p1, :cond_1

    .line 5750
    sparse-switch p6, :sswitch_data_0

    .line 5795
    :cond_0
    :goto_0
    return-void

    .line 5752
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 5753
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 5754
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->fetchingAttachment()V

    goto :goto_0

    .line 5757
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 5758
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 5759
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, p4, p5}, Lcom/android/email/activity/MessageView;->access$7000(Lcom/android/email/activity/MessageView;J)V

    .line 5760
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/android/email/activity/MessageView$MessageViewHandler;->finishLoadAttachment(J)V

    goto :goto_0

    .line 5764
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v1, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$7102(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadBodyTask;)Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 5765
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7100(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadBodyTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 5775
    :cond_1
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 5777
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> loadAttachmentCallback  >>>>> 4752"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5778
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 5779
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 5780
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->securityRequiredError()V

    goto :goto_0

    .line 5786
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 5787
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 5788
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->networkError()V

    .line 5790
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5791
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->finish()V

    goto/16 :goto_0

    .line 5750
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
    const-wide/16 v5, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v3, "file:///android_asset/empty.html"

    .line 5685
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4300(Lcom/android/email/activity/MessageView;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 5743
    :cond_0
    :goto_0
    return-void

    .line 5690
    :cond_1
    if-nez p1, :cond_3

    .line 5691
    sparse-switch p4, :sswitch_data_0

    .line 5718
    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6602(Z)Z

    goto :goto_0

    .line 5693
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5694
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/loading.html"

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    .line 5695
    invoke-static {v4}, Lcom/android/email/activity/MessageView;->access$6602(Z)Z

    goto :goto_0

    .line 5704
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v5, v6}, Lcom/android/email/activity/MessageView;->access$6502(Lcom/android/email/activity/MessageView;J)J

    .line 5705
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5706
    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6602(Z)Z

    .line 5709
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6700(Lcom/android/email/activity/MessageView;)V

    .line 5710
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6800(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 5711
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageView;->access$6802(Lcom/android/email/activity/MessageView;Z)Z

    .line 5712
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "loadMessageForViewCallback() >>>>> mNeedToReloadMessage from true to false >>> message Reloaded SUCCESS!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5714
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$4300(Lcom/android/email/activity/MessageView;)J

    move-result-wide v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    invoke-static {v6, v0}, Lcom/android/email/activity/MessageView;->access$6902(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 5715
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6900(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 5726
    :cond_3
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 5728
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> ControllerResults  >>>>> 4703"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5729
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v5, v6}, Lcom/android/email/activity/MessageView;->access$6502(Lcom/android/email/activity/MessageView;J)J

    .line 5730
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5731
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->securityRequiredError()V

    .line 5732
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5738
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v5, v6}, Lcom/android/email/activity/MessageView;->access$6502(Lcom/android/email/activity/MessageView;J)J

    .line 5739
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5740
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->networkError()V

    .line 5741
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5691
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 10
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v9, "isMimeLoaded"

    .line 5807
    const-string v0, "Email"

    const-string v1, "loadMoreCallback called!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5808
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v5}, Lcom/android/email/activity/MessageView;->access$7202(Lcom/android/email/activity/MessageView;Z)Z

    .line 5810
    if-nez p1, :cond_1

    .line 5811
    sparse-switch p4, :sswitch_data_0

    .line 5890
    :cond_0
    :goto_0
    return-void

    .line 5815
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->startLoadMore()V

    .line 5817
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5818
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/loading.html"

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    goto :goto_0

    .line 5823
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->finishLoadMore()V

    .line 5825
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v2, v3}, Lcom/android/email/activity/MessageView;->access$6502(Lcom/android/email/activity/MessageView;J)J

    .line 5826
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5829
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6700(Lcom/android/email/activity/MessageView;)V

    .line 5831
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 5832
    .local v7, msg:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$4200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 5833
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string v0, "isMimeLoaded"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5834
    const-string v0, "Message.ISMIMELOADED = "

    const-string v1, "isMimeLoaded"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5836
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v8, v0, v7, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5838
    iget-object v9, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$4300(Lcom/android/email/activity/MessageView;)J

    move-result-wide v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    invoke-static {v9, v0}, Lcom/android/email/activity/MessageView;->access$6902(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 5839
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6900(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5850
    .end local v7           #msg:Landroid/content/ContentValues;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v2, v3}, Lcom/android/email/activity/MessageView;->access$6502(Lcom/android/email/activity/MessageView;J)J

    .line 5851
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 5854
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5874
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->errorLoadMore(I)V

    .line 5882
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6700(Lcom/android/email/activity/MessageView;)V

    .line 5883
    iget-object v9, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$4300(Lcom/android/email/activity/MessageView;)J

    move-result-wide v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    invoke-static {v9, v0}, Lcom/android/email/activity/MessageView;->access$6902(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 5884
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6900(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5857
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5858
    .local v6, code:I
    const/high16 v0, 0x5

    if-eq v6, v0, :cond_2

    const/high16 v0, 0x7

    if-eq v6, v0, :cond_2

    const/high16 v0, 0x10

    if-ne v6, v0, :cond_0

    .line 5862
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageView$MessageViewHandler;->errorLoadMore(I)V

    .line 5866
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6700(Lcom/android/email/activity/MessageView;)V

    .line 5867
    iget-object v9, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$4300(Lcom/android/email/activity/MessageView;)J

    move-result-wide v2

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    invoke-static {v9, v0}, Lcom/android/email/activity/MessageView;->access$6902(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 5868
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6900(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5811
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 5854
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
    .line 5913
    return-void
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 5909
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
    .line 5905
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
    .line 5894
    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p6, v0, :cond_1

    .line 5895
    :cond_0
    invoke-static {p4, p5}, Lcom/android/email/Email;->updateMailboxRefreshTime(J)V

    .line 5897
    :cond_1
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 5901
    return-void
.end method
