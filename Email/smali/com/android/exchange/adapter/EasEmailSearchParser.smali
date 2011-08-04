.class public Lcom/android/exchange/adapter/EasEmailSearchParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "EasEmailSearchParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFoldId:J

.field private msgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private res:Lcom/android/exchange/provider/EmailResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/exchange/adapter/EasEmailSearchParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/EasEmailSearchParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 2
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->msgs:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/android/exchange/provider/EmailResult;

    invoke-direct {v0}, Lcom/android/exchange/provider/EmailResult;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    .line 53
    return-void
.end method

.method private parsePropertiesTag(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 1
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/16 v0, 0x3cf

    invoke-static {p0, p1, v0}, Lcom/android/exchange/adapter/ParserUtility;->addMessageData(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/email/provider/EmailContent$Message;I)V

    .line 63
    iget-object v0, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method private parseResultTag()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v1}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    .line 68
    .local v1, msg:Lcom/android/email/provider/EmailContent$Message;
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v2, v1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 69
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 72
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 73
    :goto_0
    const/16 v2, 0x3ce

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EasEmailSearchParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 74
    iget v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->tag:I

    const/16 v3, 0x3d8

    if-ne v2, v3, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, longId:Ljava/lang/String;
    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    goto :goto_0

    .line 77
    .end local v0           #longId:Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->tag:I

    const/16 v3, 0x3cf

    if-ne v2, v3, :cond_1

    .line 78
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EasEmailSearchParser;->parsePropertiesTag(Lcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->skipTag()V

    goto :goto_0

    .line 87
    :cond_2
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    return-void
.end method

.method public commit()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const-string v7, "Failed at mContentResolver.applyBatch."

    .line 164
    const/4 v4, 0x0

    .line 165
    .local v4, notifyCount:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v7, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/EmailContent$Message;

    .line 167
    .local v3, msg:Lcom/android/email/provider/EmailContent$Message;
    iget-boolean v7, v3, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    if-nez v7, :cond_0

    .line 168
    add-int/lit8 v4, v4, 0x1

    .line 170
    :cond_0
    invoke-virtual {v3, v5}, Lcom/android/email/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    goto :goto_0

    .line 172
    .end local v3           #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_1
    iget-object v7, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v7}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 174
    :try_start_0
    iget-object v8, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v8}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v8

    if-eqz v8, :cond_3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_2
    :goto_1
    return-void

    .line 176
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "com.android.email.provider"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 177
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v10, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, " SyncKey saved as: "

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v10, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/EasEmailSearchParser;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :goto_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    if-lez v4, :cond_2

    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v0, cv:Landroid/content/ContentValues;
    const-string v7, "field"

    const-string v8, "newMessageCount"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v7, "add"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    sget-object v7, Lcom/android/email/provider/EmailContent$Account;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 189
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6, v0, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 178
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 179
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    sget-object v8, Lcom/android/exchange/adapter/EasEmailSearchParser;->TAG:Ljava/lang/String;

    const-string v9, "Failed at mContentResolver.applyBatch."

    invoke-static {v8, v9, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 183
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 180
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 181
    .local v1, e:Landroid/content/OperationApplicationException;
    :try_start_4
    sget-object v8, Lcom/android/exchange/adapter/EasEmailSearchParser;->TAG:Ljava/lang/String;

    const-string v9, "Failed at mContentResolver.applyBatch."

    invoke-static {v8, v9, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public parse()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/EasEmailSearchParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x3c5

    if-eq v2, v3, :cond_0

    .line 97
    new-instance v2, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v2

    .line 104
    .local v1, status:I
    :sswitch_0
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iput v6, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    .line 99
    .end local v1           #status:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/EasEmailSearchParser;->nextTag(I)I

    move-result v2

    if-eq v2, v7, :cond_4

    .line 100
    iget v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->tag:I

    const/16 v3, 0x3cc

    if-ne v2, v3, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->getValueInt()I

    move-result v1

    .line 102
    .restart local v1       #status:I
    sparse-switch v1, :sswitch_data_0

    .line 133
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_0

    .line 107
    :sswitch_1
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iput v7, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_0

    .line 110
    :sswitch_2
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v3, 0x9

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_0

    .line 113
    :sswitch_3
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v3, 0xb

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_0

    .line 116
    :sswitch_4
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v3, 0x8

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_0

    .line 119
    :sswitch_5
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v3, 0xa

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_0

    .line 122
    :sswitch_6
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v3, 0xc

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_0

    .line 125
    :sswitch_7
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iput v5, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_0

    .line 129
    :sswitch_8
    new-instance v2, Lcom/android/email/mail/DeviceAccessException;

    const v3, 0x40001

    const v4, 0x7f0802cb

    invoke-direct {v2, v3, v4}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    throw v2

    .line 138
    .end local v1           #status:I
    :cond_1
    iget v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->tag:I

    const/16 v3, 0x3ce

    if-ne v2, v3, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->parseResultTag()V

    goto :goto_0

    .line 141
    :cond_2
    iget v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->tag:I

    const/16 v3, 0x3cb

    if-ne v2, v3, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, range:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v6, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->startRange:I

    .line 145
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->endRange:I

    goto/16 :goto_0

    .line 148
    .end local v0           #range:[Ljava/lang/String;
    :cond_3
    iget v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->tag:I

    const/16 v3, 0x3d0

    if-ne v2, v3, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->getValueInt()I

    move-result v3

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->total:I

    goto/16 :goto_0

    .line 152
    :cond_4
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iget v2, v2, Lcom/android/exchange/provider/EmailResult;->total:I

    if-lez v2, :cond_5

    .line 153
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->commit()V

    .line 155
    :cond_5
    return v5

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_4
        0x9 -> :sswitch_2
        0xa -> :sswitch_5
        0xb -> :sswitch_3
        0xc -> :sswitch_6
        0x81 -> :sswitch_8
    .end sparse-switch
.end method

.method public parse_email_response()Lcom/android/exchange/provider/EmailResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->parse()Z

    .line 91
    iget-object v0, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    return-object v0
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    return-void
.end method

.method public setFoldId(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mFoldId:J

    .line 59
    return-void
.end method

.method public wipe()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "mailboxKey="

    .line 201
    sget-object v0, Lcom/android/exchange/adapter/EasEmailSearchParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fzhang mMailbox ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mFoldId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mFoldId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    return-void
.end method
