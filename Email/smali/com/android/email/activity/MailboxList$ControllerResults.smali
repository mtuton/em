.class Lcom/android/email/activity/MailboxList$ControllerResults;
.super Ljava/lang/Object;
.source "MailboxList.java"

# interfaces
.implements Lcom/android/email/Controller$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList$ControllerResults;-><init>(Lcom/android/email/activity/MailboxList;)V

    return-void
.end method

.method private updateBanner(Lcom/android/email/mail/MessagingException;I)V
    .locals 3
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 679
    if-eqz p1, :cond_3

    .line 680
    const v0, 0x7f080033

    .line 681
    .local v0, id:I
    instance-of v1, p1, Lcom/android/email/mail/AuthenticationFailedException;

    if-eqz v1, :cond_1

    .line 682
    const v0, 0x7f0800c7

    .line 701
    :goto_0
    const-string v1, "MailboxList"

    const-string v2, " fzhang Hit showErrorBanner()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 706
    .end local v0           #id:I
    :cond_0
    :goto_1
    return-void

    .line 683
    .restart local v0       #id:I
    :cond_1
    instance-of v1, p1, Lcom/android/email/mail/CertificateValidationException;

    if-eqz v1, :cond_2

    .line 684
    const v0, 0x7f0800c9

    goto :goto_0

    .line 686
    :cond_2
    invoke-virtual {p1}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 688
    :pswitch_0
    const v0, 0x7f0800d0

    .line 689
    goto :goto_0

    .line 691
    :pswitch_1
    const v0, 0x7f0800cd

    .line 692
    goto :goto_0

    .line 694
    :pswitch_2
    const v0, 0x7f0800ce

    .line 695
    goto :goto_0

    .line 697
    :pswitch_3
    const v0, 0x7f0800cf

    goto :goto_0

    .line 703
    .end local v0           #id:I
    :cond_3
    if-lez p2, :cond_0

    .line 704
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showErrorBanner(Ljava/lang/String;)V

    goto :goto_1

    .line 686
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
    .line 662
    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->progress(Z)V

    .line 667
    :cond_1
    :goto_0
    return-void

    .line 664
    :cond_2
    if-nez p2, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->progress(Z)V

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
    .line 800
    return-void
.end method

.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 712
    return-void
.end method

.method public createMailbox()V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 646
    return-void
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 5
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 725
    if-eqz p2, :cond_4

    .line 726
    const/4 v0, 0x0

    .line 728
    .local v0, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 776
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 792
    :goto_1
    return-void

    .line 730
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 735
    :pswitch_3
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0801a8

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    goto :goto_0

    .line 732
    :pswitch_4
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0801a7

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 733
    goto :goto_0

    .line 738
    :pswitch_5
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0801a9

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 743
    :pswitch_6
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080219

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 744
    goto :goto_0

    .line 746
    :pswitch_7
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08021a

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    goto :goto_0

    .line 749
    :pswitch_8
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_0

    .line 751
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08021b

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 755
    :pswitch_9
    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_0

    .line 757
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08021c

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 761
    :pswitch_a
    if-eq p1, v4, :cond_3

    if-ne p1, v3, :cond_0

    .line 763
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08021d

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 767
    :pswitch_b
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0800c7

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 768
    goto :goto_0

    .line 770
    :pswitch_c
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0800d0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 773
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 774
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {p2}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 778
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v0, 0x0

    .line 779
    .restart local v0       #message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_2

    .line 790
    :goto_2
    :pswitch_d
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 781
    :pswitch_e
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0801a4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 782
    goto :goto_2

    .line 784
    :pswitch_f
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0801a5

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 785
    goto :goto_2

    .line 787
    :pswitch_10
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0801a6

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 728
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 730
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 779
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 635
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 631
    return-void
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 640
    return-void
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 717
    return-void
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 2
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 656
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/email/mail/MessagingException;I)V

    .line 657
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 659
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
    .line 651
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
    .line 623
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 624
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/email/mail/MessagingException;I)V

    .line 625
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 627
    :cond_0
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 2
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 615
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/email/mail/MessagingException;I)V

    .line 616
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/email/mail/MessagingException;I)V

    .line 618
    :cond_0
    return-void
.end method
