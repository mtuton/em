.class Lcom/android/exchange/SyncManager$2;
.super Lcom/android/email/service/IEmailService$Stub;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-direct {p0}, Lcom/android/email/service/IEmailService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public MoveMessage(Ljava/util/List;JJJ)V
    .locals 8
    .parameter
    .parameter "accountId"
    .parameter "mailboxKey"
    .parameter "curBoxKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 625
    .local p1, messageId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/exchange/MoveMessageRequest;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/exchange/MoveMessageRequest;-><init>(Ljava/util/List;JJJ)V

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 626
    return-void
.end method

.method public OoOffice(JLcom/android/exchange/OoODataList;)V
    .locals 5
    .parameter "accountId"
    .parameter "data"

    .prologue
    .line 545
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 547
    .local v0, acct:Lcom/android/email/provider/EmailContent$Account;
    sget-wide v3, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_OoO:J

    invoke-static {v3, v4}, Lcom/android/exchange/SyncManager;->removeFromSyncErrorMap(J)V

    .line 548
    new-instance v1, Lcom/android/exchange/EasOoOSvc;

    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-direct {v1, v3, v0, p3}, Lcom/android/exchange/EasOoOSvc;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/exchange/OoODataList;)V

    .line 549
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(OoOSvc)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 550
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 554
    return-void
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .parameter "userName"
    .parameter "password"
    .parameter "domain"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Lcom/android/exchange/EasSyncService;

    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/exchange/EasSyncService;->tryAutodiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public emptyTrash(J)V
    .locals 7
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 646
    iget-object v5, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    const/4 v6, 0x6

    invoke-static {v5, p1, p2, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 647
    .local v1, mailboxKey:J
    iget-object v5, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v5, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 648
    .local v0, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    new-instance v3, Lcom/android/exchange/EasEmptyTrashSvc;

    sget-object v5, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-direct {v3, v5, v0}, Lcom/android/exchange/EasEmptyTrashSvc;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 649
    .local v3, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(EasEmptyTrashSvc)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 650
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 651
    return-void
.end method

.method public folderCreate(JLjava/lang/String;J)V
    .locals 7
    .parameter "accountId"
    .parameter "folderName"
    .parameter "parentMailboxId"

    .prologue
    .line 557
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 558
    .local v2, acct:Lcom/android/email/provider/EmailContent$Account;
    new-instance v0, Lcom/android/exchange/EasFolderCreateSvc;

    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasFolderCreateSvc;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;J)V

    .line 560
    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v6, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "(FolderCreate)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 561
    .local v6, thread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 562
    return-void
.end method

