.class Lcom/android/email/service/MailService$ControllerResults;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Lcom/android/email/Controller$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

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
    .line 649
    return-void
.end method

.method public OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oofResults"

    .prologue
    .line 736
    return-void
.end method

.method public createMailbox()V
    .locals 0

    .prologue
    .line 740
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 643
    return-void
.end method

.method public folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 745
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 638
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 634
    return-void
.end method

.method public loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 654
    return-void
.end method

.method public moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V
    .locals 0
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 729
    return-void
.end method

.method public sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 725
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/email/mail/MessagingException;JJIJ)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 707
    if-nez p1, :cond_0

    const/16 v2, 0x64

    if-ne p6, v2, :cond_3

    .line 708
    :cond_0
    if-eqz p1, :cond_1

    .line 711
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v3, -0x1

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 713
    :cond_1
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 714
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v2, v0}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    .line 715
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-static {v2}, Lcom/android/email/service/MailService;->access$300(Lcom/android/email/service/MailService;)I

    move-result v1

    .line 716
    .local v1, serviceId:I
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_2

    .line 717
    long-to-int v1, p7

    .line 719
    :cond_2
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v2, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 721
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #serviceId:I
    :cond_3
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V
    .locals 14
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 659
    if-nez p1, :cond_0

    const/16 v10, 0x64

    move/from16 v0, p6

    move v1, v10

    if-ne v0, v1, :cond_5

    .line 661
    :cond_0
    iget-object v10, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v11, 0x0

    move-object v0, v10

    move-wide/from16 v1, p2

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v6

    .line 663
    .local v6, inboxId:J
    cmp-long v10, p4, v6

    if-nez v10, :cond_4

    .line 664
    const/16 v10, 0x64

    move/from16 v0, p6

    move v1, v10

    if-ne v0, v1, :cond_6

    .line 665
    iget-object v10, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    move-object v0, v10

    move-wide/from16 v1, p2

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 666
    if-lez p7, :cond_1

    .line 667
    iget-object v10, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    move-object v0, v10

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/service/MailService;->access$100(Lcom/android/email/service/MailService;J)V

    .line 672
    :cond_1
    if-nez p7, :cond_4

    .line 674
    const/4 v4, 0x0

    .line 675
    .local v4, accountsWithNewMessages:I
    invoke-static {}, Lcom/android/email/service/MailService;->access$200()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 676
    .local v9, report:Lcom/android/email/service/MailService$AccountSyncReport;
    iget v10, v9, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    if-eqz v10, :cond_2

    .line 679
    iget v10, v9, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    add-int p7, p7, v10

    .line 680
    const-string v10, "MailService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Acc Id ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 683
    .end local v9           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_3
    const-string v10, "MailService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Total Count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    if-nez v4, :cond_4

    .line 685
    const-string v10, "MailService"

    const-string v11, "Notifcation canceled"

    invoke-static {v10, v11}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v10, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 688
    .local v8, notificationManager:Landroid/app/NotificationManager;
    if-eqz v8, :cond_4

    .line 689
    sget v10, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    invoke-virtual {v8, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 697
    .end local v4           #accountsWithNewMessages:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #notificationManager:Landroid/app/NotificationManager;
    :cond_4
    :goto_1
    invoke-static/range {p4 .. p5}, Lcom/android/email/Email;->updateMailboxRefreshTime(J)V

    .line 699
    .end local v6           #inboxId:J
    :cond_5
    return-void

    .line 693
    .restart local v6       #inboxId:J
    :cond_6
    iget-object v10, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v11, -0x1

    move-object v0, v10

    move-wide/from16 v1, p2

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    goto :goto_1
.end method

.method public updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 703
    return-void
.end method
