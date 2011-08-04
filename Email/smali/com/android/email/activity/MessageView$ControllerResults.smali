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
    .line 8021
    iput-object p1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 8320
    return-void
.end method

.method public createMailbox()V
    .locals 0

    .prologue
    .line 8324
    return-void
.end method

.method public deviceInformationCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 8343
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 8175
    return-void
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 8336
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 6
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "DeviceAccessException"

    .line 8087
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

    .line 8088
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 8089
    if-nez p1, :cond_3

    .line 8090
    sparse-switch p6, :sswitch_data_0

    .line 8160
    :cond_0
    :goto_0
    return-void

    .line 8093
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$400(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8094
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 8095
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 8096
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->fetchingAttachment()V

    goto :goto_0

    .line 8098
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    goto :goto_0

    .line 8104
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$400(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8105
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 8106
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 8107
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, p4, p5}, Lcom/android/email/activity/MessageView;->access$7300(Lcom/android/email/activity/MessageView;J)V

    .line 8109
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/android/email/activity/MessageView$MessageViewHandler;->finishLoadAttachment(J)V

    goto :goto_0

    .line 8114
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v1, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$7402(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadBodyTask;)Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 8115
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7400(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadBodyTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 8125
    :cond_3
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 8127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> loadAttachmentCallback  >>>>> 4752"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8128
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 8129
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 8130
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->securityRequiredError()V

    goto/16 :goto_0

    .line 8135
    :cond_4
    instance-of v0, p1, Lcom/android/email/mail/DeviceAccessException;

    if-eqz v0, :cond_5

    .line 8136
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 8138
    :pswitch_0
    const-string v0, "DeviceAccessException"

    const-string v0, "Device is blocked, loadAttachment"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8139
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const v1, 0x40001

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->DeviceAccessError(I)V

    goto/16 :goto_0

    .line 8143
    :pswitch_1
    const-string v0, "DeviceAccessException"

    const-string v0, "Device is quarantined, loadAttachment"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8144
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const v1, 0x40002

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->DeviceAccessError(I)V

    goto/16 :goto_0

    .line 8151
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 8152
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentProgress(Z)V

    .line 8153
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->networkError()V

    .line 8155
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1000(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8156
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->finish()V

    goto/16 :goto_0

    .line 8090
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch

    .line 8136
    :pswitch_data_0
    .packed-switch 0x40001
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    .line 8025
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6800(Lcom/android/email/activity/MessageView;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 8083
    :cond_0
    :goto_0
    return-void

    .line 8030
    :cond_1
    if-nez p1, :cond_3

    .line 8031
    sparse-switch p4, :sswitch_data_0

    .line 8058
    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6902(Z)Z

    goto :goto_0

    .line 8033
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 8034
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/loading.html"

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    .line 8035
    invoke-static {v4}, Lcom/android/email/activity/MessageView;->access$6902(Z)Z

    goto :goto_0

    .line 8044
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v5, v6}, Lcom/android/email/activity/MessageView;->access$6802(Lcom/android/email/activity/MessageView;J)J

    .line 8045
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 8046
    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6902(Z)Z

    .line 8049
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7000(Lcom/android/email/activity/MessageView;)V

    .line 8050
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7100(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 8051
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageView;->access$7102(Lcom/android/email/activity/MessageView;Z)Z

    .line 8052
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "loadMessageForViewCallback() >>>>> mNeedToReloadMessage from true to false >>> message Reloaded SUCCESS!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8054
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)J

    move-result-wide v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    invoke-static {v6, v0}, Lcom/android/email/activity/MessageView;->access$7202(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 8055
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7200(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 8066
    :cond_3
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 8068
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> ControllerResults  >>>>> 4703"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8069
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v5, v6}, Lcom/android/email/activity/MessageView;->access$6802(Lcom/android/email/activity/MessageView;J)J

    .line 8070
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 8071
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->securityRequiredError()V

    .line 8072
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8078
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v5, v6}, Lcom/android/email/activity/MessageView;->access$6802(Lcom/android/email/activity/MessageView;J)J

    .line 8079
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 8080
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->networkError()V

    .line 8081
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8031
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
    .line 8181
    const-string v0, "Email"

    const-string v1, "loadMoreCallback called!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8182
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$7502(Lcom/android/email/activity/MessageView;Z)Z

    .line 8184
    if-nez p1, :cond_1

    .line 8185
    sparse-switch p4, :sswitch_data_0

    .line 8286
    :cond_0
    :goto_0
    return-void

    .line 8189
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->startLoadMore()V

    .line 8191
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 8192
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const-string v1, "file:///android_asset/loading.html"

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadContentUri(Ljava/lang/String;)V

    goto :goto_0

    .line 8197
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->finishLoadMore()V

    .line 8199
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageView;->access$6802(Lcom/android/email/activity/MessageView;J)J

    .line 8200
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 8203
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7000(Lcom/android/email/activity/MessageView;)V

    .line 8205
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 8206
    .local v8, msg:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$4900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 8207
    .local v9, resolver:Landroid/content/ContentResolver;
    const-string v0, "isMimeLoaded"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8208
    const-string v0, "Message.ISMIMELOADED = "

    const-string v1, "isMimeLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8210
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v9, v0, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8212
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$4900()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v7

    .line 8218
    .local v7, message:Lcom/android/email/provider/EmailContent$Message;
    iget-object v6, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    invoke-static {v6, v0}, Lcom/android/email/activity/MessageView;->access$7202(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 8219
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7200(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8227
    .end local v7           #message:Lcom/android/email/provider/EmailContent$Message;
    .end local v8           #msg:Landroid/content/ContentValues;
    .end local v9           #resolver:Landroid/content/ContentResolver;
    :cond_1
    instance-of v0, p1, Lcom/android/email/mail/DeviceAccessException;

    if-eqz v0, :cond_2

    .line 8228
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->DeviceAccessError(I)V

    .line 8229
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageView;->access$6802(Lcom/android/email/activity/MessageView;J)J

    .line 8230
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 8231
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8232
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7000(Lcom/android/email/activity/MessageView;)V

    goto/16 :goto_0

    .line 8242
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageView;->access$6802(Lcom/android/email/activity/MessageView;J)J

    .line 8243
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->progress(Z)V

    .line 8246
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8270
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->errorLoadMore(I)V

    .line 8278
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7000(Lcom/android/email/activity/MessageView;)V

    .line 8279
    iget-object v6, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    invoke-static {v6, v0}, Lcom/android/email/activity/MessageView;->access$7202(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 8280
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7200(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8249
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 8250
    .local v6, code:I
    const/high16 v0, 0x5

    if-eq v6, v0, :cond_3

    const/high16 v0, 0x7

    if-eq v6, v0, :cond_3

    const/high16 v0, 0x10

    if-ne v6, v0, :cond_0

    .line 8254
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageView$MessageViewHandler;->errorLoadMore(I)V

    .line 8258
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7000(Lcom/android/email/activity/MessageView;)V

    .line 8259
    const/high16 v0, 0x10

    if-ne v6, v0, :cond_4

    .line 8260
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->finish()V

    goto/16 :goto_0

    .line 8263
    :cond_4
    iget-object v6, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    .end local v6           #code:I
    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6500(Lcom/android/email/activity/MessageView;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    invoke-static {v6, v0}, Lcom/android/email/activity/MessageView;->access$7202(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 8264
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$7200(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8185
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 8246
    :pswitch_data_0
    .packed-switch 0x30000
        :pswitch_0
    .end packed-switch
.end method

.method public moveConvAlwaysCallback(Lcom/android/email/mail/MessagingException;[BII)V
    .locals 0
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 8169
    return-void
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 8313
    return-void
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 8309
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
    .line 8305
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V
    .locals 2
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 8290
    const/16 v0, -0x20

    if-ne p6, v0, :cond_0

    .line 8291
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V

    .line 8292
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ControllerResults;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->networkError()V

    .line 8294
    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x64

    if-ne p6, v0, :cond_2

    .line 8295
    :cond_1
    invoke-static {p4, p5}, Lcom/android/email/Email;->updateMailboxRefreshTime(J)V

    .line 8297
    :cond_2
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 8301
    return-void
.end method
