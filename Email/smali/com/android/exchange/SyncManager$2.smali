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

    .prologue
    .line 496
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
    .line 722
    .local p1, messageId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/exchange/MoveMessageRequest;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/exchange/MoveMessageRequest;-><init>(Ljava/util/List;JJJ)V

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 723
    return-void
.end method

.method public OoOffice(JLcom/android/exchange/OoODataList;)V
    .locals 5
    .parameter "accountId"
    .parameter "data"

    .prologue
    .line 626
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 628
    .local v0, acct:Lcom/android/email/provider/EmailContent$Account;
    sget-wide v3, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_OoO:J

    invoke-static {v3, v4}, Lcom/android/exchange/SyncManager;->removeFromSyncErrorMap(J)V

    .line 629
    new-instance v1, Lcom/android/exchange/EasOoOSvc;

    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-direct {v1, v3, v0, p3}, Lcom/android/exchange/EasOoOSvc;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/exchange/OoODataList;)V

    .line 630
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

    .line 631
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 635
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
    .line 515
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
    .line 756
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
    .line 760
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
    .line 746
    iget-object v5, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    const/4 v6, 0x6

    invoke-static {v5, p1, p2, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 747
    .local v1, mailboxKey:J
    iget-object v5, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v5, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 748
    .local v0, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    new-instance v3, Lcom/android/exchange/EasEmptyTrashSvc;

    sget-object v5, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-direct {v3, v5, v0}, Lcom/android/exchange/EasEmptyTrashSvc;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 749
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

    .line 750
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 751
    return-void
.end method

.method public folderCreate(JLjava/lang/String;J)V
    .locals 7
    .parameter "accountId"
    .parameter "folderName"
    .parameter "parentMailboxId"

    .prologue
    .line 638
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 639
    .local v2, acct:Lcom/android/email/provider/EmailContent$Account;
    new-instance v0, Lcom/android/exchange/EasFolderCreateSvc;

    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasFolderCreateSvc;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;J)V

    .line 641
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

    .line 642
    .local v6, thread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 643
    return-void
.end method

