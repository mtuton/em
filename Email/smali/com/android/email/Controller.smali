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
.field private static MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

.field private static MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

.field public static MESSAGEID_TO_CONVERSATIONID_COLUMN_MAILBOXID:I

.field public static MESSAGEID_TO_CONVERSATIONID_PROJECTION:[Ljava/lang/String;

.field public static MESSAGEID_TO_CONVERSDATIONID_COLUMN_CONVID:I

.field private static MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

.field private static MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

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
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v6, "mailboxKey"

    const-string v5, "_id"

    .line 101
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    .line 105
    sput v2, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

    .line 107
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v4

    const-string v1, "mailboxKey"

    aput-object v6, v0, v2

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    .line 111
    sput v2, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v4

    const-string v1, "mailboxKey"

    aput-object v6, v0, v2

    const-string v1, "conversationId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSATIONID_PROJECTION:[Ljava/lang/String;

    .line 119
    sput v2, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSATIONID_COLUMN_MAILBOXID:I

    .line 120
    sput v3, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSDATIONID_COLUMN_CONVID:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "_context"

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/email/Controller$LegacyListener;

    invoke-direct {v0, p0, v1}, Lcom/android/email/Controller$LegacyListener;-><init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    .line 67
    new-instance v0, Lcom/android/email/Controller$ServiceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    .line 1729
    iput-object v1, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    .line 124
    iput-object p1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    .line 125
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;)Lcom/android/email/MessagingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    .line 127
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->addListener(Lcom/android/email/MessagingListener;)V

    .line 128
    return-void
.end method

.method static synthetic access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/Controller;)Lcom/android/email/Controller$PendingDownloadController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/Controller;Lcom/android/email/Controller$PendingDownloadController;)Lcom/android/email/Controller$PendingDownloadController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/Controller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/email/Controller;->processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    return-object v0
.end method

.method private emailToAccountId(Ljava/lang/String;)I
    .locals 9
    .parameter "email"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 771
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 772
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

    .line 779
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 781
    .local v7, retValue:I
    if-eqz v6, :cond_1

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 783
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 784
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 787
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 791
    :cond_1
    return v7
.end method

