.class public Lcom/android/email/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/Controller$ServiceCallback;,
        Lcom/android/email/Controller$LegacyListener;,
        Lcom/android/email/Controller$Result;,
        Lcom/android/email/Controller$PendingDownloadController;,
        Lcom/android/email/Controller$AccountMoveMessageInfo;
    }
.end annotation


# static fields
.field public static final EAS_TYPE_INDEX:I = 0x2

.field public static final IMAP_TYPE_INDEX:I = 0x1

.field private static MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

.field private static MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

.field private static MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

.field private static MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

.field public static final POP3_TYPE_INDEX:I

.field static sInstance:Lcom/android/email/Controller;


# instance fields
.field public bEAS2POP_EASTrashMove_Complete:Z

.field private mAccountMoveList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$AccountMoveMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLegacyController:Lcom/android/email/MessagingController;

.field private mLegacyListener:Lcom/android/email/Controller$LegacyListener;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

.field private mProviderContext:Landroid/content/Context;

.field private mServiceCallback:Lcom/android/email/Controller$ServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v5, "_id"

    .line 106
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    .line 110
    sput v2, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

    .line 112
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    .line 116
    sput v2, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "_context"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/email/Controller$LegacyListener;

    invoke-direct {v0, p0, v1}, Lcom/android/email/Controller$LegacyListener;-><init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    .line 72
    new-instance v0, Lcom/android/email/Controller$ServiceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    .line 1562
    iput-object v1, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    .line 119
    iput-object p1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    .line 120
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 121
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;)Lcom/android/email/MessagingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    .line 122
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->addListener(Lcom/android/email/MessagingListener;)V

    .line 123
    return-void
.end method

.method static synthetic access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/Controller;)Lcom/android/email/Controller$PendingDownloadController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/Controller;Lcom/android/email/Controller$PendingDownloadController;)Lcom/android/email/Controller$PendingDownloadController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/Controller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/email/Controller;->processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    return-object v0
.end method

.method private emailToAccountId(Ljava/lang/String;)I
    .locals 9
    .parameter "email"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 734
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 735
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "emailAddress=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 742
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 744
    .local v7, retValue:I
    if-eqz v6, :cond_1

    .line 745
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 746
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 747
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 750
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 754
    :cond_1
    return v7
.end method

