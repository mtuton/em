.class public Lcom/android/exchange/EasOutboxService;
.super Lcom/android/exchange/EasSyncService;
.source "EasOutboxService.java"


# static fields
.field public static final BODY_HTML_CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final BODY_SOURCE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mController:Lcom/android/email/Controller;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "htmlContent"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/EasOutboxService;->BODY_HTML_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 87
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 1
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 103
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasOutboxService;->mController:Lcom/android/email/Controller;

    .line 105
    return-void
.end method

.method private converToOpaqueLength(I)[B
    .locals 4
    .parameter "length"

    .prologue
    .line 818
    if-nez p1, :cond_0

    .line 819
    const/4 v2, 0x0

    .line 834
    :goto_0
    return-object v2

    .line 821
    :cond_0
    const/4 v2, 0x5

    new-array v1, v2, [B

    .line 826
    .local v1, opaqueLength:[B
    const/4 v2, 0x4

    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 827
    shr-int/lit8 p1, p1, 0x7

    .line 829
    const/4 v0, 0x3

    .local v0, i:I
    :goto_1
    if-lez p1, :cond_1

    if-ltz v0, :cond_1

    .line 830
    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 831
    shr-int/lit8 p1, p1, 0x7

    .line 829
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 834
    goto :goto_0
.end method

.method private sendCallback(JLjava/lang/String;I)V
    .locals 6
    .parameter "msgId"
    .parameter "subject"
    .parameter "status"

    .prologue
    .line 109
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

    .line 113
    :goto_0
    return-void

    .line 110
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
    .line 807
    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 808
    .local v0, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    .line 809
    iget-wide v1, v0, Lcom/android/email/provider/EmailContent;->mId:J

    iput-wide v1, p3, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 810
    iput-wide p1, p3, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 811
    invoke-virtual {p3, p0}, Lcom/android/email/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 813
    :cond_0
    return-void
.end method


# virtual methods
.method getNumbers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v6, toNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, numberTo:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 132
    .local v3, number:Ljava/lang/String;
    const-string v7, "MOBILE:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, numberParts:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v3, v4, v7

    .line 134
    const-string v7, "]"

    const-string v8, " "

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 136
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #numberParts:[Ljava/lang/String;
    :cond_0
    return-object v6
.end method

.method relaySms(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 11
    .parameter "msg"
    .parameter "mailbox"

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-wide v9, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v4, v9, v10}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v7

    .line 145
    .local v7, restoreBody:Lcom/android/email/provider/EmailContent$Body;
    if-eqz v7, :cond_0

    .line 146
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 147
    .local v0, sm:Landroid/telephony/SmsManager;
    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasOutboxService;->getNumbers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 148
    .local v8, toNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, v7, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v7, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 149
    iget-object v4, v7, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 150
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, number:Ljava/lang/String;
    move-object v4, v2

    move-object v5, v2

    .line 151
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 152
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending SMS to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v0           #sm:Landroid/telephony/SmsManager;
    .end local v1           #number:Ljava/lang/String;
    .end local v3           #parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #toNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasOutboxService;->setupService()Z

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    .line 700
    .local v15, cacheDir:Ljava/io/File;
    const-wide/16 v21, -0x1

    .line 702
    .local v21, msgId:J
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v5, :cond_2

    .line 788
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": sync finished. Outbox exit status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 789
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 793
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    :goto_0
    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 798
    :cond_1
    return-void

    .line 706
    :cond_2
    const/4 v14, 0x0

    .line 707
    .local v14, c:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v7, 0x4028333333333333L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_5

    .line 708
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "messageType"

    aput-object v6, v7, v5

    .line 709
    .local v7, MESSAGE_COLUMN_PROJECTION:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v11, v0

    iget-wide v11, v11, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v14

    .line 720
    .end local v7           #MESSAGE_COLUMN_PROJECTION:[Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v14, :cond_d

    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 721
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 722
    const-wide/16 v5, 0x0

    cmp-long v5, v21, v5

    if-eqz v5, :cond_3

    .line 723
    const/16 v23, 0x0

    .line 725
    .local v23, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v7, 0x4028333333333333L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_7

    .line 726
    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 727
    .local v18, flags:J
    const-wide/16 v5, 0x100

    and-long v5, v5, v18

    const-wide/16 v7, 0x100

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 728
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->sendSMS(J)I

    move-result v23

    .line 739
    .end local v18           #flags:J
    :goto_2
    const/16 v5, 0x16

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_8

    .line 740
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 755
    if-eqz v14, :cond_4

    .line 756
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 788
    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": sync finished. Outbox exit status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 789
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 793
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 713
    .end local v23           #result:I
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/email/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v11, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v5, 0x1

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v5

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v14

    goto/16 :goto_1

    .line 730
    .restart local v18       #flags:J
    .restart local v23       #result:I
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendMessage(Ljava/io/File;J)I

    move-result v23

    goto/16 :goto_2

    .line 733
    .end local v18           #flags:J
    :cond_7
    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendMessage(Ljava/io/File;J)I

    move-result v23

    goto/16 :goto_2

    .line 742
    :cond_8
    const/16 v5, 0x15

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_a

    .line 743
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 755
    if-eqz v14, :cond_9

    .line 756
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 788
    :cond_9
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": sync finished. Outbox exit status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 789
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 793
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 747
    :cond_a
    const/4 v5, 0x4

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 748
    const/4 v5, 0x4

    :try_start_7
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 755
    if-eqz v14, :cond_b

    .line 756
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 788
    :cond_b
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": sync finished. Outbox exit status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 789
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 793
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 755
    .end local v23           #result:I
    :catchall_0
    move-exception v5

    if-eqz v14, :cond_c

    .line 756
    :try_start_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 755
    :cond_c
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 770
    .end local v14           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 771
    .local v17, e:Lcom/android/email/mail/DeviceAccessException;
    :try_start_a
    const-string v5, "EasOutboxService"

    const-string v6, "Caught DeviceAccessException, to block the device"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/16 v23, 0x3

    .line 774
    .restart local v23       #result:I
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 775
    .local v16, cv:Landroid/content/ContentValues;
    const-string v5, "syncServerId"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-wide/from16 v2, v21

    move-object/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent;->mId:J

    sget v7, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v5, v6, v7}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(J)V

    .line 779
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move-object v3, v5

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 788
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": sync finished. Outbox exit status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 789
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 793
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 755
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v17           #e:Lcom/android/email/mail/DeviceAccessException;
    .end local v23           #result:I
    .restart local v14       #c:Landroid/database/Cursor;
    :cond_d
    if-eqz v14, :cond_e

    .line 756
    :try_start_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 758
    :cond_e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v8, 0x5

    invoke-static {v5, v6, v7, v8}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v20

    .line 761
    .local v20, mSentbox:Lcom/android/email/provider/EmailContent$Mailbox;
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_f

    .line 762
    const-string v5, "James"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSentbox = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 764
    :cond_f
    const-wide/16 v5, 0x3e8

    :try_start_c
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 767
    :goto_3
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mController:Lcom/android/email/Controller;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v5, v0

    iget-wide v9, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide v11, v0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/email/Controller;->updateMailbox(JJLcom/android/email/Controller$Result;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 788
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": sync finished. Outbox exit status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 789
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 793
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 782
    .end local v14           #c:Landroid/database/Cursor;
    .end local v20           #mSentbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :catch_1
    move-exception v5

    move-object/from16 v17, v5

    .line 783
    .local v17, e:Ljava/io/IOException;
    const/4 v5, 0x1

    :try_start_e
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 788
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": sync finished. Outbox exit status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 789
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 793
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 784
    .end local v17           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object/from16 v17, v5

    .line 785
    .local v17, e:Ljava/lang/Exception;
    :try_start_f
    const-string v5, "Exception caught in EasOutboxService"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 786
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 788
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": sync finished. Outbox exit status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 789
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 793
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto/16 :goto_0

    .line 788
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": sync finished. Outbox exit status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 789
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_10

    .line 793
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v7, v0

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 788
    :cond_10
    throw v5

    .line 765
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v20       #mSentbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :catch_3
    move-exception v5

    goto/16 :goto_3
.end method

.method sendMessage(Ljava/io/File;J)I
    .locals 63
    .parameter "cacheDir"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 249
    const/16 v55, 0x0

    .line 250
    .local v55, result:I
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 251
    const-string v5, "eas_"

    const-string v6, "tmp"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v60

    .line 253
    .local v60, tmpFile:Ljava/io/File;
    const-string v5, "eas_"

    const-string v6, "tmp"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v61

    .line 257
    .local v61, tmpFile2:Ljava/io/File;
    const/16 v36, 0x0

    .line 258
    .local v36, fileStream:Ljava/io/FileOutputStream;
    const/16 v41, 0x0

    .line 260
    .local v41, inputStream:Ljava/io/FileInputStream;
    const/16 v44, 0x0

    .line 263
    .local v44, isSourceMessageHtml:Z
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

    move-result-object v31

    .line 265
    .local v31, cols:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 266
    .local v13, itemId:Ljava/lang/String;
    const/4 v14, 0x0

    .line 267
    .local v14, collectionId:Ljava/lang/String;
    const/16 v17, 0x0

    .line 268
    .local v17, reply:Z
    const/16 v38, 0x0

    .line 269
    .local v38, forward:Z
    const-wide/16 v52, 0x0

    .line 270
    .local v52, refId:J
    const/16 v59, 0x0

    .line 272
    .local v59, subject:Ljava/lang/String;
    if-eqz v31, :cond_2

    .line 273
    const/4 v5, 0x0

    aget-object v5, v31, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 274
    .local v37, flags:I
    const/4 v5, 0x1

    aget-object v59, v31, v5

    .line 276
    and-int/lit8 v5, v37, 0x1

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 277
    :goto_0
    and-int/lit8 v5, v37, 0x2

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move/from16 v38, v5

    .line 279
    :goto_1
    if-nez v17, :cond_0

    if-eqz v38, :cond_2

    .line 281
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

    move-result-object v31

    .line 283
    if-eqz v31, :cond_2

    const/4 v5, 0x0

    aget-object v5, v31, v5

    if-eqz v5, :cond_2

    .line 284
    const/4 v5, 0x0

    aget-object v5, v31, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v52

    .line 309
    if-nez v17, :cond_1

    if-eqz v38, :cond_2

    .line 311
    :cond_1
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

    move-wide/from16 v2, v52

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->getRowColumns(Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 313
    if-eqz v31, :cond_2

    .line 314
    const/4 v5, 0x0

    aget-object v13, v31, v5

    .line 315
    const/4 v5, 0x1

    aget-object v5, v31, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    .line 317
    .local v27, boxId:J
    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "serverId"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v27

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->getRowColumns(Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 318
    if-eqz v31, :cond_2

    .line 319
    const/4 v5, 0x0

    aget-object v14, v31, v5

    .line 329
    .end local v27           #boxId:J
    .end local v37           #flags:I
    :cond_2
    const/16 v58, 0x0

    .line 330
    .local v58, smimeFlags:I
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "smimeFlags"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v52

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->getRowColumns(Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 331
    if-eqz v31, :cond_3

    .line 332
    const/4 v5, 0x0

    aget-object v5, v31, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 338
    :cond_3
    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    if-nez v58, :cond_6

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 343
    .local v16, smartSend:Z
    :goto_2
    new-instance v8, Ljava/io/FileOutputStream;

    move-object v0, v8

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 345
    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .local v8, fileStream:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Lcom/android/email/mail/transport/Rfc822Output;->setIsExchangeAccount(Z)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    if-nez v16, :cond_7

    const/4 v6, 0x1

    move v9, v6

    :goto_3
    const/4 v10, 0x1

    move-wide/from16 v6, p2

    invoke-static/range {v5 .. v10}, Lcom/android/email/mail/transport/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "protocol version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 353
    const/4 v9, 0x0

    .line 354
    .local v9, rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v10, 0x402c

    cmpl-double v5, v5, v10

    if-ltz v5, :cond_10

    .line 356
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 357
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->length()J

    move-result-wide v47

    .line 358
    .local v47, mimeSize:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimesize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 360
    new-instance v9, Lcom/android/exchange/adapter/ComposeMailAdapter;

    .end local v9           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v10, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v9 .. v17}, Lcom/android/exchange/adapter/ComposeMailAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 363
    .restart local v9       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    new-instance v56, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v56 .. v56}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 364
    .local v56, serializer:Lcom/android/exchange/adapter/Serializer;
    move-object v0, v9

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    .line 365
    invoke-virtual/range {v56 .. v56}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 367
    new-instance v51, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    move-object/from16 v0, v51

    move-object/from16 v1, v61

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .local v51, randFile:Ljava/io/RandomAccessFile;
    invoke-virtual/range {v56 .. v56}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v62

    .line 370
    .local v62, wbxmlData:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wbxml size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v62

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 371
    const/16 v39, 0x0

    .local v39, i:I
    :goto_4
    move-object/from16 v0, v62

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    move/from16 v0, v39

    move v1, v5

    if-ge v0, v1, :cond_8

    .line 372
    aget-byte v5, v62, v39

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 371
    add-int/lit8 v39, v39, 0x1

    goto :goto_4

    .line 276
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v9           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v16           #smartSend:Z
    .end local v39           #i:I
    .end local v47           #mimeSize:J
    .end local v51           #randFile:Ljava/io/RandomAccessFile;
    .end local v56           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v58           #smimeFlags:I
    .end local v62           #wbxmlData:[B
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    .restart local v37       #flags:I
    :cond_4
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_0

    .line 277
    :cond_5
    const/4 v5, 0x0

    move/from16 v38, v5

    goto/16 :goto_1

    .line 338
    .end local v37           #flags:I
    .restart local v58       #smimeFlags:I
    :cond_6
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_2

    .line 346
    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    .restart local v16       #smartSend:Z
    :cond_7
    const/4 v6, 0x0

    move v9, v6

    goto/16 :goto_3

    .line 375
    .restart local v9       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v39       #i:I
    .restart local v47       #mimeSize:J
    .restart local v51       #randFile:Ljava/io/RandomAccessFile;
    .restart local v56       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v62       #wbxmlData:[B
    :cond_8
    const/16 v5, 0xc3

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 376
    move-wide/from16 v0, v47

    long-to-int v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/exchange/EasOutboxService;->converToOpaqueLength(I)[B

    move-result-object v49

    .line 377
    .local v49, opLength:[B
    const/16 v50, 0x0

    .line 378
    .local v50, opbytes:I
    const/16 v39, 0x0

    :goto_5
    const/4 v5, 0x5

    move/from16 v0, v39

    move v1, v5

    if-ge v0, v1, :cond_a

    .line 379
    aget-byte v5, v49, v39

    if-eqz v5, :cond_9

    .line 380
    aget-byte v5, v49, v39

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 381
    add-int/lit8 v50, v50, 0x1

    .line 378
    :cond_9
    add-int/lit8 v39, v39, 0x1

    goto :goto_5

    .line 387
    :cond_a
    new-instance v35, Ljava/io/FileInputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 388
    .local v35, file:Ljava/io/FileInputStream;
    if-eqz v35, :cond_e

    .line 389
    const/16 v57, -0x1

    .line 390
    .local v57, singleByte:I
    :goto_6
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileInputStream;->read()I

    move-result v57

    const/4 v5, -0x1

    move/from16 v0, v57

    move v1, v5

    if-eq v0, v1, :cond_e

    .line 391
    move-object/from16 v0, v51

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_6

    .line 653
    .end local v9           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v35           #file:Ljava/io/FileInputStream;
    .end local v39           #i:I
    .end local v47           #mimeSize:J
    .end local v49           #opLength:[B
    .end local v50           #opbytes:I
    .end local v51           #randFile:Ljava/io/RandomAccessFile;
    .end local v56           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v57           #singleByte:I
    .end local v62           #wbxmlData:[B
    :catch_0
    move-exception v5

    move-object/from16 v33, v5

    .line 654
    .end local v13           #itemId:Ljava/lang/String;
    .end local v14           #collectionId:Ljava/lang/String;
    .end local v16           #smartSend:Z
    .end local v17           #reply:Z
    .end local v31           #cols:[Ljava/lang/String;
    .end local v38           #forward:Z
    .end local v52           #refId:J
    .end local v58           #smimeFlags:I
    .end local v59           #subject:Ljava/lang/String;
    .local v33, e:Lcom/android/email/mail/DeviceAccessException;
    :goto_7
    :try_start_2
    throw v33
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    .end local v33           #e:Lcom/android/email/mail/DeviceAccessException;
    :catchall_0
    move-exception v5

    :goto_8
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 681
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->delete()Z

    .line 684
    :cond_b
    if-eqz v8, :cond_c

    .line 685
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 687
    :cond_c
    if-eqz v41, :cond_d

    .line 688
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileInputStream;->close()V

    .line 680
    :cond_d
    throw v5

    .line 394
    .restart local v9       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v13       #itemId:Ljava/lang/String;
    .restart local v14       #collectionId:Ljava/lang/String;
    .restart local v16       #smartSend:Z
    .restart local v17       #reply:Z
    .restart local v31       #cols:[Ljava/lang/String;
    .restart local v35       #file:Ljava/io/FileInputStream;
    .restart local v38       #forward:Z
    .restart local v39       #i:I
    .restart local v47       #mimeSize:J
    .restart local v49       #opLength:[B
    .restart local v50       #opbytes:I
    .restart local v51       #randFile:Ljava/io/RandomAccessFile;
    .restart local v52       #refId:J
    .restart local v56       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v58       #smimeFlags:I
    .restart local v59       #subject:Ljava/lang/String;
    .restart local v62       #wbxmlData:[B
    :cond_e
    :try_start_3
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileInputStream;->close()V

    .line 395
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 396
    const/4 v8, 0x0

    .line 397
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 398
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->delete()Z

    .line 400
    :cond_f
    move-object/from16 v60, v61

    .line 404
    move-object/from16 v0, v62

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    add-int v5, v5, v50

    int-to-long v5, v5

    add-long v5, v5, v47

    move-object/from16 v0, v51

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 407
    move-object/from16 v0, v62

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    aget-byte v5, v62, v5

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 408
    move-object/from16 v0, v62

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-byte v5, v62, v5

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 409
    invoke-virtual/range {v51 .. v51}, Ljava/io/RandomAccessFile;->close()V

    .line 417
    .end local v35           #file:Ljava/io/FileInputStream;
    .end local v39           #i:I
    .end local v47           #mimeSize:J
    .end local v49           #opLength:[B
    .end local v50           #opbytes:I
    .end local v51           #randFile:Ljava/io/RandomAccessFile;
    .end local v56           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v62           #wbxmlData:[B
    :cond_10
    new-instance v42, Ljava/io/FileInputStream;

    move-object/from16 v0, v42

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 419
    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .local v42, inputStream:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v40, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-wide v2, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 423
    .local v40, inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v29, "SendMail&SaveInSent=T"

    .line 424
    .local v29, cmd:Ljava/lang/String;
    if-eqz v16, :cond_11

    .line 425
    if-eqz v17, :cond_18

    const-string v5, "SmartReply"

    move-object/from16 v29, v5

    .line 426
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ItemId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&CollectionId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&SaveInSent=T"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 428
    :cond_11
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send cmd: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 430
    const v5, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v40

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v54

    .line 434
    .local v54, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v54 .. v54}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    .line 436
    .local v30, code:I
    const-string v5, "sendMessage(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v10, 0x402c

    cmpl-double v5, v5, v10

    if-ltz v5, :cond_13

    .line 442
    invoke-interface/range {v54 .. v54}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v34

    .line 443
    .local v34, entity:Lorg/apache/http/HttpEntity;
    const/16 v30, 0xc8

    .line 444
    invoke-interface/range {v34 .. v34}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v45, v0

    .line 445
    .local v45, len:I
    if-eqz v45, :cond_12

    .line 446
    invoke-interface/range {v34 .. v34}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v43

    .line 447
    .local v43, is:Ljava/io/InputStream;
    if-eqz v43, :cond_12

    .line 448
    move-object v0, v9

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->setHttpCode(I)V

    .line 449
    move-object v0, v9

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->parse(Ljava/io/InputStream;)Z

    .line 450
    invoke-virtual {v9}, Lcom/android/exchange/adapter/ComposeMailAdapter;->getHttpCode()I

    move-result v30

    .line 455
    .end local v43           #is:Ljava/io/InputStream;
    :cond_12
    const/16 v5, 0xc8

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_13

    const-wide/16 v5, 0x0

    cmp-long v5, v52, v5

    if-lez v5, :cond_13

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v52

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v46

    .line 457
    .local v46, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v46, :cond_13

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v5, v0

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-lez v5, :cond_13

    .line 458
    .end local v9           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v5, v0

    const/4 v7, 0x4

    invoke-static {v5, v6, v7}, Lcom/android/exchange/SyncManager;->serviceRequest(JI)V

    .line 464
    .end local v34           #entity:Lorg/apache/http/HttpEntity;
    .end local v45           #len:I
    .end local v46           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_13
    const/16 v5, 0xc8

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_19

    .line 465
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Deleting message..."

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 468
    const/16 v55, 0x0

    .line 469
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-object/from16 v3, v59

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v41, v42

    .line 680
    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    :cond_14
    :goto_a
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 681
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->delete()Z

    .line 684
    :cond_15
    if-eqz v8, :cond_16

    .line 685
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 687
    :cond_16
    if-eqz v41, :cond_17

    .line 688
    .end local v13           #itemId:Ljava/lang/String;
    .end local v14           #collectionId:Ljava/lang/String;
    .end local v16           #smartSend:Z
    .end local v17           #reply:Z
    .end local v29           #cmd:Ljava/lang/String;
    .end local v30           #code:I
    .end local v31           #cols:[Ljava/lang/String;
    .end local v38           #forward:Z
    .end local v40           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v52           #refId:J
    .end local v54           #resp:Lorg/apache/http/HttpResponse;
    .end local v58           #smimeFlags:I
    .end local v59           #subject:Ljava/lang/String;
    :goto_b
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileInputStream;->close()V

    .line 693
    :cond_17
    return v55

    .line 425
    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v9       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v13       #itemId:Ljava/lang/String;
    .restart local v14       #collectionId:Ljava/lang/String;
    .restart local v16       #smartSend:Z
    .restart local v17       #reply:Z
    .restart local v29       #cmd:Ljava/lang/String;
    .restart local v31       #cols:[Ljava/lang/String;
    .restart local v38       #forward:Z
    .restart local v40       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    .restart local v52       #refId:J
    .restart local v58       #smimeFlags:I
    .restart local v59       #subject:Ljava/lang/String;
    :cond_18
    :try_start_5
    const-string v5, "SmartForward"

    move-object/from16 v29, v5

    goto/16 :goto_9

    .line 472
    .end local v9           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v30       #code:I
    .restart local v54       #resp:Lorg/apache/http/HttpResponse;
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->isProvisionError(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 473
    const/16 v55, 0x4

    .line 474
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    move-object/from16 v41, v42

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    goto :goto_a

    .line 479
    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    :cond_1a
    const/16 v55, 0x15

    .line 480
    const/16 v5, 0x1f4

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_28

    if-eqz v16, :cond_28

    .line 482
    const-string v5, "EasOutboxService"

    const-string v6, "Smart send fail.Attemption normal send"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 485
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->delete()Z

    .line 488
    :cond_1b
    if-eqz v8, :cond_27

    .line 490
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 491
    const/4 v8, 0x0

    move-object/from16 v36, v8

    .line 493
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    :goto_c
    if-eqz v42, :cond_1c

    .line 495
    :try_start_6
    invoke-virtual/range {v42 .. v42}, Ljava/io/FileInputStream;->close()V

    .line 496
    const/16 v41, 0x0

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v42, v41

    .line 525
    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    :cond_1c
    new-instance v8, Ljava/io/FileOutputStream;

    move-object v0, v8

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 526
    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-wide/from16 v19, p2

    move-object/from16 v21, v8

    invoke-static/range {v18 .. v23}, Lcom/android/email/mail/transport/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "protocol version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 532
    const/16 v18, 0x0

    .line 534
    .local v18, cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v9, 0x402c

    cmpl-double v5, v5, v9

    if-ltz v5, :cond_20

    .line 536
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 537
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->length()J

    move-result-wide v47

    .line 538
    .restart local v47       #mimeSize:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimesize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 540
    new-instance v18, Lcom/android/exchange/adapter/ComposeMailAdapter;

    .end local v18           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v19, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v20, p0

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v26, v17

    invoke-direct/range {v18 .. v26}, Lcom/android/exchange/adapter/ComposeMailAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 544
    .restart local v18       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    new-instance v56, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v56 .. v56}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 545
    .restart local v56       #serializer:Lcom/android/exchange/adapter/Serializer;
    move-object/from16 v0, v18

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    .line 546
    invoke-virtual/range {v56 .. v56}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 548
    new-instance v51, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    move-object/from16 v0, v51

    move-object/from16 v1, v60

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 551
    .restart local v51       #randFile:Ljava/io/RandomAccessFile;
    invoke-virtual/range {v56 .. v56}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v62

    .line 552
    .restart local v62       #wbxmlData:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wbxml size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v62

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 554
    const/16 v39, 0x0

    .restart local v39       #i:I
    :goto_d
    move-object/from16 v0, v62

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    move/from16 v0, v39

    move v1, v5

    if-ge v0, v1, :cond_1d

    .line 555
    aget-byte v5, v62, v39

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 554
    add-int/lit8 v39, v39, 0x1

    goto :goto_d

    .line 558
    :cond_1d
    const/16 v5, 0xc3

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 559
    move-wide/from16 v0, v47

    long-to-int v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/exchange/EasOutboxService;->converToOpaqueLength(I)[B

    move-result-object v49

    .line 560
    .restart local v49       #opLength:[B
    const/16 v50, 0x0

    .line 561
    .restart local v50       #opbytes:I
    const/16 v39, 0x0

    :goto_e
    const/4 v5, 0x5

    move/from16 v0, v39

    move v1, v5

    if-ge v0, v1, :cond_1f

    .line 562
    aget-byte v5, v49, v39

    if-eqz v5, :cond_1e

    .line 563
    aget-byte v5, v49, v39

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 564
    add-int/lit8 v50, v50, 0x1

    .line 561
    :cond_1e
    add-int/lit8 v39, v39, 0x1

    goto :goto_e

    .line 567
    :cond_1f
    move-object/from16 v0, v62

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    add-int v5, v5, v50

    int-to-long v5, v5

    add-long v5, v5, v47

    move-object/from16 v0, v51

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 571
    move-object/from16 v0, v62

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    aget-byte v5, v62, v5

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 572
    move-object/from16 v0, v62

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-byte v5, v62, v5

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 573
    invoke-virtual/range {v51 .. v51}, Ljava/io/RandomAccessFile;->close()V

    .line 580
    .end local v39           #i:I
    .end local v47           #mimeSize:J
    .end local v49           #opLength:[B
    .end local v50           #opbytes:I
    .end local v51           #randFile:Ljava/io/RandomAccessFile;
    .end local v56           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v62           #wbxmlData:[B
    :cond_20
    new-instance v41, Ljava/io/FileInputStream;

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 581
    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    :try_start_8
    new-instance v40, Lorg/apache/http/entity/InputStreamEntity;

    .end local v40           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-wide v2, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 585
    .restart local v40       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v29, "SendMail&SaveInSent=T"

    .line 587
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send cmd: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 588
    const v5, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v40

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v54

    .line 590
    invoke-interface/range {v54 .. v54}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v9, 0x402c

    cmpl-double v5, v5, v9

    if-ltz v5, :cond_22

    .line 599
    invoke-interface/range {v54 .. v54}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v34

    .line 600
    .restart local v34       #entity:Lorg/apache/http/HttpEntity;
    const/16 v30, 0xc8

    .line 601
    invoke-interface/range {v34 .. v34}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v45, v0

    .line 602
    .restart local v45       #len:I
    if-eqz v45, :cond_21

    .line 605
    invoke-interface/range {v34 .. v34}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v43

    .line 609
    .restart local v43       #is:Ljava/io/InputStream;
    if-eqz v43, :cond_21

    .line 610
    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->setHttpCode(I)V

    .line 611
    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->parse(Ljava/io/InputStream;)Z

    .line 612
    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/ComposeMailAdapter;->getHttpCode()I

    move-result v30

    .line 616
    .end local v43           #is:Ljava/io/InputStream;
    :cond_21
    const/16 v5, 0xc8

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_22

    const-wide/16 v5, 0x0

    cmp-long v5, v52, v5

    if-lez v5, :cond_22

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v52

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v46

    .line 619
    .restart local v46       #message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v46, :cond_22

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v5, v0

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-lez v5, :cond_22

    .line 620
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v5, v0

    const/4 v7, 0x4

    invoke-static {v5, v6, v7}, Lcom/android/exchange/SyncManager;->serviceRequest(JI)V

    .line 628
    .end local v34           #entity:Lorg/apache/http/HttpEntity;
    .end local v45           #len:I
    .end local v46           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_22
    const/16 v5, 0xc8

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_23

    .line 629
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Deleting message..."

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 632
    const/16 v55, 0x0

    .line 633
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-object/from16 v3, v59

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 636
    .end local v18           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    :cond_23
    :goto_f
    if-eqz v55, :cond_14

    .line 638
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 639
    .local v32, cv:Landroid/content/ContentValues;
    const-string v5, "syncServerId"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v32

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 644
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->isAuthError(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 645
    const/16 v55, 0x16

    .line 649
    :goto_10
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_a

    .line 657
    .end local v29           #cmd:Ljava/lang/String;
    .end local v30           #code:I
    .end local v32           #cv:Landroid/content/ContentValues;
    .end local v40           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v54           #resp:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v5

    move-object/from16 v33, v5

    .line 660
    .end local v13           #itemId:Ljava/lang/String;
    .end local v14           #collectionId:Ljava/lang/String;
    .end local v16           #smartSend:Z
    .end local v17           #reply:Z
    .end local v31           #cols:[Ljava/lang/String;
    .end local v38           #forward:Z
    .end local v52           #refId:J
    .end local v58           #smimeFlags:I
    .end local v59           #subject:Ljava/lang/String;
    .local v33, e:Ljava/io/IOException;
    :goto_11
    const/4 v5, 0x1

    :try_start_9
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caught IOException: Message:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v33 .. v33}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 662
    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 663
    throw v33

    .line 647
    .end local v33           #e:Ljava/io/IOException;
    .restart local v13       #itemId:Ljava/lang/String;
    .restart local v14       #collectionId:Ljava/lang/String;
    .restart local v16       #smartSend:Z
    .restart local v17       #reply:Z
    .restart local v29       #cmd:Ljava/lang/String;
    .restart local v30       #code:I
    .restart local v31       #cols:[Ljava/lang/String;
    .restart local v32       #cv:Landroid/content/ContentValues;
    .restart local v38       #forward:Z
    .restart local v40       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v52       #refId:J
    .restart local v54       #resp:Lorg/apache/http/HttpResponse;
    .restart local v58       #smimeFlags:I
    .restart local v59       #subject:Ljava/lang/String;
    :cond_24
    const/16 v55, 0x0

    goto :goto_10

    .line 666
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v13           #itemId:Ljava/lang/String;
    .end local v14           #collectionId:Ljava/lang/String;
    .end local v16           #smartSend:Z
    .end local v17           #reply:Z
    .end local v29           #cmd:Ljava/lang/String;
    .end local v30           #code:I
    .end local v31           #cols:[Ljava/lang/String;
    .end local v32           #cv:Landroid/content/ContentValues;
    .end local v38           #forward:Z
    .end local v40           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v52           #refId:J
    .end local v54           #resp:Lorg/apache/http/HttpResponse;
    .end local v58           #smimeFlags:I
    .end local v59           #subject:Ljava/lang/String;
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    move-object/from16 v33, v5

    move-object/from16 v8, v36

    .line 667
    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    .local v33, e:Ljava/lang/Exception;
    :goto_12
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception caught in sendMessage()"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 669
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 670
    .restart local v32       #cv:Landroid/content/ContentValues;
    const-string v5, "syncServerId"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v32

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 673
    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 675
    const/16 v55, 0x0

    .line 680
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 681
    invoke-virtual/range {v60 .. v60}, Ljava/io/File;->delete()Z

    .line 684
    :cond_25
    if-eqz v8, :cond_26

    .line 685
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 687
    :cond_26
    if-eqz v41, :cond_17

    goto/16 :goto_b

    .line 680
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v32           #cv:Landroid/content/ContentValues;
    .end local v33           #e:Ljava/lang/Exception;
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object/from16 v8, v36

    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v13       #itemId:Ljava/lang/String;
    .restart local v14       #collectionId:Ljava/lang/String;
    .restart local v16       #smartSend:Z
    .restart local v17       #reply:Z
    .restart local v31       #cols:[Ljava/lang/String;
    .restart local v38       #forward:Z
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    .restart local v52       #refId:J
    .restart local v58       #smimeFlags:I
    .restart local v59       #subject:Ljava/lang/String;
    :catchall_2
    move-exception v5

    move-object/from16 v41, v42

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v29       #cmd:Ljava/lang/String;
    .restart local v30       #code:I
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    .restart local v40       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    .restart local v54       #resp:Lorg/apache/http/HttpResponse;
    :catchall_3
    move-exception v5

    move-object/from16 v41, v42

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v8, v36

    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .line 666
    .end local v29           #cmd:Ljava/lang/String;
    .end local v30           #code:I
    .end local v40           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v54           #resp:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v5

    move-object/from16 v33, v5

    goto :goto_12

    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object/from16 v33, v5

    move-object/from16 v41, v42

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    goto :goto_12

    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v29       #cmd:Ljava/lang/String;
    .restart local v30       #code:I
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    .restart local v40       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    .restart local v54       #resp:Lorg/apache/http/HttpResponse;
    :catch_5
    move-exception v5

    move-object/from16 v33, v5

    move-object/from16 v41, v42

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v8, v36

    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_12

    .line 657
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v13           #itemId:Ljava/lang/String;
    .end local v14           #collectionId:Ljava/lang/String;
    .end local v16           #smartSend:Z
    .end local v17           #reply:Z
    .end local v29           #cmd:Ljava/lang/String;
    .end local v30           #code:I
    .end local v31           #cols:[Ljava/lang/String;
    .end local v38           #forward:Z
    .end local v40           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v52           #refId:J
    .end local v54           #resp:Lorg/apache/http/HttpResponse;
    .end local v58           #smimeFlags:I
    .end local v59           #subject:Ljava/lang/String;
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v5

    move-object/from16 v33, v5

    move-object/from16 v8, v36

    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_11

    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v13       #itemId:Ljava/lang/String;
    .restart local v14       #collectionId:Ljava/lang/String;
    .restart local v16       #smartSend:Z
    .restart local v17       #reply:Z
    .restart local v31       #cols:[Ljava/lang/String;
    .restart local v38       #forward:Z
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    .restart local v52       #refId:J
    .restart local v58       #smimeFlags:I
    .restart local v59       #subject:Ljava/lang/String;
    :catch_7
    move-exception v5

    move-object/from16 v33, v5

    move-object/from16 v41, v42

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_11

    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v29       #cmd:Ljava/lang/String;
    .restart local v30       #code:I
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    .restart local v40       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    .restart local v54       #resp:Lorg/apache/http/HttpResponse;
    :catch_8
    move-exception v5

    move-object/from16 v33, v5

    move-object/from16 v41, v42

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v8, v36

    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_11

    .line 653
    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v13           #itemId:Ljava/lang/String;
    .end local v14           #collectionId:Ljava/lang/String;
    .end local v16           #smartSend:Z
    .end local v17           #reply:Z
    .end local v29           #cmd:Ljava/lang/String;
    .end local v30           #code:I
    .end local v31           #cols:[Ljava/lang/String;
    .end local v38           #forward:Z
    .end local v40           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v52           #refId:J
    .end local v54           #resp:Lorg/apache/http/HttpResponse;
    .end local v58           #smimeFlags:I
    .end local v59           #subject:Ljava/lang/String;
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v5

    move-object/from16 v33, v5

    move-object/from16 v8, v36

    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v13       #itemId:Ljava/lang/String;
    .restart local v14       #collectionId:Ljava/lang/String;
    .restart local v16       #smartSend:Z
    .restart local v17       #reply:Z
    .restart local v31       #cols:[Ljava/lang/String;
    .restart local v38       #forward:Z
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    .restart local v52       #refId:J
    .restart local v58       #smimeFlags:I
    .restart local v59       #subject:Ljava/lang/String;
    :catch_a
    move-exception v5

    move-object/from16 v33, v5

    move-object/from16 v41, v42

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v29       #cmd:Ljava/lang/String;
    .restart local v30       #code:I
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    .restart local v40       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    .restart local v54       #resp:Lorg/apache/http/HttpResponse;
    :catch_b
    move-exception v5

    move-object/from16 v33, v5

    move-object/from16 v41, v42

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v8, v36

    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .end local v41           #inputStream:Ljava/io/FileInputStream;
    .restart local v42       #inputStream:Ljava/io/FileInputStream;
    :cond_27
    move-object/from16 v36, v8

    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    .restart local v36       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .end local v36           #fileStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileStream:Ljava/io/FileOutputStream;
    :cond_28
    move-object/from16 v41, v42

    .end local v42           #inputStream:Ljava/io/FileInputStream;
    .restart local v41       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_f
.end method

.method sendSMS(J)I
    .locals 20
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v14, 0x0

    .line 162
    .local v14, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v11

    .line 163
    .local v11, msg:Lcom/android/email/provider/EmailContent$Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v11

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v10

    .line 165
    .local v10, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v11, :cond_1

    if-eqz v10, :cond_1

    .line 169
    new-instance v15, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v15}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 171
    .local v15, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    const/16 v17, 0x1c

    invoke-virtual/range {v16 .. v17}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    const/16 v17, 0xf

    invoke-virtual/range {v16 .. v17}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    const/16 v17, 0xb

    move-object v0, v10

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    const/16 v17, 0x12

    move-object v0, v10

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    const/16 v17, 0x1e

    const-string v18, "0"

    invoke-virtual/range {v16 .. v18}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    const/16 v17, 0x16

    invoke-virtual/range {v16 .. v17}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    const/16 v17, 0x9

    invoke-virtual/range {v16 .. v17}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    const/16 v17, 0xd

    move-object v0, v11

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 187
    :try_start_0
    const-string v16, "Sync"

    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 189
    .local v13, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 190
    .local v6, code:I
    const/16 v16, 0xc8

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 192
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 193
    .local v9, is:Ljava/io/InputStream;
    new-instance v5, Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object v0, v5

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 195
    .local v5, adapter:Lcom/android/exchange/adapter/EmailSyncAdapter;
    invoke-virtual {v5, v9}, Lcom/android/exchange/adapter/EmailSyncAdapter;->parse(Ljava/io/InputStream;)Z

    move-result v12

    .line 197
    .local v12, res:Z
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->relaySms(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 199
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "Deleting message..."

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    const/4 v14, 0x0

    .line 203
    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 207
    .end local v5           #adapter:Lcom/android/exchange/adapter/EmailSyncAdapter;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v12           #res:Z
    :cond_0
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->isProvisionError(I)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 208
    const/4 v14, 0x4

    .line 209
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v16

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 235
    .end local v6           #code:I
    .end local v13           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    :cond_1
    :goto_0
    return v14

    .line 210
    .restart local v6       #code:I
    .restart local v13       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_2
    const/16 v16, 0x191

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 211
    const/4 v14, 0x2

    .line 212
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v16

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 220
    .end local v6           #code:I
    .end local v13           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v16

    move-object/from16 v8, v16

    .line 221
    .local v8, e:Ljava/io/IOException;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SMS Sending to: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v11

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " failed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 222
    const/16 v16, 0x0

    const/16 v17, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 223
    throw v8

    .line 215
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #code:I
    .restart local v13       #resp:Lorg/apache/http/HttpResponse;
    :cond_3
    const/4 v14, 0x0

    .line 216
    const/16 v16, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v16

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 224
    .end local v6           #code:I
    .end local v13           #resp:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v16

    move-object/from16 v8, v16

    .line 225
    .local v8, e:Ljava/lang/Exception;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v7, cv:Landroid/content/ContentValues;
    const-string v16, "syncServerId"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-wide/from16 v2, p1

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 229
    const/16 v16, 0x0

    const/16 v17, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 231
    const/4 v14, 0x0

    goto/16 :goto_0
.end method
