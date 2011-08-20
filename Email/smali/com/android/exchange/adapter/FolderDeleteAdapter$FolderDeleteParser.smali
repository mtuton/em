.class public Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/FolderDeleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderDeleteParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/FolderDeleteAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
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
    .line 180
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    .line 181
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 182
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.FolderDeleteParser.FolderDeleteParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
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
    .line 187
    return-void
.end method

.method public commit()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v11, ""

    .line 199
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.FolderDeleteParser.commit"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    if-ne v0, v13, :cond_6

    .line 205
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v9, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-static {v9}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 210
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Deleting folder: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-static {v2}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->userLog([Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "parentServerId=? and accountKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-static {v9}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 218
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 220
    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    .end local v7           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_0

    .line 241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_0
    throw v0

    .line 228
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_2
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v6, :cond_4

    .line 241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 250
    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 251
    const-string v1, "Applying "

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, " mailbox operations."

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, v2, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 254
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

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 260
    :try_start_5
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.email.provider"

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 262
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "New Account SyncKey: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->userLog([Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_0

    .line 269
    :cond_5
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 271
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-virtual {v0, v12}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->callback(I)V

    .line 272
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.FolderDeleteParser.commit after callback"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 269
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 265
    :catch_0
    move-exception v1

    goto :goto_1

    .line 263
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public parse()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    const-string v6, "Mahskyript"

    .line 292
    const-string v0, "Mahskyript"

    const-string v0, "FolderDeleteAdapter.FolderDeleteParser.parse "

    invoke-static {v6, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    new-instance v1, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-direct {v1, v2}, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;-><init>(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    iput-object v1, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 294
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x1d4

    if-eq v0, v1, :cond_0

    .line 295
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 297
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->nextTag(I)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 299
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    goto :goto_0

    .line 301
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->getValueInt()I

    move-result v1

    iput v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    .line 303
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    sparse-switch v0, :sswitch_data_0

    .line 329
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :sswitch_1
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->callback(I)V

    goto :goto_0

    .line 310
    :sswitch_2
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->callback(I)V

    goto :goto_0

    .line 319
    :sswitch_3
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->callback(I)V

    goto :goto_0

    .line 324
    :sswitch_4
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->callback(I)V

    .line 325
    new-instance v0, Lcom/android/email/mail/DeviceAccessException;

    const v1, 0x40001

    const v2, 0x7f0802cb

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    throw v0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 335
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->commit()V

    .line 347
    :cond_3
    :goto_1
    const-string v0, "Mahskyript"

    const-string v0, "FolderDeleteAdapter.FolderDeleteParser.parse exit"

    invoke-static {v6, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return v5

    .line 337
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 339
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 340
    const-string v0, "FolderDeleteAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder does not exist. Deleting mailbox serverId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-static {v2}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-static {v3}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 345
    :cond_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->wipe()V

    goto :goto_1

    .line 303
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0x81 -> :sswitch_4
    .end sparse-switch
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method public wipe()V
    .locals 6

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-static {v1}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$100(Lcom/android/exchange/adapter/FolderDeleteAdapter;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "FolderDeleteAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wipe(). Marking this mailbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-static {v3}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$100(Lcom/android/exchange/adapter/FolderDeleteAdapter;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as not deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$272(Lcom/android/exchange/adapter/FolderDeleteAdapter;I)I

    .line 283
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flagChanged"

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-static {v2}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$200(Lcom/android/exchange/adapter/FolderDeleteAdapter;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-static {v4}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$100(Lcom/android/exchange/adapter/FolderDeleteAdapter;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
