.class public Lcom/android/exchange/EasOutboxService;
.super Lcom/android/exchange/EasSyncService;
.source "EasOutboxService.java"


# static fields
.field public static final BODY_HTML_CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final BODY_SOURCE_PROJECTION:[Ljava/lang/String; = null

.field public static final MAILBOX_KEY_AND_NOT_SEND_FAILED:Ljava/lang/String; = "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

.field public static final SEND_FAILED:I = 0x1

.field public static final SEND_MAIL_TIMEOUT:I = 0xdbba0

.field public static final WHERE_MESSAGE_KEY:Ljava/lang/String; = "messageKey=?"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "htmlContent"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/EasOutboxService;->BODY_HTML_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 65
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 0
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 77
    return-void
.end method

.method private convertBodyToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 88
    invoke-static {p1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<pre style=\"white-space:pre-wrap; word-wrap:break-word\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</pre>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    return-object p1
.end method

.method private sendCallback(JLjava/lang/String;I)V
    .locals 6
    .parameter "msgId"
    .parameter "subject"
    .parameter "status"

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/email/service/IEmailServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static sendMessage(Landroid/content/Context;JLcom/android/email/provider/EmailContent$Message;)V
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "msg"

    .prologue
    .line 417
    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 418
    .local v0, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    .line 419
    iget-wide v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    iput-wide v1, p3, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 420
    iput-wide p1, p3, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 421
    invoke-virtual {p3, p0}, Lcom/android/email/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 423
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/exchange/EasOutboxService;->setupService()Z

    .line 360
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    .line 362
    .local v7, cacheDir:Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasOutboxService;->mDeviceId:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v8, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 367
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 369
    .local v9, msgId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/exchange/EasOutboxService;->sendMessage(Ljava/io/File;J)I

    move-result v11

    .line 373
    .local v11, result:I
    const/16 v0, 0x16

    if-ne v11, v0, :cond_2

    .line 374
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 398
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": sync finished. Outbox exit status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 399
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 402
    iget v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 403
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #msgId:J
    .end local v11           #result:I
    :goto_0
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 408
    :cond_1
    return-void

    .line 376
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #msgId:J
    .restart local v11       #result:I
    :cond_2
    const/16 v0, 0x15

    if-ne v11, v0, :cond_3

    .line 377
    const/4 v0, 0x3

    :try_start_3
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 398
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": sync finished. Outbox exit status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 399
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 402
    iget v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 403
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto :goto_0

    .line 381
    :cond_3
    const/4 v0, 0x4

    if-ne v11, v0, :cond_0

    .line 382
    const/4 v0, 0x4

    :try_start_5
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 389
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 398
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": sync finished. Outbox exit status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 399
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 402
    iget v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 403
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 389
    .end local v9           #msgId:J
    .end local v11           #result:I
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 392
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 393
    .local v8, e:Ljava/io/IOException;
    const/4 v0, 0x1

    :try_start_8
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 398
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": sync finished. Outbox exit status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 399
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 402
    iget v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 403
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 389
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_4
    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 398
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": sync finished. Outbox exit status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 399
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 402
    iget v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 403
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 394
    .end local v6           #c:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 395
    .local v8, e:Ljava/lang/Exception;
    :try_start_a
    const-string v0, "Exception caught in EasOutboxService"

    invoke-virtual {p0, v0, v8}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 396
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 398
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": sync finished. Outbox exit status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 399
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 402
    iget v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 403
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 398
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": sync finished. Outbox exit status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 399
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 402
    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 403
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 398
    :cond_5
    throw v0
.end method

.method sendMessage(Ljava/io/File;J)I
    .locals 42
    .parameter "cacheDir"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 104
    const/16 v37, 0x0

    .line 105
    .local v37, result:I
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 106
    const-string v5, "eas_"

    const-string v6, "tmp"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v40

    .line 109
    .local v40, tmpFile:Ljava/io/File;
    const/16 v23, 0x0

    .line 110
    .local v23, fileStream:Ljava/io/FileOutputStream;
    const/16 v28, 0x0

    .line 112
    .local v28, inputStream:Ljava/io/FileInputStream;
    const/16 v30, 0x0

    .line 115
    .local v30, isSourceMessageHtml:Z
    :try_start_0
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "flags"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "subject"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, p2

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->getRowColumns(Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 117
    .local v19, cols:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v19, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 118
    .local v24, flags:I
    const/4 v5, 0x1

    aget-object v39, v19, v5

    .line 120
    .local v39, subject:Ljava/lang/String;
    and-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 121
    .local v34, reply:Z
    :goto_0
    and-int/lit8 v5, v24, 0x2

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    move/from16 v25, v5

    .line 123
    .local v25, forward:Z
    :goto_1
    const/16 v31, 0x0

    .line 124
    .local v31, itemId:Ljava/lang/String;
    const/16 v18, 0x0

    .line 125
    .local v18, collectionId:Ljava/lang/String;
    const-wide/16 v32, 0x0

    .line 126
    .local v32, refId:J
    if-nez v34, :cond_0

    if-eqz v25, :cond_5

    .line 128
    :cond_0
    sget-object v5, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    const-string v7, "messageKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->getRowColumns(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 130
    if-eqz v19, :cond_5

    .line 131
    const/4 v5, 0x0

    aget-object v5, v19, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 135
    sget-object v5, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/exchange/EasOutboxService;->BODY_HTML_CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "messageKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->getRowColumns(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 137
    .local v17, col_html:[Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 138
    const/4 v5, 0x0

    aget-object v26, v17, v5

    .line 139
    .local v26, htmlString:Ljava/lang/String;
    if-eqz v26, :cond_1

    const-string v5, ""

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 140
    const/16 v30, 0x1

    .line 144
    .end local v26           #htmlString:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v36

    .line 146
    .local v36, restoreBodyWithMessageId:Lcom/android/email/provider/EmailContent$Body;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 147
    :cond_2
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/exchange/EasOutboxService;->convertBodyToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 148
    .local v20, convertBodyToHtml:Ljava/lang/String;
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v41, values:Landroid/content/ContentValues;
    const-string v5, "htmlContent"

    move-object/from16 v0, v41

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v5, "textContent"

    const-string v6, ""

    move-object/from16 v0, v41

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    move-object/from16 v3, v41

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 156
    .end local v20           #convertBodyToHtml:Ljava/lang/String;
    .end local v36           #restoreBodyWithMessageId:Lcom/android/email/provider/EmailContent$Body;
    .end local v41           #values:Landroid/content/ContentValues;
    :cond_3
    if-nez v34, :cond_4

    if-eqz v25, :cond_5

    .line 158
    :cond_4
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "syncServerId"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "mailboxKey"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v32

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->getRowColumns(Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 160
    if-eqz v19, :cond_5

    .line 161
    const/4 v5, 0x0

    aget-object v31, v19, v5

    .line 162
    const/4 v5, 0x1

    aget-object v5, v19, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 164
    .local v12, boxId:J
    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "serverId"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v12

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->getRowColumns(Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 165
    if-eqz v19, :cond_5

    .line 166
    const/4 v5, 0x0

    aget-object v18, v19, v5

    .line 173
    .end local v12           #boxId:J
    .end local v17           #col_html:[Ljava/lang/String;
    :cond_5
    if-eqz v31, :cond_c

    if-eqz v18, :cond_c

    const/4 v5, 0x1

    move/from16 v38, v5

    .line 177
    .local v38, smartSend:Z
    :goto_2
    new-instance v8, Ljava/io/FileOutputStream;

    move-object v0, v8

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    .end local v23           #fileStream:Ljava/io/FileOutputStream;
    .local v8, fileStream:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Lcom/android/email/mail/transport/Rfc822Output;->setIsExchangeAccount(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    if-nez v38, :cond_d

    const/4 v6, 0x1

    move v9, v6

    :goto_3
    const/4 v10, 0x1

    move-wide/from16 v6, p2

    invoke-static/range {v5 .. v10}, Lcom/android/email/mail/transport/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 185
    new-instance v29, Ljava/io/FileInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 187
    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .local v29, inputStream:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v27, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-wide v2, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 196
    .local v27, inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    if-eqz v38, :cond_f

    .line 199
    if-eqz v34, :cond_e

    .line 200
    new-instance v15, Ljava/lang/StringBuffer;

    const-string v5, "SmartReply"

    invoke-direct {v15, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 203
    .local v15, cmdBuffer:Ljava/lang/StringBuffer;
    :goto_4
    const-string v5, "&ItemId="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&CollectionId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&SaveInSent=T"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send cmd: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 205
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0xdbba0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v27

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v35

    .line 215
    .local v35, resp:Lorg/apache/http/HttpResponse;
    :goto_5
    invoke-interface/range {v35 .. v35}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 217
    .local v16, code:I
    const-string v5, "sendMessage(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 219
    const/16 v5, 0xc8

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_10

    .line 220
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Deleting message..."

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    const/16 v37, 0x0

    .line 224
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-object/from16 v3, v39

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v28, v29

    .line 341
    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    :cond_6
    :goto_6
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 342
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->delete()Z

    .line 345
    :cond_7
    if-eqz v8, :cond_8

    .line 346
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 348
    :cond_8
    if-eqz v28, :cond_9

    .line 349
    .end local v15           #cmdBuffer:Ljava/lang/StringBuffer;
    .end local v16           #code:I
    .end local v18           #collectionId:Ljava/lang/String;
    .end local v19           #cols:[Ljava/lang/String;
    .end local v24           #flags:I
    .end local v25           #forward:Z
    .end local v27           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v31           #itemId:Ljava/lang/String;
    .end local v32           #refId:J
    .end local v34           #reply:Z
    .end local v35           #resp:Lorg/apache/http/HttpResponse;
    .end local v38           #smartSend:Z
    .end local v39           #subject:Ljava/lang/String;
    :goto_7
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V

    .line 354
    :cond_9
    return v37

    .line 120
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .restart local v19       #cols:[Ljava/lang/String;
    .restart local v23       #fileStream:Ljava/io/FileOutputStream;
    .restart local v24       #flags:I
    .restart local v39       #subject:Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_0

    .line 121
    .restart local v34       #reply:Z
    :cond_b
    const/4 v5, 0x0

    move/from16 v25, v5

    goto/16 :goto_1

    .line 173
    .restart local v18       #collectionId:Ljava/lang/String;
    .restart local v25       #forward:Z
    .restart local v31       #itemId:Ljava/lang/String;
    .restart local v32       #refId:J
    :cond_c
    const/4 v5, 0x0

    move/from16 v38, v5

    goto/16 :goto_2

    .line 180
    .end local v23           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    .restart local v38       #smartSend:Z
    :cond_d
    const/4 v6, 0x0

    move v9, v6

    goto/16 :goto_3

    .line 202
    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .restart local v27       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v29       #inputStream:Ljava/io/FileInputStream;
    :cond_e
    :try_start_3
    new-instance v15, Ljava/lang/StringBuffer;

    const-string v5, "SmartForward"

    invoke-direct {v15, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v15       #cmdBuffer:Ljava/lang/StringBuffer;
    goto/16 :goto_4

    .line 208
    .end local v15           #cmdBuffer:Ljava/lang/StringBuffer;
    :cond_f
    new-instance v15, Ljava/lang/StringBuffer;

    const-string v5, "SendMail&SaveInSent=T"

    invoke-direct {v15, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v15       #cmdBuffer:Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send cmd: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 210
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0xdbba0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v27

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v35

    .restart local v35       #resp:Lorg/apache/http/HttpResponse;
    goto/16 :goto_5

    .line 227
    .restart local v16       #code:I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->isProvisionError(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 228
    const/16 v37, 0x4

    .line 229
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    move-object/from16 v28, v29

    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 234
    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .restart local v29       #inputStream:Ljava/io/FileInputStream;
    :cond_11
    const/16 v37, 0x15

    .line 235
    const/16 v5, 0x1f4

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_1f

    if-eqz v38, :cond_1f

    .line 237
    const-string v5, "EasOutboxService"

    const-string v6, "Smart send fail.Attemption normal send"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 240
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->delete()Z

    .line 243
    :cond_12
    if-eqz v8, :cond_1e

    .line 245
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 246
    const/4 v8, 0x0

    move-object/from16 v23, v8

    .line 248
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .restart local v23       #fileStream:Ljava/io/FileOutputStream;
    :goto_8
    if-eqz v29, :cond_13

    .line 250
    :try_start_4
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V

    .line 251
    const/16 v28, 0x0

    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v29, v28

    .line 255
    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .restart local v29       #inputStream:Ljava/io/FileInputStream;
    :cond_13
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v21, cv:Landroid/content/ContentValues;
    if-eqz v31, :cond_16

    .line 258
    if-nez v34, :cond_14

    if-eqz v25, :cond_16

    .line 260
    :cond_14
    sget-object v5, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    const-string v7, "messageKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->getRowColumns(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 262
    if-eqz v19, :cond_16

    .line 263
    const/4 v5, 0x0

    aget-object v5, v19, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 264
    if-nez v34, :cond_15

    if-eqz v25, :cond_16

    .line 266
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v11

    .line 267
    .local v11, body:Lcom/android/email/provider/EmailContent$Body;
    if-eqz v11, :cond_16

    .line 268
    const-string v5, "htmlReply"

    iget-object v6, v11, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v5, "textReply"

    iget-object v6, v11, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 276
    .end local v11           #body:Lcom/android/email/provider/EmailContent$Body;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v11

    .line 279
    .restart local v11       #body:Lcom/android/email/provider/EmailContent$Body;
    new-instance v8, Ljava/io/FileOutputStream;

    move-object v0, v8

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 280
    .end local v23           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-wide/from16 v6, p2

    invoke-static/range {v5 .. v10}, Lcom/android/email/mail/transport/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 283
    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 284
    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    :try_start_6
    new-instance v27, Lorg/apache/http/entity/InputStreamEntity;

    .end local v27           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide v2, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 288
    .restart local v27       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v14, "SendMail&SaveInSent=T"

    .line 290
    .local v14, cmd:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send cmd: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 291
    const v5, 0xdbba0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v27

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v35

    .line 293
    invoke-interface/range {v35 .. v35}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 294
    const/16 v5, 0xc8

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_17

    .line 295
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Deleting message..."

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 298
    const/16 v37, 0x0

    .line 299
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-object/from16 v3, v39

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 302
    .end local v11           #body:Lcom/android/email/provider/EmailContent$Body;
    .end local v14           #cmd:Ljava/lang/String;
    .end local v21           #cv:Landroid/content/ContentValues;
    :cond_17
    :goto_9
    if-eqz v37, :cond_6

    .line 304
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .restart local v21       #cv:Landroid/content/ContentValues;
    const-string v5, "syncServerId"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 310
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->isAuthError(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 311
    const/16 v37, 0x16

    .line 315
    :goto_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_6

    .line 318
    .end local v15           #cmdBuffer:Ljava/lang/StringBuffer;
    .end local v16           #code:I
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v27           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v35           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v5

    move-object/from16 v22, v5

    .line 321
    .end local v18           #collectionId:Ljava/lang/String;
    .end local v19           #cols:[Ljava/lang/String;
    .end local v24           #flags:I
    .end local v25           #forward:Z
    .end local v31           #itemId:Ljava/lang/String;
    .end local v32           #refId:J
    .end local v34           #reply:Z
    .end local v38           #smartSend:Z
    .end local v39           #subject:Ljava/lang/String;
    .local v22, e:Ljava/io/IOException;
    :goto_b
    const/4 v5, 0x1

    :try_start_7
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caught IOException: Message:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 323
    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 324
    throw v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 341
    .end local v22           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_c
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 342
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->delete()Z

    .line 345
    :cond_18
    if-eqz v8, :cond_19

    .line 346
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 348
    :cond_19
    if-eqz v28, :cond_1a

    .line 349
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V

    .line 341
    :cond_1a
    throw v5

    .line 313
    .restart local v15       #cmdBuffer:Ljava/lang/StringBuffer;
    .restart local v16       #code:I
    .restart local v18       #collectionId:Ljava/lang/String;
    .restart local v19       #cols:[Ljava/lang/String;
    .restart local v21       #cv:Landroid/content/ContentValues;
    .restart local v24       #flags:I
    .restart local v25       #forward:Z
    .restart local v27       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v31       #itemId:Ljava/lang/String;
    .restart local v32       #refId:J
    .restart local v34       #reply:Z
    .restart local v35       #resp:Lorg/apache/http/HttpResponse;
    .restart local v38       #smartSend:Z
    .restart local v39       #subject:Ljava/lang/String;
    :cond_1b
    const/16 v37, 0x0

    goto :goto_a

    .line 327
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v15           #cmdBuffer:Ljava/lang/StringBuffer;
    .end local v16           #code:I
    .end local v18           #collectionId:Ljava/lang/String;
    .end local v19           #cols:[Ljava/lang/String;
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v24           #flags:I
    .end local v25           #forward:Z
    .end local v27           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v31           #itemId:Ljava/lang/String;
    .end local v32           #refId:J
    .end local v34           #reply:Z
    .end local v35           #resp:Lorg/apache/http/HttpResponse;
    .end local v38           #smartSend:Z
    .end local v39           #subject:Ljava/lang/String;
    .restart local v23       #fileStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object/from16 v22, v5

    move-object/from16 v8, v23

    .line 328
    .end local v23           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    .local v22, e:Ljava/lang/Exception;
    :goto_d
    const/4 v5, 0x1

    :try_start_8
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception caught in sendMessage()"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 330
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .restart local v21       #cv:Landroid/content/ContentValues;
    const-string v5, "syncServerId"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 334
    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 336
    const/16 v37, 0x0

    .line 341
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 342
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->delete()Z

    .line 345
    :cond_1c
    if-eqz v8, :cond_1d

    .line 346
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 348
    :cond_1d
    if-eqz v28, :cond_9

    goto/16 :goto_7

    .line 341
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v23       #fileStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object/from16 v8, v23

    .end local v23           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .restart local v18       #collectionId:Ljava/lang/String;
    .restart local v19       #cols:[Ljava/lang/String;
    .restart local v24       #flags:I
    .restart local v25       #forward:Z
    .restart local v29       #inputStream:Ljava/io/FileInputStream;
    .restart local v31       #itemId:Ljava/lang/String;
    .restart local v32       #refId:J
    .restart local v34       #reply:Z
    .restart local v38       #smartSend:Z
    .restart local v39       #subject:Ljava/lang/String;
    :catchall_2
    move-exception v5

    move-object/from16 v28, v29

    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_c

    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .restart local v15       #cmdBuffer:Ljava/lang/StringBuffer;
    .restart local v16       #code:I
    .restart local v23       #fileStream:Ljava/io/FileOutputStream;
    .restart local v27       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v29       #inputStream:Ljava/io/FileInputStream;
    .restart local v35       #resp:Lorg/apache/http/HttpResponse;
    :catchall_3
    move-exception v5

    move-object/from16 v28, v29

    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v8, v23

    .end local v23           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 327
    .end local v15           #cmdBuffer:Ljava/lang/StringBuffer;
    .end local v16           #code:I
    .end local v27           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v35           #resp:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v5

    move-object/from16 v22, v5

    goto :goto_d

    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .restart local v29       #inputStream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object/from16 v22, v5

    move-object/from16 v28, v29

    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    goto :goto_d

    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .restart local v15       #cmdBuffer:Ljava/lang/StringBuffer;
    .restart local v16       #code:I
    .restart local v23       #fileStream:Ljava/io/FileOutputStream;
    .restart local v27       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v29       #inputStream:Ljava/io/FileInputStream;
    .restart local v35       #resp:Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v5

    move-object/from16 v22, v5

    move-object/from16 v28, v29

    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v8, v23

    .end local v23           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_d

    .line 318
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v15           #cmdBuffer:Ljava/lang/StringBuffer;
    .end local v16           #code:I
    .end local v18           #collectionId:Ljava/lang/String;
    .end local v19           #cols:[Ljava/lang/String;
    .end local v24           #flags:I
    .end local v25           #forward:Z
    .end local v27           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v31           #itemId:Ljava/lang/String;
    .end local v32           #refId:J
    .end local v34           #reply:Z
    .end local v35           #resp:Lorg/apache/http/HttpResponse;
    .end local v38           #smartSend:Z
    .end local v39           #subject:Ljava/lang/String;
    .restart local v23       #fileStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v5

    move-object/from16 v22, v5

    move-object/from16 v8, v23

    .end local v23           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .restart local v18       #collectionId:Ljava/lang/String;
    .restart local v19       #cols:[Ljava/lang/String;
    .restart local v24       #flags:I
    .restart local v25       #forward:Z
    .restart local v29       #inputStream:Ljava/io/FileInputStream;
    .restart local v31       #itemId:Ljava/lang/String;
    .restart local v32       #refId:J
    .restart local v34       #reply:Z
    .restart local v38       #smartSend:Z
    .restart local v39       #subject:Ljava/lang/String;
    :catch_6
    move-exception v5

    move-object/from16 v22, v5

    move-object/from16 v28, v29

    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .restart local v15       #cmdBuffer:Ljava/lang/StringBuffer;
    .restart local v16       #code:I
    .restart local v23       #fileStream:Ljava/io/FileOutputStream;
    .restart local v27       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v29       #inputStream:Ljava/io/FileInputStream;
    .restart local v35       #resp:Lorg/apache/http/HttpResponse;
    :catch_7
    move-exception v5

    move-object/from16 v22, v5

    move-object/from16 v28, v29

    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v8, v23

    .end local v23           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .end local v28           #inputStream:Ljava/io/FileInputStream;
    .restart local v29       #inputStream:Ljava/io/FileInputStream;
    :cond_1e
    move-object/from16 v23, v8

    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .restart local v23       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .end local v23           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    :cond_1f
    move-object/from16 v28, v29

    .end local v29           #inputStream:Ljava/io/FileInputStream;
    .restart local v28       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_9
.end method
