.class Lcom/android/email/activity/setup/OoOSettings$Listener;
.super Ljava/lang/Object;
.source "OoOSettings.java"

# interfaces
.implements Lcom/android/email/Controller$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/OoOSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/OoOSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

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
    .line 715
    return-void
.end method

.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 7
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 720
    const-string v2, "OoOSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside OoOCallback result ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    if-eqz p1, :cond_5

    .line 723
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 725
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 727
    .local v0, messageErr:I
    packed-switch v0, :pswitch_data_0

    .line 735
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/OoOSettings;->access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 815
    .end local v0           #messageErr:I
    :cond_0
    :goto_0
    return-void

    .line 729
    .restart local v0       #messageErr:I
    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/OoOSettings;->access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 732
    :pswitch_2
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/OoOSettings;->access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 739
    .end local v0           #messageErr:I
    :cond_1
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 740
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_2

    .line 741
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/OoOSettings;->access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    .line 743
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/OoOSettings;->access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 745
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/OoOSettings;->access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 749
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/OoOSettings;->access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 752
    :cond_5
    const/16 v2, 0x64

    if-ne p4, v2, :cond_7

    .line 753
    if-eqz p5, :cond_6

    .line 754
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 755
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 756
    invoke-virtual {v1, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 757
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/OoOSettings;->access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 760
    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/OoOSettings;->access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 764
    :cond_7
    if-nez p4, :cond_0

    .line 765
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$Listener;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/OoOSettings;->access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 727
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createMailbox()V
    .locals 0

    .prologue
    .line 872
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 878
    return-void
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 862
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 821
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 827
    return-void
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 876
    return-void
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 857
    return-void
.end method

.method public searchCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "searchResults"

    .prologue
    .line 868
    return-void
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 833
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
    .line 839
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
    .line 845
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 851
    return-void
.end method