.method public declared-synchronized getLicenseKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 528
    monitor-enter p0

    const/4 v0, 0x0

    .line 529
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->access$100()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 530
    invoke-static {}, Lcom/android/exchange/SyncManager;->access$100()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 555
    :goto_0
    monitor-exit p0

    return-object v0

    .line 531
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 532
    const-string v1, "getLicenseKey"

    const-string v2, "No context for getLicenseKey"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 534
    :cond_1
    if-nez p1, :cond_4

    .line 535
    :try_start_2
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 538
    :goto_1
    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getActivationLicense()Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$102(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    if-nez v1, :cond_3

    .line 543
    :try_start_3
    const-class v2, Lcom/android/exchange/EasSyncService;

    iget-object v3, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v2, v3}, Lcom/android/exchange/AbstractSyncService;->activate(Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 544
    if-eqz v1, :cond_2

    .line 545
    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setActivationLicense(Ljava/lang/String;)V

    .line 546
    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$102(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v0, v1

    .line 548
    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 550
    :try_start_4
    const-string v1, "Activation"

    const-string v2, "Can\'t get server eas license"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 555
    goto :goto_0

    :cond_4
    move-object v0, p1

    goto :goto_1
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
    .line 684
    sget-object v7, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 685
    .local v7, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v7, :cond_0

    .line 711
    .end local p0
    :goto_0
    return-void

    .line 686
    .restart local p0
    :cond_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->access$400()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 687
    :try_start_0
    iget-object v6, v7, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 688
    .local v6, syncErrorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 690
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

    .line 691
    .local v4, mailboxId:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/SyncManager$SyncError;

    .line 693
    .local v1, error:Lcom/android/exchange/SyncManager$SyncError;
    invoke-static {v7, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 696
    .local v3, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v3, :cond_2

    .line 697
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 706
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

    .line 698
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

    .line 699
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    .line 700
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    goto :goto_1

    .line 703
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

    .line 704
    .restart local v4       #mailboxId:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 706
    .end local v4           #mailboxId:J
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    const/4 v8, 0x1

    invoke-static {v7, p1, p2, v8}, Lcom/android/exchange/SyncManager;->access$700(Lcom/android/exchange/SyncManager;JZ)V

    .line 710
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
    .line 621
    iget-object v1, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 622
    .local v0, att:Lcom/android/email/provider/EmailContent$Attachment;
    new-instance v1, Lcom/android/exchange/PartRequest;

    invoke-direct {v1, v0, p3, p4}, Lcom/android/exchange/PartRequest;-><init>(Lcom/android/email/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 623
    return-void
.end method

.method public loadMore(J)V
    .locals 5
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 728
    iget-object v2, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v2, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 730
    .local v0, msg:Lcom/android/email/provider/EmailContent$Message;
    if-nez v0, :cond_0

    .line 731
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v2

    const/high16 v3, 0x7

    const/16 v4, 0x64

    invoke-interface {v2, p1, p2, v3, v4}, Lcom/android/email/service/IEmailServiceCallback;->loadMoreStatus(JII)V

    .line 741
    :goto_0
    return-void

    .line 733
    :cond_0
    sget-object v2, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    if-eqz v2, :cond_1

    .line 734
    const/4 v2, 0x0

    sput-object v2, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    .line 735
    :cond_1
    const-string v2, "SyncManager"

    const-string v3, "jykim : loadMore "

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    new-instance v2, Lcom/android/exchange/EasLoadMoreSvc;

    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-direct {v2, v3, v0}, Lcom/android/exchange/EasLoadMoreSvc;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V

    sput-object v2, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    .line 737
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

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

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 738
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public moveConversationAlways(JJ[BI)V
    .locals 8
    .parameter "messageId"
    .parameter "toMailboxId"
    .parameter "conversationId"
    .parameter "ignore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    .line 650
    .local v2, msg:Lcom/android/email/provider/EmailContent$Message;
    if-nez v2, :cond_0

    .line 651
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    const/high16 v3, 0x7

    const/16 v4, 0x64

    invoke-interface {v1, p5, v3, v4, p6}, Lcom/android/email/service/IEmailServiceCallback;->moveConvAlwaysStatus([BIII)V

    .line 659
    :goto_0
    return-void

    .line 654
    :cond_0
    new-instance v0, Lcom/android/exchange/EasConvSvc;

    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/EasConvSvc;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;J[BI)V

    .line 655
    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v7, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "(EasConvSvc)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 657
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

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
    .line 765
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
    .line 718
    new-instance v0, Lcom/android/exchange/MeetingResponseRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/exchange/MeetingResponseRequest;-><init>(JI)V

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 719
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

    .line 779
    const-string v3, "EAS SyncManager"

    const-string v3, "sendRecoveryPassword"

    invoke-static {v4, v3}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 781
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 783
    const-string v3, "EAS SyncManager"

    const-string v3, "acccount is null"

    invoke-static {v4, v3}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :goto_0
    return-void

    .line 786
    :cond_0
    new-instance v1, Lcom/android/exchange/PasswordRecoveryService;

    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-direct {v1, v3, v0, p3}, Lcom/android/exchange/PasswordRecoveryService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)V

    .line 788
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

    .line 790
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
    .line 769
    iget-object v0, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$800(Lcom/android/exchange/SyncManager;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0, p1}, Lcom/android/exchange/SyncManager;->access$002(Lcom/android/exchange/SyncManager;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailServiceCallback;

    .line 773
    iget-object v0, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$800(Lcom/android/exchange/SyncManager;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 774
    return-void
.end method

.method public setDeviceInfo(J)V
    .locals 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 801
    .local v0, acct:Lcom/android/email/provider/EmailContent$Account;
    new-instance v1, Lcom/android/exchange/EasDevInfoSvc;

    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-direct {v1, v3, v0}, Lcom/android/exchange/EasDevInfoSvc;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 802
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(DevInfoSvc)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 803
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 804
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
    .line 714
    invoke-static {p1}, Lcom/android/exchange/Eas;->setUserDebug(I)V

    .line 715
    return-void
.end method

.method public startSync(J)V
    .locals 12
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    .line 560
    sget-object v4, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 561
    .local v4, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v4, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-static {}, Lcom/android/exchange/SyncManager;->checkSyncManagerServiceRunning()V

    .line 563
    invoke-static {v4, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 564
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_0

    .line 565
    iget v5, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-ne v5, v10, :cond_4

    .line 569
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 570
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "syncServerId"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    invoke-virtual {v4}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "mailboxKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 574
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v5, "start outbox"

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 583
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    .line 584
    iget-object v5, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v7, 0x4028333333333333L

    cmpg-double v5, v5, v7

    if-lez v5, :cond_0

    .line 607
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_2
    iget-wide v5, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/16 v7, 0x44

    invoke-static {v4, v5, v6, v7}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 608
    .local v3, m2:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v3, :cond_3

    .line 609
    iget-object v5, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    iget-wide v6, v3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v5, v4, v10, v6, v7}, Lcom/android/exchange/SyncManager;->access$200(Lcom/android/exchange/SyncManager;Landroid/content/Context;IJ)V

    .line 612
    :cond_3
    const/4 v5, 0x0

    invoke-static {p1, p2, v10, v5}, Lcom/android/exchange/SyncManager;->startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;

    goto :goto_0

    .line 592
    .end local v3           #m2:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_4
    iget v5, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 597
    iget v5, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

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
    .line 616
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->access$300(J)V

    .line 617
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
    .line 666
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const/16 v2, 0x44

    invoke-static {v1, p1, p2, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 667
    .local v0, m2:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 669
    invoke-static {}, Lcom/android/exchange/SyncManager;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 670
    :try_start_0
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->access$500(Lcom/android/exchange/SyncManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 671
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v2, v2, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
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

    .line 673
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/android/exchange/SyncManager;->access$600(Lcom/android/exchange/SyncManager;Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    .line 674
    monitor-exit v1

    .line 681
    :goto_0
    return-void

    .line 676
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncService for mailbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already running. Cannot start FolderSync thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->errorlog(Ljava/lang/String;)V

    .line 677
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 677
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager$2;->getLicenseKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 502
    if-nez v0, :cond_0

    .line 503
    const/16 v0, 0xd

    .line 510
    :goto_0
    return v0

    .line 506
    :cond_0
    const-class v0, Lcom/android/exchange/EasSyncService;

    iget-object v7, p0, Lcom/android/exchange/SyncManager$2;->this$0:Lcom/android/exchange/SyncManager;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v7}, Lcom/android/exchange/AbstractSyncService;->validate(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    const/4 v0, -0x1

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v0

    goto :goto_0
.end method