.method private folderCommandCallback(IIJ)V
    .locals 6
    .parameter "command"
    .parameter "errorId"
    .parameter "mailboxId"

    .prologue
    .line 2053
    iget-object v2, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v2

    .line 2054
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

    .line 2055
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

    .line 2059
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

    .line 2060
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/Controller;
    .locals 2
    .parameter "_context"

    .prologue
    .line 135
    const-class v0, Lcom/android/email/Controller;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/android/email/Controller;

    invoke-direct {v1, p0}, Lcom/android/email/Controller;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    .line 138
    :cond_0
    sget-object v1, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getServiceForAccount(J)Lcom/android/email/service/IEmailService;
    .locals 3
    .parameter "accountId"

    .prologue
    .line 2639
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 2640
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2641
    :cond_0
    const/4 v1, 0x0

    .line 2643
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
    .line 2622
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 2623
    .local v0, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 2624
    iget-wide v1, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v1

    .line 2626
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAttachmentOfEAS(JJJJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const-string v6, "loadAttachmentOfEAS"

    .line 1961
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p7, p8, p1, p2}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v0

    .line 1965
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1966
    const-string v0, "loadAttachmentOfEAS"

    const-string v0, "Something goes wrong now.."

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 1983
    :goto_0
    return v0

    .line 1970
    :cond_0
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v1

    .line 1973
    invoke-direct {p0, p3, p4}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v2

    .line 1974
    if-eqz v2, :cond_1

    .line 1976
    :try_start_0
    iget-wide v3, v1, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, p8, p1, p2}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/android/email/service/IEmailService;->loadAttachment(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1978
    :catch_0
    move-exception v0

    .line 1979
    const-string v1, "loadAttachmentOfEAS"

    const-string v1, "RemoteException"

    invoke-static {v6, v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v5

    .line 1980
    goto :goto_0
.end method

.method private processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V
    .locals 30

    .prologue
    .line 1743
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 1745
    .local v18, final_messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    .line 1746
    .local v4, final_source_accountId:J
    const-wide/16 v6, -0x1

    .line 1747
    .local v6, final_source_boxId:J
    const-wide/16 v8, -0x1

    .line 1748
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

    .line 1752
    .end local v4           #final_source_accountId:J
    .local v19, final_source_accountId:J
    :goto_0
    const/4 v12, 0x0

    .line 1753
    .local v12, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    const/4 v14, 0x0

    .line 1755
    .local v14, bDelay:Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->clear()V

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1759
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1761
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

    .line 1857
    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    :goto_1
    return-void

    .line 1765
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

    .line 1766
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

    .line 1768
    .local v13, AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    iget v2, v13, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v13, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    .line 1771
    iget v2, v13, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_3

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1774
    const/16 v16, 0x1

    .line 1784
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_2
    if-eqz v16, :cond_4

    .line 1786
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1837
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

    .line 1778
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

    .line 1780
    const/4 v14, 0x1

    goto :goto_2

    .line 1789
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_4
    if-nez v14, :cond_a

    .line 1791
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

    .line 1793
    .restart local v13       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object v12, v13

    .line 1795
    iget-wide v2, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 1797
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

    .line 1837
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    :goto_4
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1839
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    .line 1841
    invoke-virtual/range {v2 .. v11}, Lcom/android/email/Controller;->moveMessageToOtherAccountFolder(Ljava/util/HashSet;JJJJ)Z

    .line 1846
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

    .line 1854
    .end local v4           #final_source_accountId:J
    .restart local v19       #final_source_accountId:J
    goto/16 :goto_0

    .line 1800
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

    .line 1802
    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    goto :goto_4

    .line 1805
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

    .line 1807
    .local v29, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-wide v3, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    iget-wide v5, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;

    move-result-object v29

    .line 1808
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1810
    iget-wide v2, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1812
    iget-wide v4, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1813
    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    :try_start_6
    iget-wide v6, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1814
    .end local v21           #final_source_boxId:J
    .restart local v6       #final_source_boxId:J
    :try_start_7
    iget-wide v8, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_accountId:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1815
    .end local v23           #final_target_accountId:J
    .restart local v8       #final_target_accountId:J
    :try_start_8
    iget-wide v10, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_boxId:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1817
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

    .line 1837
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v16           #btrylater:Z
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v29           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v2

    goto/16 :goto_3

    .line 1821
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

    .line 1822
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

    .line 1824
    .local v28, id:Ljava/lang/Long;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    iget-wide v7, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J

    iget-wide v9, v12, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/email/Controller;->loadAttachmentOfEAS(JJJJ)Z

    move-result v15

    .line 1825
    if-nez v15, :cond_9

    .line 1827
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

    .line 1834
    .end local v19           #final_source_accountId:J
    .restart local v4       #final_source_accountId:J
    goto/16 :goto_4

    .line 1847
    .end local v13           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v15           #bret:Z
    .end local v29           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catch_0
    move-exception v17

    .line 1848
    .local v17, e:Ljava/lang/InterruptedException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v2, v0

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1850
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1851
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

    .line 1854
    .end local v17           #e:Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v2

    throw v2

    .line 1837
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
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2368
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2370
    const-string v1, "messageid=?"

    .line 2371
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2373
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2374
    const-string v4, "new"

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2375
    const-string v4, "content://logs/email"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2376
    return-void

    :cond_0
    move v5, v6

    .line 2374
    goto :goto_0
.end method


# virtual methods
.method public EASMoveMessage(Ljava/util/HashSet;JJJ)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 1988
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1990
    const/4 v0, 0x0

    .line 1992
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 1994
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1995
    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1999
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v0

    .line 2001
    if-eqz v0, :cond_1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 2004
    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/android/email/service/IEmailService;->MoveMessage(Ljava/util/List;JJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2012
    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2005
    :catch_0
    move-exception v0

    .line 2008
    const-string v1, "onEASMoveMessage"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2009
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
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
    .line 312
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/MessagingController;->cancelLoadRemoteMessage(J)V

    .line 315
    :cond_0
    return-void
.end method

.method public changeMimeType(JJLjava/lang/String;)Z
    .locals 6
    .parameter "accountId"
    .parameter "attachmentId"
    .parameter "newMimeType"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/email/provider/AttachmentProvider;->changeMimeType(Landroid/content/Context;JJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createFolder(Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x4

    .line 2114
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    .line 2115
    if-nez v6, :cond_1

    .line 2116
    const/16 v0, 0x26

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    .line 2162
    :cond_0
    :goto_0
    return-void

    .line 2121
    :cond_1
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parentServerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2126
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2131
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 2132
    const/4 v1, 0x4

    const/16 v2, 0x25

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2138
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2138
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2138
    :cond_2
    throw v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2143
    :cond_4
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v0

    .line 2144
    if-eqz v0, :cond_5

    if-eqz v6, :cond_5

    .line 2146
    :try_start_1
    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object v3, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/email/service/IEmailService;->folderCreate(JLjava/lang/String;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2147
    :catch_0
    move-exception v0

    .line 2150
    const-string v1, "moveMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2153
    :cond_5
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 2154
    :try_start_2
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/email/Controller$Result;

    .line 2155
    const/4 v2, 0x4

    new-instance v3, Lcom/android/email/mail/MessagingException;

    const-string v4, "Operation not supported"

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    iget-wide v4, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {p0, v2, v3, v4, v5}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_1

    .line 2159
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method createMailbox(JI)J
    .locals 6
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 428
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    if-gez p3, :cond_1

    .line 429
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

    .line 430
    .local v3, mes:Ljava/lang/String;
    const-string v4, "Email"

    invoke-static {v4, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 433
    .end local v3           #mes:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    .line 434
    .local v0, box:Lcom/android/email/provider/EmailContent$Mailbox;
    iput-wide p1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 435
    iput p3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 436
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 437
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 438
    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getMailboxServerName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 439
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 442
    iget-object v4, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v4

    .line 443
    :try_start_0
    iget-object v5, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 444
    .local v2, l:Lcom/android/email/Controller$Result;
    invoke-interface {v2}, Lcom/android/email/Controller$Result;->createMailbox()V

    goto :goto_0

    .line 446
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    iget-wide v4, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    return-wide v4
.end method

.method public deleteAttachment(J)V
    .locals 4
    .parameter "attachmentId"

    .prologue
    const/4 v3, 0x0

    .line 976
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 977
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 978
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 979
    return-void
.end method

.method public deleteConversation(JJ)V
    .locals 21
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1314
    .local v5, resolver:Landroid/content/ContentResolver;
    const-wide/16 v6, -0x1

    cmp-long v6, p3, v6

    if-nez v6, :cond_0

    .line 1315
    invoke-virtual/range {p0 .. p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 1317
    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v6, p3, v6

    if-nez v6, :cond_2

    .line 1387
    :cond_1
    :goto_0
    return-void

    .line 1322
    :cond_2
    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v18

    .line 1325
    .local v18, trashMailboxId:J
    const-wide/16 v16, -0x1

    .line 1327
    .local v16, sourceMailboxId:J
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSATIONID_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1331
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    sget v6, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSATIONID_COLUMN_MAILBOXID:I

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide/from16 v16, v6

    .line 1334
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    sget v6, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSDATIONID_COLUMN_CONVID:I

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    move-object v13, v6

    .line 1338
    .local v13, conversationId:Ljava/lang/String;
    :goto_2
    if-eqz v11, :cond_3

    .line 1339
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1342
    :cond_3
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v8, "conversationId =? AND mailboxKey=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v13, v9, v10

    const/4 v10, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .end local v11           #c:Landroid/database/Cursor;
    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1346
    .local v12, conv:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_9

    .line 1347
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Byte array to encript cannot be null or zero length"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1371
    :catchall_0
    move-exception v6

    if-eqz v12, :cond_5

    .line 1372
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1371
    :cond_5
    throw v6

    .line 1331
    .end local v12           #conv:Landroid/database/Cursor;
    .end local v13           #conversationId:Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_6
    const-wide/16 v6, -0x1

    move-wide/from16 v16, v6

    goto :goto_1

    .line 1334
    :cond_7
    const/4 v6, 0x0

    move-object v13, v6

    goto :goto_2

    .line 1338
    :catchall_1
    move-exception v6

    if-eqz v11, :cond_8

    .line 1339
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1338
    :cond_8
    throw v6

    .line 1348
    .end local v11           #c:Landroid/database/Cursor;
    .restart local v12       #conv:Landroid/database/Cursor;
    .restart local v13       #conversationId:Ljava/lang/String;
    :cond_9
    const/4 v6, -0x1

    :try_start_2
    invoke-interface {v12, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1349
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1350
    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1353
    .local v14, message_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p3

    move-wide v3, v14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1354
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1359
    .local v20, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1371
    .end local v14           #message_id:J
    .end local v20           #uri:Landroid/net/Uri;
    :cond_a
    if-eqz v12, :cond_1

    .line 1372
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public deleteFolder(J)V
    .locals 12
    .parameter "mailboxId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2065
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 2067
    .local v4, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v4, :cond_0

    .line 2068
    const/16 v7, 0x24

    invoke-direct {p0, v9, v7, p1, p2}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    .line 2106
    :goto_0
    return-void

    .line 2073
    :cond_0
    iget v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v7, v9, :cond_1

    iget v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 2074
    const/16 v7, 0x23

    invoke-direct {p0, v9, v7, p1, p2}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    goto :goto_0

    .line 2079
    :cond_1
    sget-object v7, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2082
    .local v6, uri:Landroid/net/Uri;
    iget v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 2084
    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 2086
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6, v0, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2088
    iget-wide v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-direct {p0, v7, v8}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v5

    .line 2089
    .local v5, service:Lcom/android/email/service/IEmailService;
    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 2091
    :try_start_0
    iget-wide v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {v5, v7, v8}, Lcom/android/email/service/IEmailService;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2092
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 2095
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

    .line 2098
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v7, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v7

    .line 2099
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

    .line 2100
    .local v3, listener:Lcom/android/email/Controller$Result;
    const/4 v8, 0x1

    new-instance v9, Lcom/android/email/mail/MessagingException;

    const-string v10, "Operation not supported"

    invoke-direct {v9, v10}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    iget-wide v10, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {v3, v8, v9, v10, v11}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_1

    .line 2104
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

.method public deleteMessage(JJ)Z
    .locals 28
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1000
    .local v5, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 1002
    .local v14, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    iget-wide v8, v14, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    cmp-long v6, v8, p1

    if-nez v6, :cond_0

    .line 1004
    const/4 v6, 0x0

    .line 1085
    .end local v14           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :goto_0
    return v6

    .line 1009
    :cond_1
    const-wide/16 v8, -0x1

    cmp-long v6, p3, v8

    if-nez v6, :cond_2

    .line 1010
    invoke-virtual/range {p0 .. p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 1012
    :cond_2
    const-wide/16 v8, -0x1

    cmp-long v6, p3, v8

    if-nez v6, :cond_3

    .line 1013
    const/4 v6, 0x0

    goto :goto_0

    .line 1016
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v15

    .line 1017
    .local v15, account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v22

    .line 1020
    .local v22, server_type:I
    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v25

    .line 1021
    .local v25, trashMailboxId:J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v18

    .line 1024
    .local v18, draftMailboxId:J
    const-wide/16 v12, -0x1

    .line 1025
    .local v12, sourceMailboxId:J
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1029
    .local v16, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    sget v6, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    move-wide v12, v8

    .line 1033
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1036
    const/4 v6, 0x2

    move/from16 v0, v22

    move v1, v6

    if-ne v0, v1, :cond_8

    .line 1039
    sget-object v27, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 1042
    .local v27, uri:Landroid/net/Uri;
    cmp-long v6, v12, v18

    if-eqz v6, :cond_4

    .line 1043
    sget-object v27, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 1046
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v6, p1, v8

    if-lez v6, :cond_7

    .line 1047
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    .line 1048
    .local v21, msgId:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 1049
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1051
    .local v17, count_msg:I
    if-lez v17, :cond_6

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1029
    .end local v17           #count_msg:I
    .end local v21           #msgId:Ljava/lang/String;
    .end local v27           #uri:Landroid/net/Uri;
    :cond_5
    const-wide/16 v8, -0x1

    move-wide v12, v8

    goto :goto_1

    .line 1033
    :catchall_0
    move-exception v6

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1051
    .restart local v17       #count_msg:I
    .restart local v21       #msgId:Ljava/lang/String;
    .restart local v27       #uri:Landroid/net/Uri;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1053
    .end local v17           #count_msg:I
    .end local v21           #msgId:Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1057
    .end local v27           #uri:Landroid/net/Uri;
    :cond_8
    cmp-long v6, v12, v25

    if-nez v6, :cond_9

    .line 1058
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    .line 1061
    .restart local v27       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p3

    move-wide/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1064
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x1

    move-object v0, v6

    move-wide/from16 v1, p1

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/Controller;->updateHistoryReadFlag(Landroid/content/Context;JZ)V

    .line 1070
    move-wide/from16 v23, p3

    .line 1071
    .local v23, syncAccountId:J
    new-instance v6, Lcom/android/email/Controller$12;

    move-object v0, v6

    move-object/from16 v1, p0

    move-wide/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/Controller$12;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v6}, Lcom/android/email/Controller$12;->start()V

    .line 1077
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1081
    .end local v23           #syncAccountId:J
    .end local v27           #uri:Landroid/net/Uri;
    :cond_9
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1082
    .local v7, messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p0

    move-wide/from16 v8, p3

    move-wide/from16 v10, v25

    .line 1085
    invoke-virtual/range {v6 .. v13}, Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z

    move-result v6

    goto/16 :goto_0
.end method

.method public deleteMessage(Ljava/util/HashSet;J)Z
    .locals 1
    .parameter
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 1181
    .local p1, messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/email/Controller;->deleteMessage(Ljava/util/HashSet;JZ)Z

    move-result v0

    return v0
.end method

.method public deleteMessage(Ljava/util/HashSet;JZ)Z
    .locals 36
    .parameter
    .parameter "accountId"
    .parameter "deleteAll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JZ)Z"
        }
    .end annotation

    .prologue
    .line 1187
    .local p1, messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1188
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 1193
    .local v27, messageId_sample:J
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 1194
    .local v26, messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    .line 1196
    .local v23, id:Ljava/lang/Long;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 1200
    const/16 v16, 0x0

    .line 1201
    .local v16, bdiscard:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 1203
    .local v14, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    iget-wide v6, v14, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1205
    const/16 v16, 0x1

    .line 1210
    .end local v14           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_2
    if-nez v16, :cond_0

    .line 1212
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    goto :goto_0

    .line 1218
    .end local v16           #bdiscard:Z
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #id:Ljava/lang/Long;
    :cond_3
    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-nez v6, :cond_4

    .line 1219
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p2

    .line 1221
    :cond_4
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_5

    const-wide/16 v6, -0x1

    cmp-long v6, v27, v6

    if-nez v6, :cond_6

    .line 1223
    :cond_5
    const/4 v6, 0x0

    .line 1304
    .end local p0
    .end local p1           #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_1
    return v6

    .line 1226
    .restart local p0
    .restart local p1       #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v15

    .line 1227
    .local v15, account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v29

    .line 1230
    .local v29, server_type:I
    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v32

    .line 1231
    .local v32, trashMailboxId:J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v19

    .line 1234
    .local v19, draftMailboxId:J
    const-wide/16 v12, -0x1

    .line 1235
    .local v12, sourceMailboxId:J
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1239
    .local v17, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9

    sget v6, Lcom/android/email/Controller;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    move-wide v12, v6

    .line 1243
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1246
    const/4 v6, 0x2

    move/from16 v0, v29

    move v1, v6

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 1251
    if-eqz p4, :cond_a

    .line 1252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mailboxKey"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1267
    .end local p0
    .local v35, where:Ljava/lang/String;
    :cond_7
    sget-object v34, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 1270
    .local v34, uri:Landroid/net/Uri;
    cmp-long v6, v12, v19

    if-eqz v6, :cond_8

    .line 1271
    sget-object v34, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 1273
    :cond_8
    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 1274
    .local v18, count_msg:I
    if-lez v18, :cond_c

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 1239
    .end local v18           #count_msg:I
    .end local v34           #uri:Landroid/net/Uri;
    .end local v35           #where:Ljava/lang/String;
    .restart local p0
    :cond_9
    const-wide/16 v6, -0x1

    move-wide v12, v6

    goto :goto_2

    .line 1243
    :catchall_0
    move-exception v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1255
    :cond_a
    const-string v35, "_id in ( "

    .line 1256
    .restart local v35       #where:Ljava/lang/String;
    const/16 v24, 0x0

    .line 1257
    .local v24, index:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 1258
    .end local p0
    .local v25, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1259
    add-int/lit8 v24, v24, 0x1

    .line 1260
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->size()I

    move-result v6

    move/from16 v0, v24

    move v1, v6

    if-ne v0, v1, :cond_b

    .line 1261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto :goto_3

    .line 1263
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto :goto_3

    .line 1274
    .end local v24           #index:I
    .end local v25           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v18       #count_msg:I
    .restart local v34       #uri:Landroid/net/Uri;
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1278
    .end local v18           #count_msg:I
    .end local v34           #uri:Landroid/net/Uri;
    .end local v35           #where:Ljava/lang/String;
    .restart local p0
    :cond_d
    cmp-long v6, v12, v32

    if-nez v6, :cond_f

    .line 1279
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 1280
    .end local p1           #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v25       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1281
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->intValue()I

    move-result v23

    .line 1282
    .local v23, id:I
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v34

    .line 1285
    .restart local v34       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v7, v0

    move-object v0, v6

    move-wide/from16 v1, p2

    move-wide v3, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1288
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v34

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 1292
    .end local v23           #id:I
    .end local v34           #uri:Landroid/net/Uri;
    :cond_e
    move-wide/from16 v30, p2

    .line 1293
    .local v30, syncAccountId:J
    new-instance v6, Lcom/android/email/Controller$13;

    move-object v0, v6

    move-object/from16 v1, p0

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/Controller$13;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v6}, Lcom/android/email/Controller$13;->start()V

    .line 1299
    const/4 v6, 0x1

    goto/16 :goto_1

    .end local v25           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v30           #syncAccountId:J
    .restart local p1       #messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_f
    move-object/from16 v6, p0

    move-object/from16 v7, v26

    move-wide/from16 v8, p2

    move-wide/from16 v10, v32

    .line 1304
    invoke-virtual/range {v6 .. v13}, Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z

    move-result v6

    goto/16 :goto_1
.end method

.method public emptyTrash(J)V
    .locals 3
    .parameter

    .prologue
    .line 2549
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v0

    .line 2550
    if-eqz v0, :cond_0

    .line 2553
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/email/service/IEmailService;->emptyTrash(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2573
    :cond_0
    :goto_0
    return-void

    .line 2554
    :catch_0
    move-exception v0

    .line 2557
    const-string v1, "onMoreMessage"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public findOrCreateMailboxOfType(JI)J
    .locals 6
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    const-wide/16 v4, -0x1

    .line 378
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    move-wide v2, v4

    .line 383
    :goto_0
    return-wide v2

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 383
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

.method public getConversationID(Ljava/lang/String;)[B
    .locals 6
    .parameter "Convdetail"

    .prologue
    const/16 v5, 0x10

    .line 3549
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 3550
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Byte array to encript cannot be null or zero length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3551
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 3552
    .local v1, mConversationId:[B
    const/4 v0, 0x0

    .line 3553
    .local v0, i:I
    const/4 v2, 0x0

    .line 3554
    .local v2, temp:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_4

    .line 3556
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 3557
    aget-byte v3, v1, v2

    const/16 v4, -0x80

    if-ne v3, v4, :cond_3

    .line 3564
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x2

    .line 3565
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3559
    :cond_3
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_2

    .line 3561
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 3562
    aget-byte v3, v1, v2

    mul-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_1

    .line 3575
    :cond_4
    return-object v1
.end method

.method getMailboxServerName(I)Ljava/lang/String;
    .locals 2
    .parameter "mailboxType"

    .prologue
    .line 393
    const/4 v0, -0x1

    .line 394
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 420
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 396
    :pswitch_1
    const v0, 0x7f080042

    .line 397
    goto :goto_0

    .line 399
    :pswitch_2
    const v0, 0x7f080043

    .line 400
    goto :goto_0

    .line 402
    :pswitch_3
    const v0, 0x7f080044

    .line 403
    goto :goto_0

    .line 405
    :pswitch_4
    const v0, 0x7f080045

    .line 406
    goto :goto_0

    .line 408
    :pswitch_5
    const v0, 0x7f080046

    .line 409
    goto :goto_0

    .line 411
    :pswitch_6
    const v0, 0x7f080047

    .line 412
    goto :goto_0

    .line 416
    :pswitch_7
    const v0, 0x7f0801c9

    goto :goto_0

    .line 420
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 394
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
    .line 617
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 618
    .local v7, resolver:Landroid/content/ContentResolver;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 643
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v8

    .line 628
    .local v8, service:Lcom/android/email/service/IEmailService;
    if-eqz v8, :cond_1

    .line 632
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v8, p1, p2, v1}, Lcom/android/email/service/IEmailService;->OoOffice(JLcom/android/exchange/OoODataList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    goto :goto_0

    .line 637
    :cond_1
    iget-object v9, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v9

    .line 638
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

    .line 639
    .local v0, listener:Lcom/android/email/Controller$Result;
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const-string v2, "Operation not supported"

    invoke-direct {v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x64

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_1

    .line 641
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
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2654
    if-nez p1, :cond_0

    move v0, v2

    .line 2663
    :goto_0
    return v0

    .line 2655
    :cond_0
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    .line 2658
    if-nez v0, :cond_1

    move v0, v2

    .line 2659
    goto :goto_0

    .line 2661
    :cond_1
    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 2663
    const-string v1, "pop3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "imap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p7

    move-wide/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v5

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v6

    .line 2505
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v12, v0

    monitor-enter v12

    .line 2508
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/Controller$Result;

    .line 2509
    const/4 v6, 0x0

    const/4 v11, 0x0

    move-wide/from16 v7, p3

    move-wide/from16 v9, p1

    invoke-interface/range {v5 .. v11}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_0

    .line 2514
    :catchall_0
    move-exception v5

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2511
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/Controller$Result;

    .line 2512
    const/4 v6, 0x0

    const/16 v11, 0x64

    move-wide/from16 v7, p3

    move-wide/from16 v9, p1

    invoke-interface/range {v5 .. v11}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_1

    .line 2514
    :cond_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2542
    :goto_2
    return-void

    .line 2519
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v7

    .line 2520
    if-eqz v7, :cond_3

    .line 2523
    :try_start_2
    iget-wide v8, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v0, p7

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v8, v9, v5, v6}, Lcom/android/email/service/IEmailService;->loadAttachment(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2525
    :catch_0
    move-exception v5

    .line 2528
    const-string v6, "onDownloadAttachment"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2532
    :cond_3
    new-instance v5, Lcom/android/email/Controller$22;

    move-object/from16 v6, p0

    move-wide/from16 v7, p7

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p1

    move/from16 v15, p10

    invoke-direct/range {v5 .. v15}, Lcom/android/email/Controller$22;-><init>(Lcom/android/email/Controller;JJJJZ)V

    invoke-virtual {v5}, Lcom/android/email/Controller$22;->start()V

    goto :goto_2
.end method

.method public loadMessageForView(JLcom/android/email/Controller$Result;)V
    .locals 8
    .parameter "messageId"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v3

    .line 331
    .local v3, service:Lcom/android/email/service/IEmailService;
    if-eqz v3, :cond_1

    .line 334
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 335
    .local v4, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "flagLoaded"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 338
    const-string v5, "Email"

    const-string v6, "Unexpected loadMessageForView() for service-based message."

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v5, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v5

    .line 340
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

    .line 341
    .local v2, listener:Lcom/android/email/Controller$Result;
    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-interface {v2, v6, p1, p2, v7}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_0

    .line 343
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

    .line 353
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 346
    :cond_1
    new-instance v5, Lcom/android/email/Controller$4;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/email/Controller$4;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v5}, Lcom/android/email/Controller$4;->start()V

    goto :goto_1
.end method

.method public loadMore(J)V
    .locals 3
    .parameter

    .prologue
    .line 2586
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v0

    .line 2587
    if-eqz v0, :cond_0

    .line 2590
    :try_start_0
    const-string v1, "Controller"

    const-string v2, "jykim : loadMore "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    invoke-interface {v0, p1, p2}, Lcom/android/email/service/IEmailService;->loadMore(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2611
    :cond_0
    :goto_0
    return-void

    .line 2592
    :catch_0
    move-exception v0

    .line 2595
    const-string v1, "onMoreMessage"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public loadMoreMessages(JLcom/android/email/Controller$Result;)V
    .locals 1
    .parameter "mailboxId"
    .parameter "callback"

    .prologue
    .line 923
    new-instance v0, Lcom/android/email/Controller$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$11;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v0}, Lcom/android/email/Controller$11;->start()V

    .line 951
    return-void
.end method

.method public lookupAccountForMessage(J)J
    .locals 8
    .parameter "messageId"

    .prologue
    .line 958
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 959
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

    .line 963
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

    .line 967
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 963
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 967
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public moveConversation(JJ)Z
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 1860
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1865
    const-string v3, "Vinay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveConversation messageId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v8

    .line 1867
    iget-wide v12, v8, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 1868
    iget-wide v9, v8, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 1869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1870
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v6, "conversationId =? AND mailboxKey=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v14, 0x0

    iget-object v15, v8, Lcom/android/email/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    aput-object v15, v7, v14

    const/4 v14, 0x1

    iget-wide v15, v8, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1874
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1875
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "moveConversation: cursor should not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    :catch_0
    move-exception v4

    .line 1889
    :try_start_1
    const-string v4, "moveConversation"

    const-string v5, "moveConversation: cursor should not be null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1892
    if-eqz v3, :cond_1

    .line 1893
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v3, p0

    move-object v4, v11

    move-wide v5, v12

    move-wide/from16 v7, p3

    .line 1896
    invoke-virtual/range {v3 .. v10}, Lcom/android/email/Controller;->EASMoveMessage(Ljava/util/HashSet;JJJ)Z

    .line 1897
    const/4 v3, 0x1

    return v3

    .line 1876
    :cond_2
    const/4 v4, -0x1

    :try_start_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1877
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1878
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1879
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1892
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 1893
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1892
    :cond_3
    throw v4

    :cond_4
    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public moveConversationAlways(JLjava/lang/String;JJI)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2303
    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-nez v0, :cond_0

    .line 2328
    :goto_0
    return-void

    .line 2311
    :cond_0
    invoke-direct {p0, p4, p5}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v0

    .line 2312
    if-eqz v0, :cond_1

    .line 2316
    :try_start_0
    const-string v1, "CONVID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConversationID start MessageID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getConversationID(Ljava/lang/String;)[B

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p6

    move v6, p8

    invoke-interface/range {v0 .. v6}, Lcom/android/email/service/IEmailService;->moveConversationAlways(JJ[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2318
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2322
    :cond_1
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 2323
    :try_start_1
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 2324
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const-string v4, "Operation not supported"

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getConversationID(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0x64

    invoke-interface {v0, v3, v4, v5, p8}, Lcom/android/email/Controller$Result;->moveConvAlwaysCallback(Lcom/android/email/mail/MessagingException;[BII)V

    goto :goto_1

    .line 2326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public moveFolder(JJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    .line 2234
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    .line 2235
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 2237
    if-eqz v6, :cond_0

    if-nez v7, :cond_2

    .line 2238
    :cond_0
    const/16 v0, 0x24

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    .line 2297
    :cond_1
    :goto_0
    return-void

    .line 2243
    :cond_2
    iget v0, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v0, v2, :cond_3

    .line 2245
    const/16 v0, 0x23

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    goto :goto_0

    .line 2250
    :cond_3
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parentServerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2255
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2260
    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 2261
    const/4 v1, 0x2

    const/16 v2, 0x25

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2268
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2267
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2268
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2267
    :cond_4
    throw v1

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2268
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2272
    :cond_6
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2275
    iget v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 2276
    iget-object v1, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    .line 2278
    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 2280
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2282
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v0

    .line 2283
    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    .line 2285
    :try_start_1
    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {v0, v1, v2}, Lcom/android/email/service/IEmailService;->updateFolderList(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2286
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 2289
    :cond_7
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 2290
    :try_start_2
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/email/Controller$Result;

    .line 2291
    const/4 v2, 0x2

    new-instance v3, Lcom/android/email/mail/MessagingException;

    const-string v4, "Operation not supported"

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    iget-wide v4, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {p0, v2, v3, v4, v5}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_1

    .line 2295
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method public moveMessage(Ljava/util/HashSet;JJJ)Z
    .locals 38
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
    .line 1391
    .local p1, messageId_request:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v23

    .line 1396
    .local v23, account:Lcom/android/email/provider/EmailContent$Account;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1397
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

    .line 1399
    .local v29, id:Ljava/lang/Long;
    const/16 v24, 0x0

    .line 1400
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

    .line 1402
    .local v22, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 1404
    const/16 v24, 0x1

    .line 1409
    .end local v22           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_2
    if-nez v24, :cond_0

    .line 1411
    move-object v0, v15

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1415
    .end local v24           #bdiscard:Z
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v29           #id:Ljava/lang/Long;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v36

    .line 1417
    .local v36, server_type:I
    if-nez v36, :cond_9

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    .line 1420
    .local v33, resolver:Landroid/content/ContentResolver;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1421
    .local v25, cv:Landroid/content/ContentValues;
    const-string v5, "mailboxKey"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1423
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1424
    .local v35, serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
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

    .line 1425
    .restart local v29       #id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v30

    .line 1426
    .local v30, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v30, :cond_4

    .line 1428
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

    .line 1432
    :cond_5
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v37

    .line 1433
    .local v37, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-object/from16 v2, v25

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1436
    .end local v37           #uri:Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1438
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v37

    .line 1439
    .restart local v37       #uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-object/from16 v2, v25

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1441
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v5

    if-nez v5, :cond_4

    .line 1442
    new-instance v34, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct/range {v34 .. v34}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    .line 1443
    .local v34, sentinel:Lcom/android/email/provider/EmailContent$Message;
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 1444
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 1445
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1446
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 1447
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 1452
    .end local v29           #id:Ljava/lang/Long;
    .end local v30           #message:Lcom/android/email/provider/EmailContent$Message;
    .end local v34           #sentinel:Lcom/android/email/provider/EmailContent$Message;
    .end local v37           #uri:Landroid/net/Uri;
    :cond_7
    invoke-virtual/range {v35 .. v35}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1454
    const/4 v5, 0x1

    .line 1548
    .end local v25           #cv:Landroid/content/ContentValues;
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v33           #resolver:Landroid/content/ContentResolver;
    .end local v35           #serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_2
    return v5

    .line 1457
    .restart local v25       #cv:Landroid/content/ContentValues;
    .restart local v27       #i$:Ljava/util/Iterator;
    .restart local v33       #resolver:Landroid/content/ContentResolver;
    .restart local v35       #serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    new-instance v26, Ljava/util/HashSet;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1458
    .local v26, final_messagId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-wide/from16 v8, p2

    .line 1459
    .local v8, syncAccountId:J
    move-wide/from16 v10, p4

    .line 1461
    .local v10, target_boxkey:J
    new-instance v5, Lcom/android/email/Controller$14;

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide v2, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/Controller$14;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v5}, Lcom/android/email/Controller$14;->start()V

    .line 1548
    .end local v8           #syncAccountId:J
    .end local v10           #target_boxkey:J
    .end local v25           #cv:Landroid/content/ContentValues;
    .end local v26           #final_messagId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v33           #resolver:Landroid/content/ContentResolver;
    .end local v35           #serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_3
    const/4 v5, 0x1

    goto :goto_2

    .line 1468
    :cond_9
    const/4 v5, 0x1

    move/from16 v0, v36

    move v1, v5

    if-ne v0, v1, :cond_13

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    .line 1471
    .restart local v33       #resolver:Landroid/content/ContentResolver;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1472
    .restart local v25       #cv:Landroid/content/ContentValues;
    const-string v5, "mailboxKey"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1474
    new-instance v26, Ljava/util/HashSet;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1475
    .restart local v26       #final_messagId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-wide/from16 v8, p2

    .line 1476
    .restart local v8       #syncAccountId:J
    move-wide/from16 v10, p4

    .line 1477
    .restart local v10       #target_boxkey:J
    move-wide/from16 v12, p6

    .line 1479
    .local v12, final_orig_boxkey:J
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1481
    .restart local v35       #serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v31, 0x0

    .line 1482
    .local v31, outMessageBuff:Ljava/lang/StringBuffer;
    const/16 v32, 0x0

    .line 1483
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

    .line 1485
    .restart local v29       #id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v30

    .line 1486
    .restart local v30       #message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v30, :cond_a

    .line 1488
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

    .line 1494
    :cond_b
    if-nez v32, :cond_c

    .line 1496
    new-instance v32, Ljava/lang/StringBuffer;

    .end local v32           #outMessageBuff_update:Ljava/lang/StringBuffer;
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    .line 1497
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

    .line 1501
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

    .line 1505
    :cond_d
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v0, v5

    move-wide/from16 v1, p2

    move-wide v3, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1509
    if-nez v31, :cond_e

    .line 1511
    new-instance v31, Ljava/lang/StringBuffer;

    .end local v31           #outMessageBuff:Ljava/lang/StringBuffer;
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    .line 1512
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

    .line 1516
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

    .line 1522
    .end local v29           #id:Ljava/lang/Long;
    .end local v30           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_f
    if-eqz v32, :cond_10

    .line 1523
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

    .line 1525
    :cond_10
    if-eqz v31, :cond_11

    .line 1526
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1528
    :cond_11
    invoke-virtual/range {v35 .. v35}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1530
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1533
    :cond_12
    new-instance v7, Ljava/util/HashSet;

    move-object v0, v7

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1535
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
    .end local v35           #serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v14, p0

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    move-wide/from16 v20, p6

    .line 1544
    invoke-virtual/range {v14 .. v21}, Lcom/android/email/Controller;->EASMoveMessage(Ljava/util/HashSet;JJJ)Z

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
    .line 1554
    .local p1, messageId_requested:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/16 v25, 0x1

    .line 1555
    .local v25, bret:Z
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1557
    .local v6, messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-wide/from16 v27, p2

    .line 1558
    .local v27, final_source_accountId:J
    move-wide/from16 v31, p6

    .line 1559
    .local v31, final_target_accountId:J
    move-wide/from16 v29, p4

    .line 1560
    .local v29, final_source_boxkey:J
    move-wide/from16 v33, p8

    .line 1561
    .local v33, final_target_boxkey:J
    const/4 v5, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v42

    .line 1563
    .local v42, sync_source_trashMailboxId:J
    cmp-long v5, p2, p6

    if-nez v5, :cond_0

    .line 1565
    const-string v5, "moveMessageToOtherAccountFolder()"

    const-string v7, "source_accountId == target_syncAccountId. Just do forder move action."

    invoke-static {v5, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p0

    move-wide/from16 v7, p2

    move-wide/from16 v9, p8

    move-wide/from16 v11, p4

    .line 1566
    invoke-virtual/range {v5 .. v12}, Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z

    move-result v25

    move/from16 v5, v25

    .line 1725
    .end local v6           #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_0
    return v5

    .line 1571
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

    .line 1573
    .local v37, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v39

    .line 1574
    .local v39, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v39, :cond_1

    .line 1576
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

    .line 1580
    :cond_2
    move-object v0, v6

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1582
    .end local v37           #id:Ljava/lang/Long;
    .end local v39           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1584
    const/4 v5, 0x0

    goto :goto_0

    .line 1588
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v44

    .line 1589
    .local v44, target_account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v21

    .line 1590
    .local v21, target_server_type:I
    if-ltz v21, :cond_5

    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-le v0, v1, :cond_6

    .line 1592
    :cond_5
    const-string v5, "moveMessageToOtherAccountFolder()"

    const-string v6, "target account server is invalid.."

    .end local v6           #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const/4 v5, 0x0

    goto :goto_0

    .line 1597
    .restart local v6       #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v41

    .line 1598
    .local v41, source_account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v22

    .line 1600
    .local v22, source_server_type:I
    if-ltz v21, :cond_7

    const/4 v5, 0x2

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_8

    .line 1602
    :cond_7
    const-string v5, "moveMessageToOtherAccountFolder()"

    const-string v6, "source account server is invalid.."

    .end local v6           #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1608
    .restart local v6       #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_8
    new-instance v40, Ljava/util/HashSet;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashSet;-><init>()V

    .line 1609
    .local v40, messageId_needTomove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v5, 0x2

    move/from16 v0, v22

    move v1, v5

    if-ne v0, v1, :cond_10

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v5, v0

    monitor-enter v5

    .line 1614
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

    .line 1616
    .local v26, cur_messageId:Ljava/lang/Long;
    new-instance v38, Ljava/util/HashSet;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashSet;-><init>()V

    .line 1617
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

    .line 1620
    .local v7, accountMoveItem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    if-eqz v7, :cond_9

    .line 1625
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

    .line 1626
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1628
    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    .line 1637
    :goto_3
    const/16 v24, 0x0

    .line 1638
    .local v24, balreadyExist:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1640
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

    .line 1642
    .local v23, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide v8, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_a

    .line 1644
    const/16 v24, 0x1

    .line 1650
    .end local v23           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v36           #i$:Ljava/util/Iterator;
    :cond_b
    if-nez v24, :cond_9

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1655
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

    .line 1632
    .restart local v7       #accountMoveItem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v26       #cur_messageId:Ljava/lang/Long;
    .restart local v38       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_c
    :try_start_1
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1634
    const-wide/16 v8, 0x1

    iput-wide v8, v7, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    goto :goto_3

    .line 1655
    .end local v7           #accountMoveItem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v26           #cur_messageId:Ljava/lang/Long;
    .end local v38           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_d
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1689
    :goto_4
    move-object/from16 v10, v40

    .line 1692
    .local v10, final_messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v10}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1694
    new-instance v8, Lcom/android/email/Controller$16;

    move-object/from16 v9, p0

    move-wide/from16 v11, v27

    move-wide/from16 v13, v29

    move-wide/from16 v15, v31

    move-wide/from16 v17, v33

    move-wide/from16 v19, v42

    invoke-direct/range {v8 .. v22}, Lcom/android/email/Controller$16;-><init>(Lcom/android/email/Controller;Ljava/util/HashSet;JJJJJII)V

    invoke-virtual {v8}, Lcom/android/email/Controller$16;->start()V

    .line 1707
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    move-object v5, v0

    if-nez v5, :cond_f

    .line 1711
    new-instance v5, Lcom/android/email/Controller$PendingDownloadController;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Controller$PendingDownloadController;-><init>(Lcom/android/email/Controller;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    .line 1712
    new-instance v5, Lcom/android/email/Controller$17;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Controller$17;-><init>(Lcom/android/email/Controller;)V

    invoke-virtual {v5}, Lcom/android/email/Controller$17;->start()V

    .line 1725
    :cond_f
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1659
    .end local v10           #final_messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v6       #messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v35       #i$:Ljava/util/Iterator;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v5, v0

    monitor-enter v5

    .line 1661
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

    .line 1663
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

    .line 1666
    .restart local v7       #accountMoveItem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    const/16 v24, 0x0

    .line 1667
    .restart local v24       #balreadyExist:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    .line 1669
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

    .line 1671
    .restart local v23       #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide v8, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_12

    .line 1673
    const/16 v24, 0x1

    .line 1679
    .end local v23           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v36           #i$:Ljava/util/Iterator;
    :cond_13
    if-nez v24, :cond_11

    .line 1681
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1686
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

.method public removeResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public renameFolder(Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    .line 2165
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    .line 2167
    if-nez v6, :cond_1

    .line 2168
    const/16 v0, 0x24

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2173
    :cond_1
    iget v0, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v0, v2, :cond_2

    .line 2175
    const/16 v0, 0x23

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V

    goto :goto_0

    .line 2180
    :cond_2
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parentServerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2185
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2190
    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 2191
    const/4 v1, 0x2

    const/16 v2, 0x25

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/email/Controller;->folderCommandCallback(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2197
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2199
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2197
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2199
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2197
    :cond_3
    throw v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2199
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2203
    :cond_5
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2206
    iget v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 2207
    iput-object p1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    .line 2209
    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 2211
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2213
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v0

    .line 2214
    if-eqz v0, :cond_6

    if-eqz v6, :cond_6

    .line 2216
    :try_start_1
    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {v0, v1, v2}, Lcom/android/email/service/IEmailService;->updateFolderList(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2217
    :catch_0
    move-exception v0

    .line 2220
    const-string v1, "moveMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2223
    :cond_6
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 2224
    :try_start_2
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/email/Controller$Result;

    .line 2225
    const/4 v2, 0x2

    new-instance v3, Lcom/android/email/mail/MessagingException;

    const-string v4, "Operation not supported"

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    iget-wide v4, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-interface {p0, v2, v3, v4, v5}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_1

    .line 2229
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method public resetVisibleLimits()V
    .locals 1

    .prologue
    .line 841
    new-instance v0, Lcom/android/email/Controller$9;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$9;-><init>(Lcom/android/email/Controller;)V

    invoke-virtual {v0}, Lcom/android/email/Controller$9;->start()V

    .line 876
    return-void
.end method

.method public restoreMessage(JJ)V
    .locals 10
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 455
    iget-object v8, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 456
    .local v4, resolver:Landroid/content/ContentResolver;
    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_0

    .line 457
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 459
    :cond_0
    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_2

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 467
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p0, p3, p4, v8}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    .line 468
    .local v2, inboxMailboxId:J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .local v1, cv:Landroid/content/ContentValues;
    const-string v8, "mailboxKey"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 472
    sget-object v8, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 473
    .local v7, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    iget-object v8, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v8, p3, p4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 477
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 478
    move-wide v5, p3

    .line 479
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
    .line 2693
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 2695
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I

    move-result v1

    return v1
.end method

.method public returnAccountType(Lcom/android/email/provider/EmailContent$Account;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 2669
    if-nez p1, :cond_0

    move v0, v2

    .line 2686
    :goto_0
    return v0

    .line 2671
    :cond_0
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    .line 2673
    if-nez v0, :cond_1

    move v0, v2

    .line 2674
    goto :goto_0

    .line 2677
    :cond_1
    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 2679
    const-string v1, "pop3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2680
    const/4 v0, 0x0

    goto :goto_0

    .line 2681
    :cond_2
    const-string v1, "imap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2682
    const/4 v0, 0x1

    goto :goto_0

    .line 2683
    :cond_3
    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2684
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    move v0, v2

    .line 2686
    goto :goto_0
.end method

.method public saveToMailbox(Lcom/android/email/provider/EmailContent$Message;I)V
    .locals 5
    .parameter "message"
    .parameter "mailboxType"

    .prologue
    .line 364
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 365
    .local v0, accountId:J
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    .line 366
    .local v2, mailboxId:J
    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 367
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/email/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 368
    return-void
.end method

.method public searchOnServer(JLcom/android/email/Controller$Result;Ljava/lang/String;)V
    .locals 1
    .parameter "mailboxId"
    .parameter "callback"
    .parameter "searchText"

    .prologue
    .line 884
    new-instance v0, Lcom/android/email/Controller$10;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/email/Controller$10;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/email/Controller$10;->start()V

    .line 911
    return-void
.end method

.method public sendMeetingResponse(JILcom/android/email/Controller$Result;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2473
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v0

    .line 2474
    if-eqz v0, :cond_0

    .line 2477
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/email/service/IEmailService;->sendMeetingResponse(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2484
    :cond_0
    :goto_0
    return-void

    .line 2478
    :catch_0
    move-exception v0

    .line 2481
    const-string v1, "onDownloadAttachment"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendMessage(JJ)Z
    .locals 11
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 520
    iget-object v9, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 521
    .local v4, resolver:Landroid/content/ContentResolver;
    const-wide/16 v9, -0x1

    cmp-long v9, p3, v9

    if-nez v9, :cond_0

    .line 522
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 524
    :cond_0
    const-wide/16 v9, -0x1

    cmp-long v9, p3, v9

    if-nez v9, :cond_1

    .line 529
    const/4 v9, 0x0

    .line 569
    :goto_0
    return v9

    .line 533
    :cond_1
    const/4 v9, 0x4

    invoke-virtual {p0, p3, p4, v9}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    .line 534
    .local v2, outboxId:J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 535
    .local v1, cv:Landroid/content/ContentValues;
    const-string v9, "mailboxKey"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 538
    sget-object v9, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 539
    .local v8, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v1, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v7

    .line 543
    .local v7, service:Lcom/android/email/service/IEmailService;
    if-eqz v7, :cond_2

    .line 547
    :try_start_0
    iget-object v9, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-interface {v7, v9}, Lcom/android/email/service/IEmailService;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 553
    :cond_2
    iget-object v9, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v9, p3, p4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 555
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    const/4 v9, 0x5

    invoke-virtual {p0, p3, p4, v9}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v5

    .line 557
    .local v5, sentboxId:J
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    .line 558
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 561
    :cond_4
    new-instance v9, Lcom/android/email/Controller$6;

    invoke-direct {v9, p0, v0, v5, v6}, Lcom/android/email/Controller$6;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Account;J)V

    invoke-virtual {v9}, Lcom/android/email/Controller$6;->start()V

    goto :goto_1

    .line 548
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v5           #sentboxId:J
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public sendMessageFromOutbox(JJ)Z
    .locals 9
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    .line 573
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 574
    .local v1, resolver:Landroid/content/ContentResolver;
    cmp-long v5, p3, v7

    if-nez v5, :cond_0

    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 577
    :cond_0
    cmp-long v5, p3, v7

    if-nez v5, :cond_1

    move v5, v6

    .line 613
    :goto_0
    return v5

    .line 586
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/email/service/IEmailService;

    move-result-object v4

    .line 587
    .local v4, service:Lcom/android/email/service/IEmailService;
    if-eqz v4, :cond_2

    .line 591
    :try_start_0
    iget-object v5, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-interface {v4, v5}, Lcom/android/email/service/IEmailService;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 597
    :cond_2
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v5, p3, p4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 599
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    const/4 v5, 0x5

    invoke-virtual {p0, p3, p4, v5}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    .line 601
    .local v2, sentboxId:J
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    move v5, v6

    .line 602
    goto :goto_0

    .line 605
    :cond_4
    new-instance v5, Lcom/android/email/Controller$7;

    invoke-direct {v5, p0, v0, v2, v3}, Lcom/android/email/Controller$7;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Account;J)V

    invoke-virtual {v5}, Lcom/android/email/Controller$7;->start()V

    goto :goto_1

    .line 592
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #sentboxId:J
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public sendPendingMessages(JLcom/android/email/Controller$Result;)V
    .locals 10
    .parameter "accountId"
    .parameter "callback"

    .prologue
    .line 803
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v8, 0x4

    invoke-static {v7, p1, p2, v8}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    .line 805
    .local v2, outboxId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v2, v7

    if-nez v7, :cond_0

    .line 832
    :goto_0
    return-void

    .line 810
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v6

    .line 811
    .local v6, service:Lcom/android/email/service/IEmailService;
    if-eqz v6, :cond_1

    .line 814
    :try_start_0
    invoke-interface {v6, v2, v3}, Lcom/android/email/service/IEmailService;->startSync(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    :catch_0
    move-exception v1

    .line 818
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "updateMailbox"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 822
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 824
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    const/4 v7, 0x5

    invoke-virtual {p0, p1, p2, v7}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v4

    .line 825
    .local v4, sentboxId:J
    new-instance v7, Lcom/android/email/Controller$8;

    invoke-direct {v7, p0, v0, v4, v5}, Lcom/android/email/Controller$8;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Account;J)V

    invoke-virtual {v7}, Lcom/android/email/Controller$8;->start()V

    goto :goto_0
.end method

.method public sendRecoveryPassword(Ljava/lang/String;)V
    .locals 11
    .parameter "password"

    .prologue
    const-string v10, "Email"

    .line 740
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

    .line 742
    iget-object v8, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.android.exchange"

    invoke-virtual {v8, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 744
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

    .line 746
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

    .line 748
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/email/Controller;->emailToAccountId(Ljava/lang/String;)I

    move-result v1

    .line 749
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

    .line 751
    if-lez v1, :cond_0

    .line 752
    int-to-long v8, v1

    invoke-direct {p0, v8, v9}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v7

    .line 754
    .local v7, service:Lcom/android/email/service/IEmailService;
    if-eqz v7, :cond_0

    .line 756
    int-to-long v8, v1

    :try_start_0
    invoke-interface {v7, v8, v9, p1}, Lcom/android/email/service/IEmailService;->sendRecoveryPassword(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .end local v7           #service:Lcom/android/email/service/IEmailService;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 758
    .restart local v7       #service:Lcom/android/email/service/IEmailService;
    :catch_0
    move-exception v3

    .line 759
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 764
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
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v9

    .line 239
    .local v9, service:Lcom/android/email/service/IEmailService;
    if-eqz v9, :cond_0

    .line 247
    const-string v0, "Controller"

    const-string v1, "SyncManager does auto refresh for exchange accounts. Mark MailService sync complete. Nothing done here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const/4 v0, -0x1

    invoke-direct {v1, v0}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    const/16 v6, 0x64

    move-object/from16 v0, p7

    move-wide v2, p1

    move-wide v4, p3

    move-wide v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/email/mail/MessagingException;JJIJ)V

    .line 263
    :goto_0
    return-void

    .line 256
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
    .line 187
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeEmailService(Landroid/content/Context;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailService;

    move-result-object v1

    .line 189
    .local v1, service:Lcom/android/email/service/IEmailService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/email/service/IEmailService;->setLogging(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 193
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

.method public setConversationRead(Ljava/lang/String;JZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v0, "setConversationRead: cursor should not be null"

    .line 2381
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2382
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "conversationId =? AND mailboxKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2386
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2387
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "setConversationRead: cursor should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2399
    :catch_0
    move-exception v1

    .line 2400
    :try_start_1
    const-string v1, "setConversationRead"

    const-string v2, "setConversationRead: cursor should not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2402
    if-eqz v0, :cond_1

    .line 2403
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2406
    :cond_1
    return-void

    .line 2388
    :cond_2
    const/4 v1, -0x1

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2389
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2390
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2391
    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2393
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2394
    const-string v3, "flagRead"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2395
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2402
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 2403
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2402
    :cond_3
    throw v1

    :cond_4
    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public setMessageFavorite(JZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2418
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2419
    const-string v1, "flagFavorite"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2420
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2422
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2425
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 2426
    if-eqz v0, :cond_0

    .line 2428
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 2429
    invoke-virtual {p0, v1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2430
    new-instance v1, Lcom/android/email/Controller$20;

    invoke-direct {v1, p0, v0}, Lcom/android/email/Controller$20;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v1}, Lcom/android/email/Controller$20;->start()V

    .line 2438
    :cond_0
    return-void
.end method

.method public setMessageFavorite(JZI)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2440
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2441
    const-string v1, "flagFavorite"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2442
    const-string v1, "flagStatus"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2443
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2445
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2448
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 2449
    if-eqz v0, :cond_0

    .line 2451
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 2452
    invoke-virtual {p0, v1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2453
    new-instance v1, Lcom/android/email/Controller$21;

    invoke-direct {v1, p0, v0}, Lcom/android/email/Controller$21;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v1}, Lcom/android/email/Controller$21;->start()V

    .line 2461
    :cond_0
    return-void
.end method

.method public setMessageRead(JZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2340
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2341
    const-string v1, "flagRead"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2342
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2344
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2347
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/email/Controller;->updateHistoryReadFlag(Landroid/content/Context;JZ)V

    .line 2351
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 2352
    if-eqz v0, :cond_0

    .line 2354
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 2355
    invoke-virtual {p0, v1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2356
    new-instance v1, Lcom/android/email/Controller$19;

    invoke-direct {v1, p0, v0}, Lcom/android/email/Controller$19;-><init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v1}, Lcom/android/email/Controller$19;->start()V

    .line 2364
    :cond_0
    return-void
.end method

.method public setOutOfOffice(JLcom/android/exchange/OoODataList;)V
    .locals 10
    .parameter "accountId"
    .parameter "data"

    .prologue
    .line 646
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 647
    .local v7, resolver:Landroid/content/ContentResolver;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 672
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v8

    .line 657
    .local v8, service:Lcom/android/email/service/IEmailService;
    if-eqz v8, :cond_1

    .line 661
    :try_start_0
    invoke-interface {v8, p1, p2, p3}, Lcom/android/email/service/IEmailService;->OoOffice(JLcom/android/exchange/OoODataList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v1

    goto :goto_0

    .line 666
    :cond_1
    iget-object v9, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v9

    .line 667
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

    .line 668
    .local v0, listener:Lcom/android/email/Controller$Result;
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const-string v2, "Operation not supported"

    invoke-direct {v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x64

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_1

    .line 670
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
    .line 147
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 148
    return-void
.end method

.method public setRemoteSync(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0, p1}, Lcom/android/email/MessagingController;->setRemoteSync(Z)V

    .line 2701
    return-void
.end method

.method public updateMailbox(JJLcom/android/email/Controller$Result;)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "callback"

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v7

    .line 275
    .local v7, service:Lcom/android/email/service/IEmailService;
    if-eqz v7, :cond_0

    .line 278
    :try_start_0
    invoke-interface {v7, p3, p4}, Lcom/android/email/service/IEmailService;->startSync(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v6

    .line 282
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

    .line 286
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
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/email/service/IEmailService;

    move-result-object v1

    .line 205
    .local v1, service:Lcom/android/email/service/IEmailService;
    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/email/service/IEmailService;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 212
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

    .line 216
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Lcom/android/email/Controller$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/Controller$1;-><init>(Lcom/android/email/Controller;J)V

    invoke-virtual {v2}, Lcom/android/email/Controller$1;->start()V

    goto :goto_0
.end method
