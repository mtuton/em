.class public Lcom/android/exchange/EasFolderCreateSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasFolderCreateSvc.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private final mNewFolderName:Ljava/lang/String;

.field private final mParentFolderID:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;J)V
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "folderName"
    .parameter "parentFolderId"

    .prologue
    const-string v3, "Mahskyript"

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 29
    const-string v0, "EasFolderCreateService"

    iput-object v0, p0, Lcom/android/exchange/EasFolderCreateSvc;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "Mahskyript"

    const-string v0, "EasFolderCreateSvc.EasFolderCreateSvc"

    invoke-static {v3, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-object p3, p0, Lcom/android/exchange/EasFolderCreateSvc;->mNewFolderName:Ljava/lang/String;

    .line 39
    iput-wide p4, p0, Lcom/android/exchange/EasFolderCreateSvc;->mParentFolderID:J

    .line 41
    iget-wide v0, p2, Lcom/android/email/provider/EmailContent;->mId:J

    const/16 v2, 0x44

    invoke-static {p1, v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 43
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 44
    const-string v0, "Mahskyript"

    const-string v0, "EasFolderCreateSvc.EasFolderCreateSvc exit"

    invoke-static {v3, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "Sync finished exit status :"

    const-string v12, "Sync ended due to an exception."

    const-string v11, "Stopped FolderCreateSvc finished"

    .line 49
    const-string v1, "Mahskyript"

    const-string v2, "EasFolderCreateSvc.run "

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/exchange/EasFolderCreateSvc;->setupService()Z

    .line 51
    const-string v1, "Deepak"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EasFolderCreateSvc Thread id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :try_start_0
    const-string v1, "Mahskyript"

    const-string v2, "EasFolderCreateSvc.run before callback"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 55
    const-string v1, "Mahskyript"

    const-string v2, "EasFolderCreateSvc.run after callback"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7

    .line 61
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_2

    .line 82
    :cond_0
    iget-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    if-nez v1, :cond_9

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasFolderCreateSvc;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 98
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_0

    .line 125
    :pswitch_0
    const/16 v8, 0x15

    .line 126
    .local v8, status:I
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v12}, Lcom/android/exchange/EasFolderCreateSvc;->errorLog(Ljava/lang/String;)V

    .line 131
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v8, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 139
    .end local v8           #status:I
    :goto_2
    iget-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    if-eqz v1, :cond_1

    .line 140
    const-string v1, "sync finished"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 143
    :cond_1
    :goto_3
    return-void

    .line 65
    :cond_2
    :try_start_3
    new-instance v0, Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, p0, Lcom/android/exchange/EasFolderCreateSvc;->mNewFolderName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/exchange/EasFolderCreateSvc;->mParentFolderID:J

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/FolderCreateAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;Ljava/lang/String;J)V

    .line 67
    .local v0, createAdapter:Lcom/android/exchange/adapter/FolderCreateAdapter;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasFolderCreateSvc;->processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 82
    iget-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    if-nez v1, :cond_a

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasFolderCreateSvc;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 98
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_1

    .line 125
    :pswitch_1
    const/16 v8, 0x15

    .line 126
    .restart local v8       #status:I
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v12}, Lcom/android/exchange/EasFolderCreateSvc;->errorLog(Ljava/lang/String;)V

    .line 131
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v8, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 139
    .end local v8           #status:I
    :goto_5
    iget-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    if-eqz v1, :cond_3

    .line 140
    const-string v1, "sync finished"

    .end local v0           #createAdapter:Lcom/android/exchange/adapter/FolderCreateAdapter;
    :goto_6
    invoke-static {v1}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 142
    :cond_3
    const-string v1, "Deepak"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit EasFolderCreateSvc Thread id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 71
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 72
    .local v6, e:Lcom/android/email/mail/DeviceAccessException;
    :try_start_5
    const-string v1, "DeviceAccessException"

    const-string v2, "EasFolderCreateSvc::run"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 74
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent;->mId:J

    sget v3, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v1, v2, v3}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 75
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    iget-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    if-nez v1, :cond_7

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasFolderCreateSvc;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 98
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_2

    .line 125
    :pswitch_2
    const/16 v8, 0x15

    .line 126
    .restart local v8       #status:I
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v12}, Lcom/android/exchange/EasFolderCreateSvc;->errorLog(Ljava/lang/String;)V

    .line 131
    :goto_7
    :try_start_6
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v8, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 139
    .end local v8           #status:I
    :goto_8
    iget-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    if-eqz v1, :cond_3

    .line 140
    const-string v1, "sync finished"

    goto/16 :goto_6

    .line 77
    .end local v6           #e:Lcom/android/email/mail/DeviceAccessException;
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 78
    .local v6, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, message:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Caught IOException: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-nez v7, :cond_4

    const-string v3, "No message"

    :goto_9
    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderCreateSvc;->userLog([Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 82
    iget-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    if-nez v1, :cond_8

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasFolderCreateSvc;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 98
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_3

    .line 125
    :pswitch_3
    const/16 v8, 0x15

    .line 126
    .restart local v8       #status:I
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v12}, Lcom/android/exchange/EasFolderCreateSvc;->errorLog(Ljava/lang/String;)V

    .line 131
    :goto_a
    :try_start_8
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v8, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 139
    .end local v8           #status:I
    :goto_b
    iget-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    if-eqz v1, :cond_3

    .line 140
    const-string v1, "sync finished"

    goto/16 :goto_6

    :cond_4
    move-object v3, v7

    .line 79
    goto :goto_9

    .line 103
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #message:Ljava/lang/String;
    :pswitch_4
    const/4 v8, 0x0

    .line 131
    .restart local v8       #status:I
    :goto_c
    :try_start_9
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v8, v5}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6

    .line 139
    .end local v8           #status:I
    :goto_d
    iget-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    if-eqz v2, :cond_5

    .line 140
    const-string v2, "sync finished"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 82
    :cond_5
    throw v1

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    if-nez v2, :cond_6

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/EasFolderCreateSvc;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Sync finished exit status :"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 98
    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v2, :pswitch_data_4

    .line 125
    :pswitch_5
    const/16 v8, 0x15

    .line 126
    .restart local v8       #status:I
    const-string v2, "Sync ended due to an exception."

    invoke-virtual {p0, v12}, Lcom/android/exchange/EasFolderCreateSvc;->errorLog(Ljava/lang/String;)V

    goto :goto_c

    .line 136
    .end local v8           #status:I
    :cond_6
    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "Stopped FolderCreateSvc finished"

    aput-object v11, v2, v9

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasFolderCreateSvc;->userLog([Ljava/lang/String;)V

    goto :goto_d

    .line 100
    :pswitch_6
    const/16 v8, 0x20

    .line 101
    .restart local v8       #status:I
    goto :goto_c

    .line 106
    .end local v8           #status:I
    :pswitch_7
    const/16 v8, 0x16

    .line 107
    .restart local v8       #status:I
    goto :goto_c

    .line 110
    .end local v8           #status:I
    :pswitch_8
    const/16 v8, 0x17

    .line 111
    .restart local v8       #status:I
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v10}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_c

    .line 116
    .end local v8           #status:I
    :pswitch_9
    const/4 v8, 0x3

    .line 117
    .restart local v8       #status:I
    goto :goto_c

    .line 120
    .end local v8           #status:I
    :pswitch_a
    const/4 v8, 0x4

    .line 121
    .restart local v8       #status:I
    goto :goto_c

    .line 136
    .end local v8           #status:I
    .local v6, e:Lcom/android/email/mail/DeviceAccessException;
    :cond_7
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "Stopped FolderCreateSvc finished"

    aput-object v11, v1, v9

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderCreateSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_8

    .line 103
    :pswitch_b
    const/4 v8, 0x0

    .line 104
    .restart local v8       #status:I
    goto/16 :goto_7

    .line 100
    .end local v8           #status:I
    :pswitch_c
    const/16 v8, 0x20

    .line 101
    .restart local v8       #status:I
    goto/16 :goto_7

    .line 106
    .end local v8           #status:I
    :pswitch_d
    const/16 v8, 0x16

    .line 107
    .restart local v8       #status:I
    goto/16 :goto_7

    .line 110
    .end local v8           #status:I
    :pswitch_e
    const/16 v8, 0x17

    .line 111
    .restart local v8       #status:I
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v10}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_7

    .line 116
    .end local v8           #status:I
    :pswitch_f
    const/4 v8, 0x3

    .line 117
    .restart local v8       #status:I
    goto/16 :goto_7

    .line 120
    .end local v8           #status:I
    :pswitch_10
    const/4 v8, 0x4

    .line 121
    .restart local v8       #status:I
    goto/16 :goto_7

    .line 136
    .end local v8           #status:I
    .local v6, e:Ljava/io/IOException;
    .restart local v7       #message:Ljava/lang/String;
    :cond_8
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "Stopped FolderCreateSvc finished"

    aput-object v11, v1, v9

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderCreateSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_b

    .line 103
    :pswitch_11
    const/4 v8, 0x0

    .line 104
    .restart local v8       #status:I
    goto/16 :goto_a

    .line 100
    .end local v8           #status:I
    :pswitch_12
    const/16 v8, 0x20

    .line 101
    .restart local v8       #status:I
    goto/16 :goto_a

    .line 106
    .end local v8           #status:I
    :pswitch_13
    const/16 v8, 0x16

    .line 107
    .restart local v8       #status:I
    goto/16 :goto_a

    .line 110
    .end local v8           #status:I
    :pswitch_14
    const/16 v8, 0x17

    .line 111
    .restart local v8       #status:I
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v10}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_a

    .line 116
    .end local v8           #status:I
    :pswitch_15
    const/4 v8, 0x3

    .line 117
    .restart local v8       #status:I
    goto/16 :goto_a

    .line 120
    .end local v8           #status:I
    :pswitch_16
    const/4 v8, 0x4

    .line 121
    .restart local v8       #status:I
    goto/16 :goto_a

    .line 136
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #message:Ljava/lang/String;
    .end local v8           #status:I
    :cond_9
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "Stopped FolderCreateSvc finished"

    aput-object v11, v1, v9

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderCreateSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 103
    :pswitch_17
    const/4 v8, 0x0

    .line 104
    .restart local v8       #status:I
    goto/16 :goto_1

    .line 100
    .end local v8           #status:I
    :pswitch_18
    const/16 v8, 0x20

    .line 101
    .restart local v8       #status:I
    goto/16 :goto_1

    .line 106
    .end local v8           #status:I
    :pswitch_19
    const/16 v8, 0x16

    .line 107
    .restart local v8       #status:I
    goto/16 :goto_1

    .line 110
    .end local v8           #status:I
    :pswitch_1a
    const/16 v8, 0x17

    .line 111
    .restart local v8       #status:I
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v10}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_1

    .line 116
    .end local v8           #status:I
    :pswitch_1b
    const/4 v8, 0x3

    .line 117
    .restart local v8       #status:I
    goto/16 :goto_1

    .line 120
    .end local v8           #status:I
    :pswitch_1c
    const/4 v8, 0x4

    .line 121
    .restart local v8       #status:I
    goto/16 :goto_1

    .line 136
    .end local v8           #status:I
    .restart local v0       #createAdapter:Lcom/android/exchange/adapter/FolderCreateAdapter;
    :cond_a
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "Stopped FolderCreateSvc finished"

    aput-object v11, v1, v9

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderCreateSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_5

    .line 103
    :pswitch_1d
    const/4 v8, 0x0

    .line 104
    .restart local v8       #status:I
    goto/16 :goto_4

    .line 100
    .end local v8           #status:I
    :pswitch_1e
    const/16 v8, 0x20

    .line 101
    .restart local v8       #status:I
    goto/16 :goto_4

    .line 106
    .end local v8           #status:I
    :pswitch_1f
    const/16 v8, 0x16

    .line 107
    .restart local v8       #status:I
    goto/16 :goto_4

    .line 110
    .end local v8           #status:I
    :pswitch_20
    const/16 v8, 0x17

    .line 111
    .restart local v8       #status:I
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v10}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_4

    .line 116
    .end local v8           #status:I
    :pswitch_21
    const/4 v8, 0x3

    .line 117
    .restart local v8       #status:I
    goto/16 :goto_4

    .line 120
    .end local v8           #status:I
    :pswitch_22
    const/4 v8, 0x4

    .line 121
    .restart local v8       #status:I
    goto/16 :goto_4

    .line 132
    :catch_2
    move-exception v1

    goto/16 :goto_5

    .end local v0           #createAdapter:Lcom/android/exchange/adapter/FolderCreateAdapter;
    :catch_3
    move-exception v1

    goto/16 :goto_2

    .restart local v6       #e:Ljava/io/IOException;
    .restart local v7       #message:Ljava/lang/String;
    :catch_4
    move-exception v1

    goto/16 :goto_b

    .end local v7           #message:Ljava/lang/String;
    .local v6, e:Lcom/android/email/mail/DeviceAccessException;
    :catch_5
    move-exception v1

    goto/16 :goto_8

    .end local v6           #e:Lcom/android/email/mail/DeviceAccessException;
    :catch_6
    move-exception v2

    goto/16 :goto_d

    .line 56
    .end local v8           #status:I
    :catch_7
    move-exception v1

    goto/16 :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_1
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