.method public declared-synchronized getLicenseKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 461
    monitor-enter p0

    const/4 v1, 0x0

    .line 462
    .local v1, license:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->access$100()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 463
    invoke-static {}, Lcom/android/exchange/SyncManager;->access$100()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 488
    :goto_0
    monitor-exit p0

    return-object v3

    .line 464
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    .line 465
    const-string v3, "getLicenseKey"

    const-string v4, "No context for getLicenseKey"

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 466
    goto :goto_0

    .line 467
    :cond_1
    if-nez p1, :cond_2

    .line 468
    sget-object p1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 471
    :cond_2
    invoke-static {p1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    .line 472
    .local v2, prefs:Lcom/android/email/Preferences;
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getActivationLicense()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$102(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    if-nez v1, :cond_4

    .line 476
    :try_start_2
    const-class v3, Lcom/android/exchange/EasSyncService;

    iget-object v4, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v3, v4}, Lcom/android/exchange/AbstractSyncService;->activate(Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 477
    if-eqz v1, :cond_3

    .line 478
    invoke-virtual {v2, v1}, Lcom/android/email/Preferences;->setActivationLicense(Ljava/lang/String;)V

    .line 479
    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$102(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v3, v1

    .line 481
    goto :goto_0

    .line 482
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 483
    .local v0, e:Lcom/android/email/mail/MessagingException;
    :try_start_3
    const-string v3, "Activation"

    const-string v4, "Can\'t get server eas license"

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v1

    .line 484
    goto :goto_0

    .end local v0           #e:Lcom/android/email/mail/MessagingException;
    :cond_4
    move-object v3, v1

    .line 488
    goto :goto_0

    .line 461
    .end local v2           #prefs:Lcom/android/email/Preferences;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public hostChanged(J)V
    .locals 11
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 587
    sget-object v7, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 588
    .local v7, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v7, :cond_0

    .line 614
    .end local p0
    :goto_0
    return-void

    .line 589
    .restart local p0
    :cond_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->access$400()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 590
    :try_start_0
    iget-object v6, v7, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 591
    .local v6, syncErrorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v0, deletedMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 594
    .local v4, mailboxId:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/SyncManager$SyncError;

    .line 596
    .local v1, error:Lcom/android/exchange/SyncManager$SyncError;
    invoke-static {v7, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 599
    .local v3, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v3, :cond_2

    .line 600
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 609
    .end local v0           #deletedMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1           #error:Lcom/android/exchange/SyncManager$SyncError;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v4           #mailboxId:J
    .end local v6           #syncErrorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 601
    .restart local v0       #deletedMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v1       #error:Lcom/android/exchange/SyncManager$SyncError;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v4       #mailboxId:J
    .restart local v6       #syncErrorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    :cond_2
    :try_start_1
    iget-wide v9, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v9, v9, p1

    if-nez v9, :cond_1

    .line 602
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    .line 603
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    goto :goto_1

    .line 606
    .end local v1           #error:Lcom/android/exchange/SyncManager$SyncError;
    .end local v3           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v4           #mailboxId:J
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 607
    .restart local v4       #mailboxId:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 609
    .end local v4           #mailboxId:J
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    const/4 v8, 0x1

    invoke-static {v7, p1, p2, v8}, Lcom/android/exchange/SyncManager;->access$700(Lcom/android/exchange/SyncManager;JZ)V

    .line 613
    const-string v8, "host changed"

    invoke-static {v8}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAttachment(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "attachmentId"
    .parameter "destinationFile"
    .parameter "contentUriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 541
    .local v0, att:Lcom/android/email/provider/EmailContent$Attachment;
    new-instance v1, Lcom/android/exchange/PartRequest;

    invoke-direct {v1, v0, p3, p4}, Lcom/android/exchange/PartRequest;-><init>(Lcom/android/email/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 542
    return-void
.end method

.method public loadMore(J)V
    .locals 6
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 631
    iget-object v3, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v3, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 633
    .local v0, msg:Lcom/android/email/provider/EmailContent$Message;
    if-nez v0, :cond_0

    .line 634
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v3

    const/high16 v4, 0x7

    const/16 v5, 0x64

    invoke-interface {v3, p1, p2, v4, v5}, Lcom/android/email/service/IEmailServiceCallback;->loadMoreStatus(JII)V

    .line 641
    :goto_0
    return-void

    .line 636
    :cond_0
    new-instance v1, Lcom/android/exchange/EasLoadMoreSvc;

    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-direct {v1, v3, v0}, Lcom/android/exchange/EasLoadMoreSvc;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V

    .line 637
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(EasLoadMoreSvc)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 638
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public sendMeetingResponse(JI)V
    .locals 1
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    new-instance v0, Lcom/android/exchange/MeetingResponseRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/exchange/MeetingResponseRequest;-><init>(JI)V

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 622
    return-void
.end method

.method public sendRecoveryPassword(JLjava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "EAS SyncManager"

    .line 679
    const-string v3, "EAS SyncManager"

    const-string v3, "sendRecoveryPassword"

    invoke-static {v4, v3}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 681
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 683
    const-string v3, "EAS SyncManager"

    const-string v3, "acccount is null"

    invoke-static {v4, v3}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_0
    return-void

    .line 686
    :cond_0
    new-instance v1, Lcom/android/exchange/PasswordRecoveryService;

    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-direct {v1, v3, v0, p3}, Lcom/android/exchange/PasswordRecoveryService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)V

    .line 688
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(PasswordRecovery)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 690
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/email/service/IEmailServiceCallback;)V
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$800(Lcom/android/exchange/SyncManager;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0, p1}, Lcom/android/exchange/SyncManager;->access$002(Lcom/android/exchange/SyncManager;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailServiceCallback;

    .line 673
    iget-object v0, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$800(Lcom/android/exchange/SyncManager;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 674
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-static {p1}, Lcom/android/exchange/Eas;->setUserDebug(I)V

    .line 618
    return-void
.end method

.method public startSync(J)V
    .locals 10
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x4

    .line 493
    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 494
    .local v3, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v3, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-static {}, Lcom/android/exchange/SyncManager;->checkSyncManagerServiceRunning()V

    .line 496
    invoke-static {v3, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 497
    .local v1, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_0

    .line 498
    iget v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-ne v4, v7, :cond_2

    .line 502
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "syncServerId"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    invoke-virtual {v3}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "mailboxKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 507
    iget-object v4, v3, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v4, "start outbox"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_2
    iget v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 516
    iget v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 526
    iget-wide v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/16 v6, 0x44

    invoke-static {v3, v4, v5, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 527
    .local v2, m2:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_3

    .line 528
    iget-object v4, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    iget-wide v5, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v4, v3, v7, v5, v6}, Lcom/android/exchange/SyncManager;->access$200(Lcom/android/exchange/SyncManager;Landroid/content/Context;IJ)V

    .line 531
    :cond_3
    const/4 v4, 0x0

    invoke-static {p1, p2, v7, v4}, Lcom/android/exchange/SyncManager;->startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;

    goto :goto_0
.end method

.method public stopSync(J)V
    .locals 0
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->access$300(J)V

    .line 536
    return-void
.end method

.method public updateFolderList(J)V
    .locals 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 569
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const/16 v2, 0x44

    invoke-static {v1, p1, p2, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 570
    .local v0, m2:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 572
    invoke-static {}, Lcom/android/exchange/SyncManager;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 573
    :try_start_0
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->access$500(Lcom/android/exchange/SyncManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 574
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v2, v2, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFolderList(): Starting sync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 576
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/android/exchange/SyncManager;->access$600(Lcom/android/exchange/SyncManager;Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    .line 577
    monitor-exit v1

    .line 584
    :goto_0
    return-void

    .line 579
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncService for mailbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already running. Cannot start FolderSync thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->errorlog(Ljava/lang/String;)V

    .line 580
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I
    .locals 10
    .parameter "protocol"
    .parameter "host"
    .parameter "userName"
    .parameter "password"
    .parameter "port"
    .parameter "ssl"
    .parameter "trustCertificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager$2;->getLicenseKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, license:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 436
    const/16 v0, 0x14

    .line 443
    .end local v9           #license:Ljava/lang/String;
    :goto_0
    return v0

    .line 439
    .restart local v9       #license:Ljava/lang/String;
    :cond_0
    const-class v0, Lcom/android/exchange/EasSyncService;

    iget-object v7, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v7}, Lcom/android/exchange/AbstractSyncService;->validate(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    const/4 v0, -0x1

    goto :goto_0

    .line 442
    .end local v9           #license:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 443
    .local v8, e:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v8}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    goto :goto_0
.end method
