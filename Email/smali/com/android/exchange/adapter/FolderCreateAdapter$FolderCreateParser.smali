.class public Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderCreateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/FolderCreateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderCreateParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/FolderCreateAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    .locals 2
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    .line 143
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 144
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.FolderCreateParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.commandsParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public commit()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v11, "Mahskyript"

    .line 170
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.commit"

    invoke-static {v11, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v10, 0x1

    .line 172
    .local v10, type:I
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-static {v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$000(Lcom/android/exchange/adapter/FolderCreateAdapter;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 174
    .local v8, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    new-instance v7, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    .line 175
    .local v7, m:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$100(Lcom/android/exchange/adapter/FolderCreateAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mServerId:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iput-wide v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 178
    iput v3, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 179
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 183
    iget v0, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x44

    if-eq v0, v1, :cond_2

    iget-object v0, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    :goto_0
    iput-object v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 186
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Create mailbox: "

    aput-object v1, v0, v12

    iget-object v1, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->userLog([Ljava/lang/String;)V

    .line 188
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/AbstractCommandAdapter;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serverId=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 209
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    const-string v1, "Applying "

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, " mailbox operations."

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, v2, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 213
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    :try_start_2
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.email.provider"

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 221
    const-string v1, "New Account SyncKey: "

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.commit before callback"

    invoke-static {v11, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-static {v0, v4}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$102(Lcom/android/exchange/adapter/FolderCreateAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$002(Lcom/android/exchange/adapter/FolderCreateAdapter;J)J

    .line 234
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-virtual {v0, v12}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    .line 235
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.commit after callback"

    invoke-static {v11, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    move-object v0, v4

    .line 183
    goto/16 :goto_0

    .line 199
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 228
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 224
    :catch_0
    move-exception v1

    goto :goto_1

    .line 222
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public parse()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const-string v4, "Mahskyript"

    .line 245
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.parse"

    invoke-static {v4, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    new-instance v1, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-direct {v1, v2}, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;-><init>(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    iput-object v1, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 248
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x1d3

    if-eq v0, v1, :cond_0

    .line 249
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 251
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->nextTag(I)I

    move-result v0

    if-eq v0, v5, :cond_3

    .line 253
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    goto :goto_0

    .line 255
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1c8

    if-ne v0, v1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mServerId:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->getValueInt()I

    move-result v1

    iput v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    .line 259
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    sparse-switch v0, :sswitch_data_0

    .line 287
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :sswitch_1
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_0

    .line 266
    :sswitch_2
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_0

    .line 269
    :sswitch_3
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_0

    .line 278
    :sswitch_4
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_0

    .line 282
    :sswitch_5
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    .line 283
    new-instance v0, Lcom/android/email/mail/DeviceAccessException;

    const v1, 0x40001

    const v2, 0x7f0802cb

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    throw v0

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 292
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.parse  CODE_FOLDER_CREATE_SUCCESS"

    invoke-static {v4, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->commit()V

    .line 295
    :cond_4
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.parse exit"

    invoke-static {v4, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v3

    .line 259
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0x81 -> :sswitch_5
    .end sparse-switch
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.responsesParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public wipe()V
    .locals 2

    .prologue
    .line 240
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.wipe"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method