.method private folderCommandCallback(IIJ)V
    .locals 6
    .parameter "command"
    .parameter "errorId"
    .parameter "mailboxId"

    .prologue
    .line 1783
    iget-object v2, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v2

    .line 1784
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1785
    .local v1, listener:Lcom/android/email/Controller$Result;
    new-instance v3, Lcom/android/email/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_0

    .line 1789
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1790
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/Controller;
    .locals 2
    .parameter "_context"

    .prologue
    .line 130
    const-class v0, Lcom/android/email/Controller;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/android/email/Controller;

    invoke-direct {v1, p0}, Lcom/android/email/Controller;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    .line 133
    :cond_0
    sget-object v1, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getServiceForAccount(J)Lcom/android/email/service/IEmailService;
    .locals 3
    .parameter "accountId"

    .prologue
    .line 2299
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 2300
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2301
    :cond_0
    const/4 v1, 0x0

    .line 2303
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeEmailService(Landroid/content/Context;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailService;

    move-result-object v1

    goto :goto_0
.end method

.method private getServiceForMessage(J)Lcom/android/email/service/IEmailService;
    .locals 3
    .parameter "messageId"

    .prologue
    .line 2282
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 2283
    .local v0, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 2284
    iget-wide v1, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v1

    .line 2286
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isActiveResultCallback(Lcom/android/email/Controller$Result;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadAttachmentOfEAS(JJJJ)Z
    .locals 13
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "accountId"

    .prologue
    .line 1696
    iget-object v9, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v0, v9

    move-wide/from16 v1, p7

    move-wide v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v7

    .line 1700
    .local v7, saveToFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1701
    const-string v9, "loadAttachmentOfEAS"

    const-string v10, "Something goes wrong now.."

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const/4 v9, 0x0

    .line 1718
    :goto_0
    return v9

    .line 1705
    :cond_0
    iget-object v9, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v5

    .line 1708
    .local v5, attachInfo:Lcom/android/email/provider/EmailContent$Attachment;
    move-object v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v8

    .line 1709
    .local v8, service:Lcom/android/email/service/IEmailService;
    if-eqz v8, :cond_1

    .line 1711
    :try_start_0
    iget-wide v9, v5, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-wide/from16 v0, p7

    move-wide v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/android/email/service/IEmailService;->loadAttachment(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1718
    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    .line 1713
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 1714
    .local v6, e:Landroid/os/RemoteException;
    const-string v9, "loadAttachmentOfEAS"

    const-string v10, "RemoteException"

    invoke-static {v9, v10, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1715
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V
    .locals 30

    .prologue
    .line 1576
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 1578
    .local v18, final_messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    .line 1579
    .local v4, final_source_accountId:J
    const-wide/16 v6, -0x1

    .line 1580
    .local v6, final_source_boxId:J
    const-wide/16 v8, -0x1

    .line 1581
    .local v8, final_target_accountId:J
    const-wide/16 v10, -0x1

    .local v10, final_target_boxId:J
    move-wide/from16 v25, v10

    .end local v10           #final_target_boxId:J
    .local v25, final_target_boxId:J
    move-wide/from16 v23, v8

    .end local v8           #final_target_accountId:J
    .local v23, final_target_accountId:J
    move-wide/from16 v21, v6

    .end local v6           #final_source_boxId:J
    .local v21, final_source_boxId:J
    move-wide/from16 v19, v4

    .line 1585
    .end local v4           #final_source_accountId:J
    .local v19, final_source_accountId:J
    :goto_0
    const/4 v12, 0x0

    .line 1586
    .local v12, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    const/4 v14, 0x0

    .line 1588
    .local v14, bDelay:Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->clear()V

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1592
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1594
    monitor-exit v17

    move-wide/from16 v10, v25

    .end local v25           #final_target_boxId:J
    .restart local v10       #final_target_boxId:J
    move-wide/from16 v8, v23

    .end local v23           #final_target_accountId:J
    .restart local v8       #final_target_accountId:J
    move-wide/from16 v6, v21

    .end local v21           #final_source_boxId:J
    .restart local v6       #final_source_boxId:J
    move-wide/from16 v4, v19

    .line 1690
    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    :goto_1
    return-void

    .line 1598
    .end local v4           #final_source_accountId:J
    .end local v6           #final_source_boxId:J
    .end local v8           #final_target_accountId:J
    .end local v10           #final_target_boxId:J
    .restart local v19       #final_source_accountId:J
    .restart local v21       #final_source_boxId:J
    .restart local v23       #final_target_accountId:J
    .restart local v25       #final_target_boxId:J
    :cond_0
    const/16 v16, 0x0

    .line 1599
    .local v16, btrylater:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 1601
    .local v13, AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    iget v2, v13, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v13, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    .line 1604
    iget v2, v13, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_3

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1607
    const/16 v16, 0x1

    .line 1617
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_2
    if-eqz v16, :cond_4

    .line 1619
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1670
    .end local v16           #btrylater:Z
    .end local v27           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    move-wide/from16 v10, v25

    .end local v25           #final_target_boxId:J
    .restart local v10       #final_target_boxId:J
    move-wide/from16 v8, v23

    .end local v23           #final_target_accountId:J
    .restart local v8       #final_target_accountId:J
    move-wide/from16 v6, v21

    .end local v21           #final_source_boxId:J
    .restart local v6       #final_source_boxId:J
    move-wide/from16 v4, v19

    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    :goto_3
    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1611
    .end local v4           #final_source_accountId:J
    .end local v6           #final_source_boxId:J
    .end local v8           #final_target_accountId:J
    .end local v10           #final_target_boxId:J
    .restart local v13       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v16       #btrylater:Z
    .restart local v19       #final_source_accountId:J
    .restart local v21       #final_source_boxId:J
    .restart local v23       #final_target_accountId:J
    .restart local v25       #final_target_boxId:J
    .restart local v27       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_2
    iget-wide v2, v13, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1613
    const/4 v14, 0x1

    goto :goto_2

    .line 1622
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_4
    if-nez v14, :cond_a

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 1626
    .restart local v13       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object v12, v13

    .line 1628
    iget-wide v2, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v10, v25

    .end local v25           #final_target_boxId:J
    .restart local v10       #final_target_boxId:J
    move-wide/from16 v8, v23

    .end local v23           #final_target_accountId:J
    .restart local v8       #final_target_accountId:J
    move-wide/from16 v6, v21

    .end local v21           #final_source_boxId:J
    .restart local v6       #final_source_boxId:J
    move-wide/from16 v4, v19

    .line 1670
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    :goto_4
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1672
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    .line 1674
    invoke-virtual/range {v2 .. v11}, Lcom/android/email/Controller;->moveMessageToOtherAccountFolder(Ljava/util/HashSet;JJJJ)Z

    .line 1679
    :cond_5
    const-wide/16 v2, 0x12c

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-wide/from16 v25, v10

    .end local v10           #final_target_boxId:J
    .restart local v25       #final_target_boxId:J
    move-wide/from16 v23, v8

    .end local v8           #final_target_accountId:J
    .restart local v23       #final_target_accountId:J
    move-wide/from16 v21, v6

    .end local v6           #final_source_boxId:J
    .restart local v21       #final_source_boxId:J
    move-wide/from16 v19, v4

    .line 1687
    .end local v4           #final_source_accountId:J
    .restart local v19       #final_source_accountId:J
    goto/16 :goto_0

    .line 1633
    .restart local v13       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_6
    :try_start_5
    iget-wide v2, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    move-wide/from16 v10, v25

    .end local v25           #final_target_boxId:J
    .restart local v10       #final_target_boxId:J
    move-wide/from16 v8, v23

    .end local v23           #final_target_accountId:J
    .restart local v8       #final_target_accountId:J
    move-wide/from16 v6, v21

    .end local v21           #final_source_boxId:J
    .restart local v6       #final_source_boxId:J
    move-wide/from16 v4, v19

    .line 1635
    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    goto :goto_4

    .line 1638
    .end local v4           #final_source_accountId:J
    .end local v6           #final_source_boxId:J
    .end local v8           #final_target_accountId:J
    .end local v10           #final_target_boxId:J
    .restart local v19       #final_source_accountId:J
    .restart local v21       #final_source_boxId:J
    .restart local v23       #final_target_accountId:J
    .restart local v25       #final_target_boxId:J
    :cond_7
    new-instance v29, Ljava/util/HashSet;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    .line 1640
    .local v29, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-wide v3, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    iget-wide v5, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;

    move-result-object v29

    .line 1641
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1643
    iget-wide v2, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1645
    iget-wide v4, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1646
    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    :try_start_6
    iget-wide v6, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1647
    .end local v21           #final_source_boxId:J
    .restart local v6       #final_source_boxId:J
    :try_start_7
    iget-wide v8, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_accountId:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1648
    .end local v23           #final_target_accountId:J
    .restart local v8       #final_target_accountId:J
    :try_start_8
    iget-wide v10, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_boxId:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1650
    .end local v25           #final_target_boxId:J
    .restart local v10       #final_target_boxId:J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 1670
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v16           #btrylater:Z
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v29           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v2

    goto/16 :goto_3

    .line 1654
    .end local v4           #final_source_accountId:J
    .end local v6           #final_source_boxId:J
    .end local v8           #final_target_accountId:J
    .end local v10           #final_target_boxId:J
    .restart local v13       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v16       #btrylater:Z
    .restart local v19       #final_source_accountId:J
    .restart local v21       #final_source_boxId:J
    .restart local v23       #final_target_accountId:J
    .restart local v25       #final_target_boxId:J
    .restart local v27       #i$:Ljava/util/Iterator;
    .restart local v29       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_8
    const/4 v15, 0x1

    .line 1655
    .local v15, bret:Z
    :try_start_a
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    .line 1657
    .local v28, id:Ljava/lang/Long;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    iget-wide v7, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J

    iget-wide v9, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/email/Controller;->loadAttachmentOfEAS(JJJJ)Z

    move-result v15

    .line 1658
    if-nez v15, :cond_9

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local v28           #id:Ljava/lang/Long;
    :cond_9
    move-wide/from16 v10, v25

    .end local v25           #final_target_boxId:J
    .restart local v10       #final_target_boxId:J
    move-wide/from16 v8, v23

    .end local v23           #final_target_accountId:J
    .restart local v8       #final_target_accountId:J
    move-wide/from16 v6, v21

    .end local v21           #final_source_boxId:J
    .restart local v6       #final_source_boxId:J
    move-wide/from16 v4, v19

    .line 1667
    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    goto/16 :goto_4

    .line 1680
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v15           #bret:Z
    .end local v29           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catch_0
    move-exception v17

    .line 1681
    .local v17, e:Ljava/lang/InterruptedException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1683
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1684
    monitor-exit v2

    goto/16 :goto_1

    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1687
    .end local v17           #e:Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v2

    throw v2

    .line 1670
    .end local v6           #final_source_boxId:J
    .end local v8           #final_target_accountId:J
    .end local v10           #final_target_boxId:J
    .restart local v13       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v21       #final_source_boxId:J
    .restart local v23       #final_target_accountId:J
    .restart local v25       #final_target_boxId:J
    .restart local v29       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_4
    move-exception v2

    move-wide/from16 v10, v25

    .end local v25           #final_target_boxId:J
    .restart local v10       #final_target_boxId:J
    move-wide/from16 v8, v23

    .end local v23           #final_target_accountId:J
    .restart local v8       #final_target_accountId:J
    move-wide/from16 v6, v21

    .end local v21           #final_source_boxId:J
    .restart local v6       #final_source_boxId:J
    goto/16 :goto_3

    .end local v8           #final_target_accountId:J
    .end local v10           #final_target_boxId:J
    .restart local v23       #final_target_accountId:J
    .restart local v25       #final_target_boxId:J
    :catchall_5
    move-exception v2

    move-wide/from16 v10, v25

    .end local v25           #final_target_boxId:J
    .restart local v10       #final_target_boxId:J
    move-wide/from16 v8, v23

    .end local v23           #final_target_accountId:J
    .restart local v8       #final_target_accountId:J
    goto/16 :goto_3

    .end local v10           #final_target_boxId:J
    .restart local v25       #final_target_boxId:J
    :catchall_6
    move-exception v2

    move-wide/from16 v10, v25

    .end local v25           #final_target_boxId:J
    .restart local v10       #final_target_boxId:J
    goto/16 :goto_3

    .end local v4           #final_source_accountId:J
    .end local v6           #final_source_boxId:J
    .end local v8           #final_target_accountId:J
    .end local v10           #final_target_boxId:J
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v29           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v19       #final_source_accountId:J
    .restart local v21       #final_source_boxId:J
    .restart local v23       #final_target_accountId:J
    .restart local v25       #final_target_boxId:J
    :cond_a
    move-wide/from16 v10, v25

    .end local v25           #final_target_boxId:J
    .restart local v10       #final_target_boxId:J
    move-wide/from16 v8, v23

    .end local v23           #final_target_accountId:J
    .restart local v8       #final_target_accountId:J
    move-wide/from16 v6, v21

    .end local v21           #final_source_boxId:J
    .restart local v6       #final_source_boxId:J
    move-wide/from16 v4, v19

    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    goto/16 :goto_4
.end method

.method private static updateHistoryReadFlag(Landroid/content/Context;JZ)V
    .locals 7
    .parameter "context"
    .parameter "msgId"
    .parameter "isRead"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2059
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2061
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "messageid=?"

    .line 2062
    .local v1, selection:Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 2064
    .local v2, selectionArg:[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2065
    .local v3, value:Landroid/content/ContentValues;
    const-string v4, "new"

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2066
    const-string v4, "content://logs/email"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2067
    return-void

    :cond_0
    move v5, v6

    .line 2065
    goto :goto_0
.end method


# virtual methods
.method public EASMoveMessage(Ljava/util/HashSet;JJJ)V
    .locals 16
    .parameter
    .parameter "accountId"
    .parameter "mailboxKey"
    .parameter "curBoxKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JJJ)V"
        }
    .end annotation

    .prologue
    .line 1723
    .local p1, messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1725
    .local v4, mList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 1727
    .local v12, i:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 1729
    .local v14, id:Ljava/lang/Long;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1730
    .local v15, temp:Ljava/lang/String;
    invoke-interface {v4, v12, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1731
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1734
    .end local v14           #id:Ljava/lang/Long;
    .end local v15           #temp:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v3

    .line 1736
    .local v3, service:Lcom/android/email/service/IEmailService;
    if-eqz v3, :cond_1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    .line 1739
    :try_start_0
    invoke-interface/range {v3 .. v10}, Lcom/android/email/service/IEmailService;->MoveMessage(Ljava/util/List;JJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    :cond_1
    :goto_1
    return-void

    .line 1740
    :catch_0
    move-exception v11

    .line 1743
    .local v11, e:Landroid/os/RemoteException;
    const-string v5, "onEASMoveMessage"

    const-string v6, "RemoteException"

    invoke-static {v5, v6, v11}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public addResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelLoadRemoteMessage(J)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 307
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/MessagingController;->cancelLoadRemoteMessage(J)V

    .line 310
    :cond_0
    return-void
.end method

.method public changeMimeType(JJLjava/lang/String;)Z
    .locals 6
    .parameter "accountId"
    .parameter "attachmentId"
    .parameter "newMimeType"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/email/provider/AttachmentProvider;->changeMimeType(Landroid/content/Context;JJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createFolder(Ljava/lang/String;J)V
    .locals 20
    .parameter "folderName"
    .parameter "mailboxId"

    .prologue
    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v19

    .line 1845
    .local v19, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v19, :cond_0

    .line 1846
    const/4 v5, 0x4

    const/16 v6, 0x26

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-wide/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    .line 1890
    :goto_0
    return-void

    .line 1851
    :cond_0
    new-instance v8, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parentServerId=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "displayName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "accountKey"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v8, WHERE_SUBFOLDERS:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1861
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_1

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1862
    const/4 v5, 0x4

    const/16 v6, 0x25

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-wide/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1871
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v5, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v9

    .line 1872
    .local v9, service:Lcom/android/email/service/IEmailService;
    if-eqz v9, :cond_2

    if-eqz v19, :cond_2

    .line 1874
    :try_start_1
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v10, v0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    invoke-interface/range {v9 .. v14}, Lcom/android/email/service/IEmailService;->folderCreate(JLjava/lang/String;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1875
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 1878
    .local v16, e:Landroid/os/RemoteException;
    const-string v5, "moveMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1868
    .end local v9           #service:Lcom/android/email/service/IEmailService;
    .end local v16           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1881
    .restart local v9       #service:Lcom/android/email/service/IEmailService;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v5, v0

    monitor-enter v5

    .line 1882
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v8           #WHERE_SUBFOLDERS:Ljava/lang/String;
    .local v17, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/Controller$Result;

    .line 1883
    .local v18, listener:Lcom/android/email/Controller$Result;
    const/4 v6, 0x4

    new-instance v7, Lcom/android/email/mail/MessagingException;

    const-string v8, "Operation not supported"

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v8, v0

    move-object/from16 v0, v18

    move v1, v6

    move-object v2, v7

    move-wide v3, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_1

    .line 1887
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #listener:Lcom/android/email/Controller$Result;
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method createMailbox(JI)J
    .locals 6
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 423
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    if-gez p3, :cond_1

    .line 424
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid arguments "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, mes:Ljava/lang/String;
    const-string v4, "Email"

    invoke-static {v4, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 428
    .end local v3           #mes:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    .line 429
    .local v0, box:Lcom/android/email/provider/EmailContent$Mailbox;
    iput-wide p1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 430
    iput p3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 431
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 432
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 433
    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getMailboxServerName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 434
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 437
    iget-object v4, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 438
    .local v2, l:Lcom/android/email/Controller$Result;
    invoke-interface {v2}, Lcom/android/email/Controller$Result;->createMailbox()V

    goto :goto_0

    .line 441
    .end local v2           #l:Lcom/android/email/Controller$Result;
    :cond_2
    iget-wide v4, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    return-wide v4
.end method

.method public deleteAttachment(J)V
    .locals 4
    .parameter "attachmentId"

    .prologue
    const/4 v3, 0x0

    .line 945
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 946
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 947
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 948
    return-void
.end method

.method public deleteFolder(J)V
    .locals 12
    .parameter "mailboxId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1795
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 1797
    .local v4, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v4, :cond_0

    .line 1798
    const/16 v7, 0x24

    invoke-direct {p0, v9, v7, p1, p2}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    .line 1836
    :goto_0
    return-void

    .line 1803
    :cond_0
    iget v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v7, v9, :cond_1

    iget v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 1804
    const/16 v7, 0x23

    invoke-direct {p0, v9, v7, p1, p2}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    goto :goto_0

    .line 1809
    :cond_1
    sget-object v7, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1812
    .local v6, uri:Landroid/net/Uri;
    iget v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 1814
    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1816
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6, v0, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1818
    iget-wide v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-direct {p0, v7, v8}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v5

    .line 1819
    .local v5, service:Lcom/android/email/service/IEmailService;
    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 1821
    :try_start_0
    iget-wide v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {v5, v7, v8}, Lcom/android/email/service/IEmailService;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1822
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1825
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "moveMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1828
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v7, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v7

    .line 1829
    :try_start_1
    iget-object v8, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/Controller$Result;

    .line 1830
    .local v3, listener:Lcom/android/email/Controller$Result;
    const/4 v8, 0x1

    new-instance v9, Lcom/android/email/mail/MessagingException;

    const-string v10, "Operation not supported"

    invoke-direct {v9, v10}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    iget-wide v10, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {v3, v8, v9, v10, v11}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_1

    .line 1834
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public deleteMessage(JJ)V
    .locals 33
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 969
    .local v5, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 971
    .local v22, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide v8, v0

    cmp-long v6, v8, p1

    if-nez v6, :cond_0

    .line 1052
    .end local v22           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_1
    :goto_0
    return-void

    .line 978
    :cond_2
    const-wide/16 v8, -0x1

    cmp-long v6, p3, v8

    if-nez v6, :cond_3

    .line 979
    invoke-virtual/range {p0 .. p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 981
    :cond_3
    const-wide/16 v8, -0x1

    cmp-long v6, p3, v8

    if-eqz v6, :cond_1

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v23

    .line 986
    .local v23, account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v29

    .line 989
    .local v29, server_type:I
    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v12

    .line 990
    .local v12, trashMailboxId:J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v25

    .line 993
    .local v25, draftMailboxId:J
    const-wide/16 v10, -0x1

    .line 994
    .local v10, sourceMailboxId:J
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .end local v10           #sourceMailboxId:J
    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 998
    .local v24, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    move-object/from16 v0, v24

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    move-wide v10, v8

    .line 1002
    .restart local v10       #sourceMailboxId:J
    :goto_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1005
    const/4 v6, 0x2

    move/from16 v0, v29

    move v1, v6

    if-ne v0, v1, :cond_6

    .line 1007
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1008
    .local v7, messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    cmp-long v6, v10, v25

    if-nez v6, :cond_5

    .line 1010
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    .line 1012
    .local v28, id:Ljava/lang/Long;
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v32

    .line 1013
    .local v32, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v32

    move-object v2, v6

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 998
    .end local v7           #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v10           #sourceMailboxId:J
    .end local v28           #id:Ljava/lang/Long;
    .end local v32           #uri:Landroid/net/Uri;
    :cond_4
    const-wide/16 v8, -0x1

    move-wide v10, v8

    goto :goto_1

    .line 1002
    :catchall_0
    move-exception v6

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1017
    .restart local v7       #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v10       #sourceMailboxId:J
    :cond_5
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p0

    move-wide/from16 v8, p3

    .line 1018
    invoke-virtual/range {v6 .. v13}, Lcom/android/email/Controller;->EASMoveMessage(Ljava/util/HashSet;JJJ)V

    goto/16 :goto_0

    .line 1023
    .end local v7           #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_6
    cmp-long v6, v10, v12

    if-nez v6, :cond_7

    .line 1024
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v32

    .line 1027
    .restart local v32       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p3

    move-wide/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1030
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v32

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x1

    move-object v0, v6

    move-wide/from16 v1, p1

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/Controller;->updateHistoryReadFlag(Landroid/content/Context;JZ)V

    .line 1036
    move-wide/from16 v30, p3

    .line 1037
    .local v30, syncAccountId:J
    new-instance v6, Lcom/android/email/Controller$12;

    move-object v0, v6

    move-object/from16 v1, p0

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/Controller$12;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v6}, Lcom/android/email/Controller$12;->start()V

    goto/16 :goto_0

    .line 1046
    .end local v30           #syncAccountId:J
    .end local v32           #uri:Landroid/net/Uri;
    :cond_7
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1047
    .restart local v7       #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p0

    move-object v15, v7

    move-wide/from16 v16, p3

    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    .line 1050
    invoke-virtual/range {v14 .. v21}, Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z

    goto/16 :goto_0
.end method

.method public deleteMessage(Ljava/util/HashSet;J)V
    .locals 38
    .parameter
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1128
    .local p1, messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1129
    .local v5, resolver:Landroid/content/ContentResolver;
    const-wide/16 v32, -0x1

    .line 1134
    .local v32, messageId_sample:J
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1135
    .local v15, messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_0
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    .line 1137
    .local v30, id:Ljava/lang/Long;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 1141
    const/16 v24, 0x0

    .line 1142
    .local v24, bdiscard:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 1144
    .local v22, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide v6, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1146
    const/16 v24, 0x1

    .line 1151
    .end local v22           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_2
    if-nez v24, :cond_0

    .line 1153
    move-object v0, v15

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1155
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    goto :goto_0

    .line 1159
    .end local v24           #bdiscard:Z
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v30           #id:Ljava/lang/Long;
    :cond_3
    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-nez v6, :cond_4

    .line 1160
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p2

    .line 1163
    :cond_4
    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-nez v6, :cond_6

    .line 1230
    .end local p1           #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_5
    :goto_1
    return-void

    .line 1168
    .restart local p1       #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v23

    .line 1169
    .local v23, account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v34

    .line 1172
    .local v34, server_type:I
    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v12

    .line 1173
    .local v12, trashMailboxId:J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v26

    .line 1176
    .local v26, draftMailboxId:J
    const-wide/16 v10, -0x1

    .line 1177
    .local v10, sourceMailboxId:J
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .end local v10           #sourceMailboxId:J
    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1181
    .local v25, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    sget v6, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    move-object/from16 v0, v25

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    move-wide v10, v6

    .line 1185
    .restart local v10       #sourceMailboxId:J
    :goto_2
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1188
    const/4 v6, 0x2

    move/from16 v0, v34

    move v1, v6

    if-ne v0, v1, :cond_9

    .line 1190
    cmp-long v6, v10, v26

    if-nez v6, :cond_8

    .line 1192
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    .line 1194
    .restart local v30       #id:Ljava/lang/Long;
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v37

    .line 1195
    .local v37, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v37

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 1181
    .end local v10           #sourceMailboxId:J
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v30           #id:Ljava/lang/Long;
    .end local v37           #uri:Landroid/net/Uri;
    :cond_7
    const-wide/16 v6, -0x1

    move-wide v10, v6

    goto :goto_2

    .line 1185
    :catchall_0
    move-exception v6

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v6

    .restart local v10       #sourceMailboxId:J
    :cond_8
    move-object/from16 v6, p0

    move-object v7, v15

    move-wide/from16 v8, p2

    .line 1199
    invoke-virtual/range {v6 .. v13}, Lcom/android/email/Controller;->EASMoveMessage(Ljava/util/HashSet;JJJ)V

    goto/16 :goto_1

    .line 1204
    :cond_9
    cmp-long v6, v10, v12

    if-nez v6, :cond_b

    .line 1205
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .end local p1           #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v28       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 1207
    .local v30, id:J
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v37

    .line 1210
    .restart local v37       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p2

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1213
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v37

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 1217
    .end local v30           #id:J
    .end local v37           #uri:Landroid/net/Uri;
    :cond_a
    move-wide/from16 v35, p2

    .line 1218
    .local v35, syncAccountId:J
    new-instance v6, Lcom/android/email/Controller$13;

    move-object v0, v6

    move-object/from16 v1, p0

    move-wide/from16 v2, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/Controller$13;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v6}, Lcom/android/email/Controller$13;->start()V

    goto/16 :goto_1

    .end local v28           #i$:Ljava/util/Iterator;
    .end local v35           #syncAccountId:J
    .restart local p1       #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_b
    move-object/from16 v14, p0

    move-wide/from16 v16, p2

    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    .line 1228
    invoke-virtual/range {v14 .. v21}, Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z

    goto/16 :goto_1
.end method

.method public emptyTrash(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 2210
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v1

    .line 2211
    .local v1, service:Lcom/android/email/service/IEmailService;
    if-eqz v1, :cond_0

    .line 2214
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/email/service/IEmailService;->emptyTrash(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2234
    :cond_0
    :goto_0
    return-void

    .line 2215
    :catch_0
    move-exception v0

    .line 2218
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "onMoreMessage"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public findOrCreateMailboxOfType(JI)J
    .locals 6
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    const-wide/16 v4, -0x1

    .line 373
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    move-wide v2, v4

    .line 378
    :goto_0
    return-wide v2

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 378
    .local v0, mailboxId:J
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/Controller;->createMailbox(JI)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_0
.end method

.method getMailboxServerName(I)Ljava/lang/String;
    .locals 2
    .parameter "mailboxType"

    .prologue
    .line 388
    const/4 v0, -0x1

    .line 389
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 415
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 391
    :pswitch_1
    const v0, 0x7f080038

    .line 392
    goto :goto_0

    .line 394
    :pswitch_2
    const v0, 0x7f080039

    .line 395
    goto :goto_0

    .line 397
    :pswitch_3
    const v0, 0x7f08003a

    .line 398
    goto :goto_0

    .line 400
    :pswitch_4
    const v0, 0x7f08003b

    .line 401
    goto :goto_0

    .line 403
    :pswitch_5
    const v0, 0x7f08003c

    .line 404
    goto :goto_0

    .line 406
    :pswitch_6
    const v0, 0x7f08003d

    .line 407
    goto :goto_0

    .line 411
    :pswitch_7
    const v0, 0x7f0801a5

    goto :goto_0

    .line 415
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getOutOfOffice(J)V
    .locals 10
    .parameter "accountId"

    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 614
    .local v7, resolver:Landroid/content/ContentResolver;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 623
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v8

    .line 624
    .local v8, service:Lcom/android/email/service/IEmailService;
    if-eqz v8, :cond_1

    .line 628
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v8, p1, p2, v1}, Lcom/android/email/service/IEmailService;->OoOffice(JLcom/android/exchange/OoODataList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v1

    goto :goto_0

    .line 633
    :cond_1
    iget-object v9, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v9

    .line 634
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 635
    .local v0, listener:Lcom/android/email/Controller$Result;
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const-string v2, "Operation not supported"

    invoke-direct {v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x64

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_1

    .line 637
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z
    .locals 5
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 2314
    if-nez p1, :cond_0

    move v2, v4

    .line 2323
    :goto_0
    return v2

    .line 2315
    :cond_0
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    .line 2318
    .local v0, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v0, :cond_1

    move v2, v4

    .line 2319
    goto :goto_0

    .line 2321
    :cond_1
    iget-object v1, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 2323
    .local v1, scheme:Ljava/lang/String;
    const-string v2, "pop3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "imap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V
    .locals 22
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "accountId"
    .parameter "callback"
    .parameter "prune"

    .prologue
    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p7

    move-wide/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v20

    .line 2164
    .local v20, saveToFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v17

    .line 2166
    .local v17, attachInfo:Lcom/android/email/provider/EmailContent$Attachment;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_2

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v12, v0

    monitor-enter v12

    .line 2169
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/Controller$Result;

    .line 2170
    .local v5, listener:Lcom/android/email/Controller$Result;
    const/4 v6, 0x0

    const/4 v11, 0x0

    move-wide/from16 v7, p3

    move-wide/from16 v9, p1

    invoke-interface/range {v5 .. v11}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_0

    .line 2175
    .end local v5           #listener:Lcom/android/email/Controller$Result;
    .end local v19           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2172
    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/Controller$Result;

    .line 2173
    .restart local v5       #listener:Lcom/android/email/Controller$Result;
    const/4 v6, 0x0

    const/16 v11, 0x64

    move-wide/from16 v7, p3

    move-wide/from16 v9, p1

    invoke-interface/range {v5 .. v11}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_1

    .line 2175
    .end local v5           #listener:Lcom/android/email/Controller$Result;
    :cond_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2203
    .end local v19           #i$:Ljava/util/Iterator;
    :goto_2
    return-void

    .line 2180
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v21

    .line 2181
    .local v21, service:Lcom/android/email/service/IEmailService;
    if-eqz v21, :cond_3

    .line 2184
    :try_start_2
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide v6, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v0, p7

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v21

    move-wide v1, v6

    move-object v3, v8

    move-object v4, v9

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/email/service/IEmailService;->loadAttachment(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2186
    :catch_0
    move-exception v6

    move-object/from16 v18, v6

    .line 2189
    .local v18, e:Landroid/os/RemoteException;
    const-string v6, "onDownloadAttachment"

    const-string v7, "RemoteException"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2193
    .end local v18           #e:Landroid/os/RemoteException;
    :cond_3
    new-instance v6, Lcom/android/email/Controller$22;

    move-object/from16 v7, p0

    move-wide/from16 v8, p7

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p1

    move/from16 v16, p10

    invoke-direct/range {v6 .. v16}, Lcom/android/email/Controller$22;-><init>(Lcom/android/email/Controller;JJJJZ)V

    invoke-virtual {v6}, Lcom/android/email/Controller$22;->start()V

    goto :goto_2
.end method

.method public loadMessageForView(JLcom/android/email/Controller$Result;)V
    .locals 8
    .parameter "messageId"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v3

    .line 326
    .local v3, service:Lcom/android/email/service/IEmailService;
    if-eqz v3, :cond_1

    .line 329
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 330
    .local v4, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "flagLoaded"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    const-string v5, "Email"

    const-string v6, "Unexpected loadMessageForView() for service-based message."

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v5, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v5

    .line 335
    :try_start_0
    iget-object v6, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 336
    .local v2, listener:Lcom/android/email/Controller$Result;
    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-interface {v2, v6, p1, p2, v7}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_0

    .line 338
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 341
    :cond_1
    new-instance v5, Lcom/android/email/Controller$4;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/email/Controller$4;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v5}, Lcom/android/email/Controller$4;->start()V

    goto :goto_1
.end method

.method public loadMore(J)V
    .locals 4
    .parameter "messageId"

    .prologue
    .line 2247
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v1

    .line 2248
    .local v1, service:Lcom/android/email/service/IEmailService;
    if-eqz v1, :cond_0

    .line 2251
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/email/service/IEmailService;->loadMore(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2271
    :cond_0
    :goto_0
    return-void

    .line 2252
    :catch_0
    move-exception v0

    .line 2255
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "onMoreMessage"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public loadMoreMessages(JLcom/android/email/Controller$Result;)V
    .locals 1
    .parameter "mailboxId"
    .parameter "callback"

    .prologue
    .line 892
    new-instance v0, Lcom/android/email/Controller$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$11;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v0}, Lcom/android/email/Controller$11;->start()V

    .line 920
    return-void
.end method

.method public lookupAccountForMessage(J)J
    .locals 8
    .parameter "messageId"

    .prologue
    .line 927
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 928
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 932
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 936
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v1

    .line 932
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 936
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public moveFolder(JJ)V
    .locals 19
    .parameter "mailboxId"
    .parameter "dstMailboxId"

    .prologue
    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v16

    .line 1960
    .local v16, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v13

    .line 1962
    .local v13, dstMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v16, :cond_0

    if-nez v13, :cond_1

    .line 1963
    :cond_0
    const/4 v5, 0x2

    const/16 v6, 0x24

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-wide/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    .line 2020
    :goto_0
    return-void

    .line 1968
    :cond_1
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1970
    const/4 v5, 0x2

    const/16 v6, 0x23

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-wide/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    goto :goto_0

    .line 1975
    :cond_2
    new-instance v8, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parentServerId=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v13, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "displayName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "accountKey"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1980
    .local v8, WHERE_SUBFOLDERS:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1985
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1986
    const/4 v5, 0x2

    const/16 v6, 0x25

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-wide/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1995
    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1998
    .local v18, uri:Landroid/net/Uri;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    move v5, v0

    or-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 1999
    iget-object v5, v13, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    .line 2001
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v12

    .line 2003
    .local v12, cv:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move-object v2, v12

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2005
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v5, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v17

    .line 2006
    .local v17, service:Lcom/android/email/service/IEmailService;
    if-eqz v17, :cond_4

    if-eqz v16, :cond_4

    .line 2008
    :try_start_1
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v5, v0

    move-object/from16 v0, v17

    move-wide v1, v5

    invoke-interface {v0, v1, v2}, Lcom/android/email/service/IEmailService;->updateFolderList(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2009
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 1992
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v17           #service:Lcom/android/email/service/IEmailService;
    .end local v18           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    .line 2012
    .restart local v12       #cv:Landroid/content/ContentValues;
    .restart local v17       #service:Lcom/android/email/service/IEmailService;
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v5, v0

    monitor-enter v5

    .line 2013
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v8           #WHERE_SUBFOLDERS:Ljava/lang/String;
    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/email/Controller$Result;

    .line 2014
    .local v15, listener:Lcom/android/email/Controller$Result;
    const/4 v6, 0x2

    new-instance v7, Lcom/android/email/mail/MessagingException;

    const-string v8, "Operation not supported"

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v8, v0

    invoke-interface {v15, v6, v7, v8, v9}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_1

    .line 2018
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #listener:Lcom/android/email/Controller$Result;
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method public moveMessage(JJ)V
    .locals 11
    .parameter "messageId"
    .parameter "toMailboxId"

    .prologue
    const/4 v9, 0x0

    .line 1095
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1096
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1099
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v4

    .line 1101
    .local v4, message:Lcom/android/email/provider/EmailContent$Message;
    const-string v7, "dstMailboxKey"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1102
    const-string v7, "flagMoved"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1103
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1105
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v5

    .line 1106
    .local v5, service:Lcom/android/email/service/IEmailService;
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 1108
    :try_start_0
    iget-wide v7, v4, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-interface {v5, v7, v8}, Lcom/android/email/service/IEmailService;->startSync(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_0
    return-void

    .line 1109
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1112
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "moveMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1115
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v7, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v7

    .line 1116
    :try_start_1
    iget-object v8, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/Controller$Result;

    .line 1117
    .local v3, listener:Lcom/android/email/Controller$Result;
    new-instance v8, Lcom/android/email/mail/MessagingException;

    const-string v9, "Operation not supported"

    invoke-direct {v8, v9}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    iget-wide v9, v4, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-interface {v3, v8, v9, v10}, Lcom/android/email/Controller$Result;->moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V

    goto :goto_1

    .line 1120
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public moveMessage(Ljava/util/HashSet;JJJ)Z
    .locals 37
    .parameter
    .parameter "accountId"
    .parameter "mailboxKey"
    .parameter "curBoxKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JJJ)Z"
        }
    .end annotation

    .prologue
    .line 1235
    .local p1, messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v23

    .line 1240
    .local v23, account:Lcom/android/email/provider/EmailContent$Account;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1241
    .local v15, messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_0
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 1243
    .local v29, id:Ljava/lang/Long;
    const/16 v24, 0x0

    .line 1244
    .local v24, bdiscard:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 1246
    .local v22, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 1248
    const/16 v24, 0x1

    .line 1253
    .end local v22           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_2
    if-nez v24, :cond_0

    .line 1255
    move-object v0, v15

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1259
    .end local v24           #bdiscard:Z
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v29           #id:Ljava/lang/Long;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v35

    .line 1261
    .local v35, server_type:I
    if-nez v35, :cond_9

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    .line 1264
    .local v33, resolver:Landroid/content/ContentResolver;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1265
    .local v25, cv:Landroid/content/ContentValues;
    const-string v5, "mailboxKey"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1267
    new-instance v34, Ljava/util/HashSet;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashSet;-><init>()V

    .line 1268
    .local v34, serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 1269
    .restart local v29       #id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v30

    .line 1270
    .local v30, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v30, :cond_4

    .line 1272
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_5

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_6

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_6

    .line 1276
    :cond_5
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v36

    .line 1277
    .local v36, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v25

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1280
    .end local v36           #uri:Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1282
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v36

    .line 1283
    .restart local v36       #uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v25

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1285
    .end local v29           #id:Ljava/lang/Long;
    .end local v30           #message:Lcom/android/email/provider/EmailContent$Message;
    .end local v36           #uri:Landroid/net/Uri;
    :cond_7
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1287
    const/4 v5, 0x1

    .line 1381
    .end local v25           #cv:Landroid/content/ContentValues;
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v33           #resolver:Landroid/content/ContentResolver;
    .end local v34           #serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_2
    return v5

    .line 1290
    .restart local v25       #cv:Landroid/content/ContentValues;
    .restart local v27       #i$:Ljava/util/Iterator;
    .restart local v33       #resolver:Landroid/content/ContentResolver;
    .restart local v34       #serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    new-instance v26, Ljava/util/HashSet;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1291
    .local v26, final_messagId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-wide/from16 v8, p2

    .line 1292
    .local v8, syncAccountId:J
    move-wide/from16 v10, p4

    .line 1294
    .local v10, target_boxkey:J
    new-instance v5, Lcom/android/email/Controller$14;

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide v2, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/Controller$14;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v5}, Lcom/android/email/Controller$14;->start()V

    .line 1381
    .end local v8           #syncAccountId:J
    .end local v10           #target_boxkey:J
    .end local v25           #cv:Landroid/content/ContentValues;
    .end local v26           #final_messagId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v33           #resolver:Landroid/content/ContentResolver;
    .end local v34           #serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_3
    const/4 v5, 0x1

    goto :goto_2

    .line 1301
    :cond_9
    const/4 v5, 0x1

    move/from16 v0, v35

    move v1, v5

    if-ne v0, v1, :cond_13

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    .line 1304
    .restart local v33       #resolver:Landroid/content/ContentResolver;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1305
    .restart local v25       #cv:Landroid/content/ContentValues;
    const-string v5, "mailboxKey"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1307
    new-instance v26, Ljava/util/HashSet;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1308
    .restart local v26       #final_messagId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-wide/from16 v8, p2

    .line 1309
    .restart local v8       #syncAccountId:J
    move-wide/from16 v10, p4

    .line 1310
    .restart local v10       #target_boxkey:J
    move-wide/from16 v12, p6

    .line 1312
    .local v12, final_orig_boxkey:J
    new-instance v34, Ljava/util/HashSet;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashSet;-><init>()V

    .line 1314
    .restart local v34       #serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v31, 0x0

    .line 1315
    .local v31, outMessageBuff:Ljava/lang/StringBuffer;
    const/16 v32, 0x0

    .line 1316
    .local v32, outMessageBuff_update:Ljava/lang/StringBuffer;
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 1318
    .restart local v29       #id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v30

    .line 1319
    .restart local v30       #message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v30, :cond_a

    .line 1321
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_d

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_d

    .line 1327
    :cond_b
    if-nez v32, :cond_c

    .line 1329
    new-instance v32, Ljava/lang/StringBuffer;

    .end local v32           #outMessageBuff_update:Ljava/lang/StringBuffer;
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    .line 1330
    .restart local v32       #outMessageBuff_update:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1334
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR _id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1338
    :cond_d
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v0, v5

    move-wide/from16 v1, p2

    move-wide v3, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1342
    if-nez v31, :cond_e

    .line 1344
    new-instance v31, Ljava/lang/StringBuffer;

    .end local v31           #outMessageBuff:Ljava/lang/StringBuffer;
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    .line 1345
    .restart local v31       #outMessageBuff:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 1349
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR _id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 1355
    .end local v29           #id:Ljava/lang/Long;
    .end local v30           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_f
    if-eqz v32, :cond_10

    .line 1356
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v33

    move-object v1, v5

    move-object/from16 v2, v25

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1358
    :cond_10
    if-eqz v31, :cond_11

    .line 1359
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1361
    :cond_11
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1363
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1366
    :cond_12
    new-instance v7, Ljava/util/HashSet;

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1368
    .local v7, final_serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Lcom/android/email/Controller$15;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/android/email/Controller$15;-><init>(Lcom/android/email/Controller;Ljava/util/HashSet;JJJ)V

    invoke-virtual {v5}, Lcom/android/email/Controller$15;->start()V

    goto/16 :goto_3

    .end local v7           #final_serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8           #syncAccountId:J
    .end local v10           #target_boxkey:J
    .end local v12           #final_orig_boxkey:J
    .end local v25           #cv:Landroid/content/ContentValues;
    .end local v26           #final_messagId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v31           #outMessageBuff:Ljava/lang/StringBuffer;
    .end local v32           #outMessageBuff_update:Ljava/lang/StringBuffer;
    .end local v33           #resolver:Landroid/content/ContentResolver;
    .end local v34           #serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v14, p0

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    move-wide/from16 v20, p6

    .line 1377
    invoke-virtual/range {v14 .. v21}, Lcom/android/email/Controller;->EASMoveMessage(Ljava/util/HashSet;JJJ)V

    goto/16 :goto_3
.end method

.method public moveMessageToOtherAccountFolder(Ljava/util/HashSet;JJJJ)Z
    .locals 45
    .parameter
    .parameter "source_accountId"
    .parameter "source_boxkey"
    .parameter "target_accountId"
    .parameter "target_boxkey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JJJJ)Z"
        }
    .end annotation

    .prologue
    .line 1387
    .local p1, messageId_requested:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/16 v25, 0x1

    .line 1388
    .local v25, bret:Z
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1390
    .local v6, messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-wide/from16 v27, p2

    .line 1391
    .local v27, final_source_accountId:J
    move-wide/from16 v31, p6

    .line 1392
    .local v31, final_target_accountId:J
    move-wide/from16 v29, p4

    .line 1393
    .local v29, final_source_boxkey:J
    move-wide/from16 v33, p8

    .line 1394
    .local v33, final_target_boxkey:J
    const/4 v5, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v42

    .line 1396
    .local v42, sync_source_trashMailboxId:J
    cmp-long v5, p2, p6

    if-nez v5, :cond_0

    .line 1398
    const-string v5, "moveMessageToOtherAccountFolder()"

    const-string v7, "source_accountId == target_syncAccountId. Just do forder move action."

    invoke-static {v5, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p0

    move-wide/from16 v7, p2

    move-wide/from16 v9, p8

    move-wide/from16 v11, p4

    .line 1399
    invoke-virtual/range {v5 .. v12}, Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z

    move-result v25

    move/from16 v5, v25

    .line 1558
    .end local v6           #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_0
    return v5

    .line 1404
    .restart local v6       #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Long;

    .line 1406
    .local v37, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v39

    .line 1407
    .local v39, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v39, :cond_1

    .line 1409
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1413
    :cond_2
    move-object v0, v6

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1415
    .end local v37           #id:Ljava/lang/Long;
    .end local v39           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1417
    const/4 v5, 0x0

    goto :goto_0

    .line 1421
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v44

    .line 1422
    .local v44, target_account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v21

    .line 1423
    .local v21, target_server_type:I
    if-ltz v21, :cond_5

    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-le v0, v1, :cond_6

    .line 1425
    :cond_5
    const-string v5, "moveMessageToOtherAccountFolder()"

    const-string v6, "target account server is invalid.."

    .end local v6           #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const/4 v5, 0x0

    goto :goto_0

    .line 1430
    .restart local v6       #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v41

    .line 1431
    .local v41, source_account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v22

    .line 1433
    .local v22, source_server_type:I
    if-ltz v21, :cond_7

    const/4 v5, 0x2

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_8

    .line 1435
    :cond_7
    const-string v5, "moveMessageToOtherAccountFolder()"

    const-string v6, "source account server is invalid.."

    .end local v6           #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1441
    .restart local v6       #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_8
    new-instance v40, Ljava/util/HashSet;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashSet;-><init>()V

    .line 1442
    .local v40, messageId_needTomove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v5, 0x2

    move/from16 v0, v22

    move v1, v5

    if-ne v0, v1, :cond_10

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v5, v0

    monitor-enter v5

    .line 1447
    :try_start_0
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .end local v6           #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v35           #i$:Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    .line 1449
    .local v26, cur_messageId:Ljava/lang/Long;
    new-instance v38, Ljava/util/HashSet;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashSet;-><init>()V

    .line 1450
    .local v38, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v7, Lcom/android/email/Controller$AccountMoveMessageInfo;

    const/4 v9, -0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v20, 0x0

    move-object/from16 v8, p0

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    invoke-direct/range {v7 .. v20}, Lcom/android/email/Controller$AccountMoveMessageInfo;-><init>(Lcom/android/email/Controller;IJJJJJI)V

    .line 1453
    .local v7, accountMoveItem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    if-eqz v7, :cond_9

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v0, v6

    move-wide/from16 v1, p2

    move-wide v3, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;

    move-result-object v38

    .line 1459
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1461
    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    .line 1470
    :goto_3
    const/16 v24, 0x0

    .line 1471
    .local v24, balreadyExist:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 1475
    .local v23, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide v8, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_a

    .line 1477
    const/16 v24, 0x1

    .line 1483
    .end local v23           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v36           #i$:Ljava/util/Iterator;
    :cond_b
    if-nez v24, :cond_9

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1488
    .end local v7           #accountMoveItem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v24           #balreadyExist:Z
    .end local v26           #cur_messageId:Ljava/lang/Long;
    .end local v38           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1465
    .restart local v7       #accountMoveItem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v26       #cur_messageId:Ljava/lang/Long;
    .restart local v38       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_c
    :try_start_1
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1467
    const-wide/16 v8, 0x1

    iput-wide v8, v7, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    goto :goto_3

    .line 1488
    .end local v7           #accountMoveItem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v26           #cur_messageId:Ljava/lang/Long;
    .end local v38           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_d
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1522
    :goto_4
    move-object/from16 v10, v40

    .line 1525
    .local v10, final_messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v10}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1527
    new-instance v8, Lcom/android/email/Controller$16;

    move-object/from16 v9, p0

    move-wide/from16 v11, v27

    move-wide/from16 v13, v29

    move-wide/from16 v15, v31

    move-wide/from16 v17, v33

    move-wide/from16 v19, v42

    invoke-direct/range {v8 .. v22}, Lcom/android/email/Controller$16;-><init>(Lcom/android/email/Controller;Ljava/util/HashSet;JJJJJII)V

    invoke-virtual {v8}, Lcom/android/email/Controller$16;->start()V

    .line 1540
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    move-object v5, v0

    if-nez v5, :cond_f

    .line 1544
    new-instance v5, Lcom/android/email/Controller$PendingDownloadController;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Controller$PendingDownloadController;-><init>(Lcom/android/email/Controller;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    .line 1545
    new-instance v5, Lcom/android/email/Controller$17;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Controller$17;-><init>(Lcom/android/email/Controller;)V

    invoke-virtual {v5}, Lcom/android/email/Controller$17;->start()V

    .line 1558
    :cond_f
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1492
    .end local v10           #final_messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v6       #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v35       #i$:Ljava/util/Iterator;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v5, v0

    monitor-enter v5

    .line 1494
    :try_start_2
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .end local v6           #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v35           #i$:Ljava/util/Iterator;
    :cond_11
    :goto_5
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    .line 1496
    .restart local v26       #cur_messageId:Ljava/lang/Long;
    new-instance v7, Lcom/android/email/Controller$AccountMoveMessageInfo;

    const/4 v9, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v20, 0x0

    move-object/from16 v8, p0

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    invoke-direct/range {v7 .. v20}, Lcom/android/email/Controller$AccountMoveMessageInfo;-><init>(Lcom/android/email/Controller;IJJJJJI)V

    .line 1499
    .restart local v7       #accountMoveItem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    const/16 v24, 0x0

    .line 1500
    .restart local v24       #balreadyExist:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .restart local v36       #i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 1504
    .restart local v23       #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide v8, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_12

    .line 1506
    const/16 v24, 0x1

    .line 1512
    .end local v23           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v36           #i$:Ljava/util/Iterator;
    :cond_13
    if-nez v24, :cond_11

    .line 1514
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1519
    .end local v7           #accountMoveItem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v24           #balreadyExist:Z
    .end local v26           #cur_messageId:Ljava/lang/Long;
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_14
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4
.end method

.method public moveMessageWithoutSync(JJ)V
    .locals 5
    .parameter "messageId"
    .parameter "toMailboxId"

    .prologue
    const/4 v4, 0x0

    .line 1084
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1085
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1088
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "dstMailboxKey"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1089
    const-string v2, "flagMoved"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1091
    return-void
.end method

.method public moveMessages(Ljava/util/Set;J)V
    .locals 18
    .parameter
    .parameter "toMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1056
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-wide/16 v11, -0x1

    .line 1057
    .local v11, messageId:J
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p1           #selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1058
    .local v7, id:J
    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->moveMessageWithoutSync(JJ)V

    .line 1059
    move-wide v11, v7

    goto :goto_0

    .line 1062
    .end local v7           #id:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14, v11, v12}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    .line 1064
    .local v10, message:Lcom/android/email/provider/EmailContent$Message;
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-direct {v0, v1, v2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v13

    .line 1065
    .local v13, service:Lcom/android/email/service/IEmailService;
    if-eqz v13, :cond_1

    if-eqz v10, :cond_1

    .line 1067
    :try_start_0
    iget-wide v14, v10, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-interface {v13, v14, v15}, Lcom/android/email/service/IEmailService;->startSync(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :goto_1
    return-void

    .line 1068
    :catch_0
    move-exception v14

    move-object v5, v14

    .line 1071
    .local v5, e:Landroid/os/RemoteException;
    const-string v14, "moveMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RemoteException"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1074
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v14, v0

    monitor-enter v14

    .line 1075
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/Controller$Result;

    .line 1076
    .local v9, listener:Lcom/android/email/Controller$Result;
    new-instance v15, Lcom/android/email/mail/MessagingException;

    const-string v16, "Operation not supported"

    invoke-direct/range {v15 .. v16}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v16, v0

    move-object v0, v9

    move-object v1, v15

    move-wide/from16 v2, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/Controller$Result;->moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V

    goto :goto_2

    .line 1079
    .end local v9           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v15

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    :cond_2
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public removeResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public renameFolder(Ljava/lang/String;J)V
    .locals 19
    .parameter "folderName"
    .parameter "mailboxId"

    .prologue
    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v16

    .line 1895
    .local v16, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v16, :cond_0

    .line 1896
    const/4 v5, 0x2

    const/16 v6, 0x24

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-wide/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    .line 1956
    :goto_0
    return-void

    .line 1901
    :cond_0
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 1903
    const/4 v5, 0x2

    const/16 v6, 0x23

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-wide/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    goto :goto_0

    .line 1908
    :cond_1
    new-instance v8, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parentServerId=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "displayName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "accountKey"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1913
    .local v8, WHERE_SUBFOLDERS:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1918
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 1919
    const/4 v5, 0x2

    const/16 v6, 0x25

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-wide/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1928
    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1931
    .local v18, uri:Landroid/net/Uri;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    move v5, v0

    or-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 1932
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    .line 1934
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v12

    .line 1936
    .local v12, cv:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move-object v2, v12

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1938
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v5, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v17

    .line 1939
    .local v17, service:Lcom/android/email/service/IEmailService;
    if-eqz v17, :cond_3

    if-eqz v16, :cond_3

    .line 1941
    :try_start_1
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v5, v0

    move-object/from16 v0, v17

    move-wide v1, v5

    invoke-interface {v0, v1, v2}, Lcom/android/email/service/IEmailService;->updateFolderList(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1942
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 1945
    .local v13, e:Landroid/os/RemoteException;
    const-string v5, "moveMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1925
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v13           #e:Landroid/os/RemoteException;
    .end local v17           #service:Lcom/android/email/service/IEmailService;
    .end local v18           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1948
    .restart local v12       #cv:Landroid/content/ContentValues;
    .restart local v17       #service:Lcom/android/email/service/IEmailService;
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v5, v0

    monitor-enter v5

    .line 1949
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v8           #WHERE_SUBFOLDERS:Ljava/lang/String;
    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/email/Controller$Result;

    .line 1950
    .local v15, listener:Lcom/android/email/Controller$Result;
    const/4 v6, 0x2

    new-instance v7, Lcom/android/email/mail/MessagingException;

    const-string v8, "Operation not supported"

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v8, v0

    invoke-interface {v15, v6, v7, v8, v9}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_1

    .line 1954
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #listener:Lcom/android/email/Controller$Result;
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method public resetVisibleLimits()V
    .locals 1

    .prologue
    .line 810
    new-instance v0, Lcom/android/email/Controller$9;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$9;-><init>(Lcom/android/email/Controller;)V

    invoke-virtual {v0}, Lcom/android/email/Controller$9;->start()V

    .line 845
    return-void
.end method

.method public restoreMessage(JJ)V
    .locals 10
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 448
    iget-object v8, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 449
    .local v4, resolver:Landroid/content/ContentResolver;
    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_0

    .line 450
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 452
    :cond_0
    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_2

    .line 503
    :cond_1
    :goto_0
    return-void

    .line 460
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p0, p3, p4, v8}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    .line 461
    .local v2, inboxMailboxId:J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 462
    .local v1, cv:Landroid/content/ContentValues;
    const-string v8, "mailboxKey"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 465
    sget-object v8, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 466
    .local v7, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    iget-object v8, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v8, p3, p4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 470
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 471
    move-wide v5, p3

    .line 472
    .local v5, syncAccountId:J
    new-instance v8, Lcom/android/email/Controller$5;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/email/Controller$5;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v8}, Lcom/android/email/Controller$5;->start()V

    goto :goto_0
.end method

.method public returnAccountType(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 2353
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 2355
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v1

    return v1
.end method

.method public returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I
    .locals 5
    .parameter "account"

    .prologue
    const/4 v4, -0x1

    .line 2329
    if-nez p1, :cond_0

    move v2, v4

    .line 2346
    :goto_0
    return v2

    .line 2331
    :cond_0
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    .line 2333
    .local v0, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v0, :cond_1

    move v2, v4

    .line 2334
    goto :goto_0

    .line 2337
    :cond_1
    iget-object v1, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 2339
    .local v1, scheme:Ljava/lang/String;
    const-string v2, "pop3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2340
    const/4 v2, 0x0

    goto :goto_0

    .line 2341
    :cond_2
    const-string v2, "imap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2342
    const/4 v2, 0x1

    goto :goto_0

    .line 2343
    :cond_3
    const-string v2, "eas"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2344
    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    move v2, v4

    .line 2346
    goto :goto_0
.end method

.method public saveToMailbox(Lcom/android/email/provider/EmailContent$Message;I)V
    .locals 5
    .parameter "message"
    .parameter "mailboxType"

    .prologue
    .line 359
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 360
    .local v0, accountId:J
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    .line 361
    .local v2, mailboxId:J
    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 362
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/email/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 363
    return-void
.end method

.method public searchOnServer(JLcom/android/email/Controller$Result;Ljava/lang/String;)V
    .locals 1
    .parameter "mailboxId"
    .parameter "callback"
    .parameter "searchText"

    .prologue
    .line 853
    new-instance v0, Lcom/android/email/Controller$10;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/email/Controller$10;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/email/Controller$10;->start()V

    .line 880
    return-void
.end method

.method public sendMeetingResponse(JILcom/android/email/Controller$Result;)V
    .locals 4
    .parameter "messageId"
    .parameter "response"
    .parameter "callback"

    .prologue
    .line 2134
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v1

    .line 2135
    .local v1, service:Lcom/android/email/service/IEmailService;
    if-eqz v1, :cond_0

    .line 2138
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/email/service/IEmailService;->sendMeetingResponse(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2145
    :cond_0
    :goto_0
    return-void

    .line 2139
    :catch_0
    move-exception v0

    .line 2142
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "onDownloadAttachment"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendMessage(JJ)Z
    .locals 11
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 514
    .local v8, resolver:Landroid/content/ContentResolver;
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 517
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 522
    const/4 v0, 0x0

    .line 562
    :goto_0
    return v0

    .line 526
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v5

    .line 527
    .local v5, outboxId:J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "mailboxKey"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 531
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 532
    .local v10, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v10, v7, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 535
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v9

    .line 536
    .local v9, service:Lcom/android/email/service/IEmailService;
    if-eqz v9, :cond_2

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-interface {v9, v0}, Lcom/android/email/service/IEmailService;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 548
    .local v2, account:Lcom/android/email/provider/EmailContent$Account;
    const/4 v0, 0x5

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v3

    .line 550
    .local v3, sentboxId:J
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 551
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 554
    :cond_4
    new-instance v0, Lcom/android/email/Controller$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$6;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Account;JJ)V

    invoke-virtual {v0}, Lcom/android/email/Controller$6;->start()V

    goto :goto_1

    .line 541
    .end local v2           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #sentboxId:J
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public sendMessageFromOutbox(JJ)Z
    .locals 11
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 567
    .local v7, resolver:Landroid/content/ContentResolver;
    cmp-long v0, p3, v9

    if-nez v0, :cond_0

    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 570
    :cond_0
    cmp-long v0, p3, v9

    if-nez v0, :cond_1

    move v0, v1

    .line 609
    :goto_0
    return v0

    .line 579
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v5

    .line 582
    .local v5, outboxId:J
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v8

    .line 583
    .local v8, service:Lcom/android/email/service/IEmailService;
    if-eqz v8, :cond_2

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-interface {v8, v0}, Lcom/android/email/service/IEmailService;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 595
    .local v2, account:Lcom/android/email/provider/EmailContent$Account;
    const/4 v0, 0x5

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v3

    .line 597
    .local v3, sentboxId:J
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 598
    goto :goto_0

    .line 601
    :cond_4
    new-instance v0, Lcom/android/email/Controller$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$7;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Account;JJ)V

    invoke-virtual {v0}, Lcom/android/email/Controller$7;->start()V

    goto :goto_1

    .line 588
    .end local v2           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #sentboxId:J
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public sendPendingMessages(JLcom/android/email/Controller$Result;)V
    .locals 11
    .parameter "accountId"
    .parameter "callback"

    .prologue
    const-wide/16 v9, -0x1

    .line 766
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, p1, p2, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    .line 768
    .local v5, outboxId:J
    cmp-long v0, v5, v9

    if-nez v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, p1, p2, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 774
    .local v3, sentboxId:J
    cmp-long v0, v3, v9

    if-eqz v0, :cond_0

    .line 780
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v8

    .line 781
    .local v8, service:Lcom/android/email/service/IEmailService;
    if-eqz v8, :cond_2

    .line 784
    :try_start_0
    invoke-interface {v8, v5, v6}, Lcom/android/email/service/IEmailService;->startSync(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 785
    :catch_0
    move-exception v7

    .line 788
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "updateMailbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 792
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 794
    .local v2, account:Lcom/android/email/provider/EmailContent$Account;
    new-instance v0, Lcom/android/email/Controller$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$8;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Account;JJ)V

    invoke-virtual {v0}, Lcom/android/email/Controller$8;->start()V

    goto :goto_0
.end method

.method public sendRecoveryPassword(Ljava/lang/String;)V
    .locals 11
    .parameter "password"

    .prologue
    const-string v10, "Email"

    .line 706
    const-string v8, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendRecoveryPassword -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v8, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.android.exchange"

    invoke-virtual {v8, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 710
    .local v4, exchangeAccounts:[Landroid/accounts/Account;
    move-object v2, v4

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 712
    .local v0, account:Landroid/accounts/Account;
    const-string v8, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "account.name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/email/Controller;->emailToAccountId(Ljava/lang/String;)I

    move-result v1

    .line 715
    .local v1, accountId:I
    const-string v8, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accountId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-lez v1, :cond_0

    .line 718
    int-to-long v8, v1

    invoke-direct {p0, v8, v9}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v7

    .line 720
    .local v7, service:Lcom/android/email/service/IEmailService;
    int-to-long v8, v1

    :try_start_0
    invoke-interface {v7, v8, v9, p1}, Lcom/android/email/service/IEmailService;->sendRecoveryPassword(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v7           #service:Lcom/android/email/service/IEmailService;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 721
    .restart local v7       #service:Lcom/android/email/service/IEmailService;
    :catch_0
    move-exception v3

    .line 722
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 727
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountId:I
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v7           #service:Lcom/android/email/service/IEmailService;
    :cond_1
    return-void
.end method

.method public serviceCheckMail(JJJLcom/android/email/Controller$Result;)V
    .locals 10
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"
    .parameter "callback"

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v9

    .line 234
    .local v9, service:Lcom/android/email/service/IEmailService;
    if-eqz v9, :cond_0

    .line 242
    const-string v0, "Controller"

    const-string v1, "SyncManager does auto refresh for exchange accounts. Mark MailService sync complete. Nothing done here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const/4 v0, -0x1

    invoke-direct {v1, v0}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    const/16 v6, 0x64

    move-object/from16 v0, p7

    move-wide v2, p1

    move-wide v4, p3

    move-wide v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/email/mail/MessagingException;JJIJ)V

    .line 258
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v0, Lcom/android/email/Controller$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller$2;-><init>(Lcom/android/email/Controller;JJ)V

    invoke-virtual {v0}, Lcom/android/email/Controller$2;->start()V

    goto :goto_0
.end method

.method public serviceLogging(I)V
    .locals 5
    .parameter "debugEnabled"

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeEmailService(Landroid/content/Context;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailService;

    move-result-object v1

    .line 184
    .local v1, service:Lcom/android/email/service/IEmailService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/email/service/IEmailService;->setLogging(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "updateMailboxList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEmailPriority(JI)V
    .locals 7
    .parameter "messageId"
    .parameter "newVal"

    .prologue
    const/4 v6, 0x0

    .line 1759
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1760
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "importance"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1761
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1764
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1767
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    .line 1768
    .local v2, message:Lcom/android/email/provider/EmailContent$Message;
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v5, v2, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1769
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1770
    new-instance v4, Lcom/android/email/Controller$18;

    invoke-direct {v4, p0, v2}, Lcom/android/email/Controller$18;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v4}, Lcom/android/email/Controller$18;->start()V

    .line 1777
    :cond_0
    return-void
.end method

.method public setMessageFavorite(JZ)V
    .locals 7
    .parameter "messageId"
    .parameter "isFavorite"

    .prologue
    const/4 v6, 0x0

    .line 2079
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2080
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "flagFavorite"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2081
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2083
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2086
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    .line 2087
    .local v2, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v2, :cond_0

    .line 2089
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v5, v2, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 2090
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2091
    new-instance v4, Lcom/android/email/Controller$20;

    invoke-direct {v4, p0, v2}, Lcom/android/email/Controller$20;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v4}, Lcom/android/email/Controller$20;->start()V

    .line 2099
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_0
    return-void
.end method

.method public setMessageFavorite(JZI)V
    .locals 7
    .parameter "messageId"
    .parameter "isFavorite"
    .parameter "newFavorite"

    .prologue
    const/4 v6, 0x0

    .line 2101
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2102
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "flagFavorite"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2103
    const-string v4, "flagStatus"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2104
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2106
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2109
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    .line 2110
    .local v2, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v2, :cond_0

    .line 2112
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v5, v2, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 2113
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2114
    new-instance v4, Lcom/android/email/Controller$21;

    invoke-direct {v4, p0, v2}, Lcom/android/email/Controller$21;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v4}, Lcom/android/email/Controller$21;->start()V

    .line 2122
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_0
    return-void
.end method

.method public setMessageRead(JZ)V
    .locals 7
    .parameter "messageId"
    .parameter "isRead"

    .prologue
    const/4 v6, 0x0

    .line 2031
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2032
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "flagRead"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2033
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2035
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2038
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2, p3}, Lcom/android/email/Controller;->updateHistoryReadFlag(Landroid/content/Context;JZ)V

    .line 2042
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    .line 2043
    .local v2, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v2, :cond_0

    .line 2045
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v5, v2, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 2046
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2047
    new-instance v4, Lcom/android/email/Controller$19;

    invoke-direct {v4, p0, v2}, Lcom/android/email/Controller$19;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v4}, Lcom/android/email/Controller$19;->start()V

    .line 2055
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_0
    return-void
.end method

.method public setOutOfOffice(JLcom/android/exchange/OoODataList;)V
    .locals 10
    .parameter "accountId"
    .parameter "data"

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 643
    .local v7, resolver:Landroid/content/ContentResolver;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v8

    .line 653
    .local v8, service:Lcom/android/email/service/IEmailService;
    if-eqz v8, :cond_1

    .line 657
    :try_start_0
    invoke-interface {v8, p1, p2, p3}, Lcom/android/email/service/IEmailService;->OoOffice(JLcom/android/exchange/OoODataList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    :catch_0
    move-exception v1

    goto :goto_0

    .line 662
    :cond_1
    iget-object v9, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v9

    .line 663
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 664
    .local v0, listener:Lcom/android/email/Controller$Result;
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const-string v2, "Operation not supported"

    invoke-direct {v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x64

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_1

    .line 666
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setProviderContext(Landroid/content/Context;)V
    .locals 0
    .parameter "providerContext"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 143
    return-void
.end method

.method public setRemoteSync(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0, p1}, Lcom/android/email/MessagingController;->setRemoteSync(Z)V

    .line 2361
    return-void
.end method

.method public updateMailbox(JJLcom/android/email/Controller$Result;)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "callback"

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v7

    .line 270
    .local v7, service:Lcom/android/email/service/IEmailService;
    if-eqz v7, :cond_0

    .line 273
    :try_start_0
    invoke-interface {v7, p3, p4}, Lcom/android/email/service/IEmailService;->startSync(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v6

    .line 277
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "updateMailbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/android/email/Controller$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller$3;-><init>(Lcom/android/email/Controller;JJ)V

    invoke-virtual {v0}, Lcom/android/email/Controller$3;->start()V

    goto :goto_0
.end method

.method public updateMailboxList(JLcom/android/email/Controller$Result;)V
    .locals 5
    .parameter "accountId"
    .parameter "callback"

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v1

    .line 200
    .local v1, service:Lcom/android/email/service/IEmailService;
    if-eqz v1, :cond_0

    .line 203
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/email/service/IEmailService;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "updateMailboxList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Lcom/android/email/Controller$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/Controller$1;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v2}, Lcom/android/email/Controller$1;->start()V

    goto :goto_0
.end method
