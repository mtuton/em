.class public abstract Lcom/android/exchange/adapter/AbstractSyncParser;
.super Lcom/android/exchange/adapter/Parser;
.source "AbstractSyncParser.java"


# static fields
.field static final logTAG:Ljava/lang/String; = "AbstractSyncParser"


# instance fields
.field protected mAccount:Lcom/android/email/provider/EmailContent$Account;

.field protected mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field private mLooping:Z

.field protected mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

.field protected mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 1
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    iput-object p2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    .line 58
    iget-object v0, p2, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 59
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 63
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 64
    return-void
.end method


# virtual methods
.method public abstract commandsParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    return v0
.end method

.method public parse()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v4, 0x0

    .line 102
    .local v4, moreAvailable:Z
    const/4 v6, 0x0

    .line 103
    .local v6, newSyncKey:Z
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v2, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 104
    .local v2, interval:I
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 106
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    .line 107
    new-instance v9, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v9, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v9

    .line 110
    :cond_0
    const/4 v3, 0x0

    .line 111
    .local v3, mailboxUpdated:Z
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v1, cv:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_10

    .line 115
    iget v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v10, 0x1c

    if-eq v9, v10, :cond_1

    .line 117
    iget v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v10, 0xe

    if-ne v9, v10, :cond_9

    .line 119
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v8

    .line 120
    .local v8, status:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 124
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v7, sb:Ljava/lang/StringBuffer;
    const-string v9, "Sync failed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 126
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 130
    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 132
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    const-string v10, "0"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 135
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    const/4 v10, -0x2

    iput v10, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 136
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v10, "Bad sync key; RESET and delete data"

    invoke-virtual {v9, v10}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 140
    const-string v9, "AbstractSyncParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mailbox Id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v11, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v9, "AbstractSyncParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mailbox Type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v11, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v9, "AbstractSyncParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Account Id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v11, v11, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->wipe()V

    .line 154
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad Sync Key for mailbox type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v10, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_2
    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    .line 160
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_0

    .line 165
    :cond_3
    const/16 v9, 0xc

    if-ne v8, v9, :cond_4

    .line 166
    const-string v9, "AbstractSyncParser"

    const-string v10, "protocol_12.1:status[12] - folder hierarchy has changed"

    invoke-static {v9, v10}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_0

    .line 169
    :cond_4
    const/16 v9, 0xd

    if-ne v8, v9, :cond_5

    .line 170
    const-string v9, "AbstractSyncParser"

    const-string v10, "protocol_12.1:status[13] - server can\'t process empty sync request"

    invoke-static {v9, v10}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :cond_5
    const/16 v9, 0xe

    if-ne v8, v9, :cond_6

    .line 173
    const-string v9, "AbstractSyncParser"

    const-string v10, "protocol_12.1:status[14] - wait-interval is out of range"

    invoke-static {v9, v10}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    :cond_6
    const/16 v9, 0xf

    if-ne v8, v9, :cond_7

    .line 176
    const-string v9, "AbstractSyncParser"

    const-string v10, "protocol_12.1:status[15] - too many folders for server to moniter their changes"

    invoke-static {v9, v10}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_7
    const/16 v9, 0x10

    if-ne v8, v9, :cond_8

    .line 179
    const-string v9, "AbstractSyncParser"

    const-string v10, "protocol_12.1:status[16] - indeterminate state"

    invoke-static {v9, v10}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    :cond_8
    const-string v9, "AbstractSyncParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exchange response status"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    .end local v7           #sb:Ljava/lang/StringBuffer;
    .end local v8           #status:I
    :cond_9
    iget v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v10, 0x16

    if-ne v9, v10, :cond_a

    .line 189
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commandsParser()V

    goto/16 :goto_0

    .line 190
    :cond_a
    iget v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_b

    .line 191
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->responsesParser()V

    goto/16 :goto_0

    .line 192
    :cond_b
    iget v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_c

    .line 193
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 194
    :cond_c
    iget v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_f

    .line 195
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v9}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 196
    const/4 v4, 0x1

    .line 198
    :cond_d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, newKey:Ljava/lang/String;
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Parsed key for "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v11, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ": "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 200
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 201
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    const/4 v10, 0x1

    invoke-virtual {v9, v5, v10}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 202
    const-string v9, "syncKey"

    invoke-virtual {v1, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v3, 0x1

    .line 204
    const/4 v6, 0x1

    .line 207
    :cond_e
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_1

    .line 208
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    const/4 v10, -0x3

    iput v10, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto/16 :goto_0

    .line 211
    .end local v5           #newKey:Ljava/lang/String;
    :cond_f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 216
    :cond_10
    if-eqz v4, :cond_11

    if-nez v6, :cond_11

    .line 217
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "!! SyncKey hasn\'t changed, setting moreAvailable = false"

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 218
    const/4 v4, 0x0

    .line 219
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 223
    :cond_11
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commit()V

    .line 225
    const/4 v0, 0x0

    .line 228
    .local v0, abortSyncs:Z
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    if-eq v9, v2, :cond_16

    .line 229
    const-string v9, "syncInterval"

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v10, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const/4 v3, 0x1

    .line 241
    :cond_12
    :goto_1
    if-eqz v3, :cond_14

    .line 242
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v9}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 243
    :try_start_0
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v10}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v10

    if-nez v10, :cond_13

    .line 244
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 246
    :cond_13
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_14
    if-eqz v0, :cond_15

    .line 250
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Aborting account syncs due to mailbox change to ping..."

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 251
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v9, v10}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(J)V

    .line 255
    :cond_15
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Returning moreAvailable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 256
    return v4

    .line 232
    :cond_16
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget v9, v9, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    if-lez v9, :cond_12

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v9, v9, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_12

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    if-lez v9, :cond_12

    .line 235
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Changes found to ping loop mailbox "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v11, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ": will ping."

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 236
    const-string v9, "syncInterval"

    const/4 v10, -0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const/4 v3, 0x1

    .line 238
    const/4 v0, 0x1

    goto :goto_1

    .line 246
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10
.end method

.method public abstract responsesParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method userLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "string"
    .parameter "num"
    .parameter "string2"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    return-void
.end method

.method varargs userLog([Ljava/lang/String;)V
    .locals 1
    .parameter "strings"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public abstract wipe()V
.end method
