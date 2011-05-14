.class public Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/FolderUpdateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderUpdateParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/FolderUpdateAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
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
    .line 187
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    .line 188
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 189
    const-string v0, "Mahskyript"

    const-string v1, "FolderUpdateAdapter.FolderUpdateParser.FolderUpdateParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
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
    .line 194
    return-void
.end method

.method public commit()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v9, "Mahskyript"

    .line 212
    const-string v0, "Mahskyript"

    const-string v0, "FolderUpdateAdapter.FolderUpdateParser.commit"

    invoke-static {v9, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v1}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$000(Lcom/android/exchange/adapter/FolderUpdateAdapter;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 214
    .local v7, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v7, :cond_4

    .line 217
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$100(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$100(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$100(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 221
    :cond_0
    iput-object v4, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$200(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$200(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$200(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 229
    :cond_1
    iput-object v4, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    .line 231
    iget v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    and-int/lit8 v0, v0, -0x3

    iput v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 232
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/AbstractCommandAdapter;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serverId=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v5}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$300(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;

    move-result-object v5

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

    .line 238
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 250
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 256
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 257
    const-string v1, "Applying "

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, " mailbox operations."

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, v2, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 259
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    :try_start_2
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.email.provider"

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 267
    const-string v1, "New Account SyncKey: "

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 274
    :cond_3
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 276
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->callback(I)V

    .line 277
    const-string v0, "Mahskyript"

    const-string v0, "FolderUpdateAdapter.FolderUpdateParser.commit after callback"

    invoke-static {v9, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 246
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 274
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 270
    :catch_0
    move-exception v1

    goto :goto_0

    .line 268
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public itemOperationsResponsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method public moveResponseParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const-string v0, "Mahskyript"

    const-string v1, "FolderUpdateAdapter.FolderUpdateParser.moveResponseParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public parse()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v6, "Mahskyript"

    .line 296
    const-string v0, "Mahskyript"

    const-string v0, "FolderUpdateAdapter.FolderUpdateParser.parse "

    invoke-static {v6, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    new-instance v1, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-direct {v1, v2}, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;-><init>(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    iput-object v1, v0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 299
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x1d5

    if-eq v0, v1, :cond_0

    .line 300
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 302
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 304
    iget v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->tag:I

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->tag:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->getValueInt()I

    move-result v1

    iput v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    .line 308
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 331
    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_2
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->callback(I)V

    goto :goto_0

    .line 315
    :pswitch_3
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->callback(I)V

    goto :goto_0

    .line 318
    :pswitch_4
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->callback(I)V

    goto :goto_0

    .line 321
    :pswitch_5
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->callback(I)V

    goto :goto_0

    .line 327
    :pswitch_6
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->callback(I)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 337
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->commit()V

    .line 349
    :cond_3
    :goto_1
    const-string v0, "Mahskyript"

    const-string v0, "FolderUpdateAdapter.FolderUpdateParser.parse exit"

    invoke-static {v6, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v5

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 341
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$300(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 342
    const-string v0, "FolderDeleteAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder does not exist. Deleting mailbox serverId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v2}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$300(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

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

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v3}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$300(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 348
    :cond_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->wipe()V

    goto :goto_1

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    return-void
.end method

.method public wipe()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 282
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->this$0:Lcom/android/exchange/adapter/FolderUpdateAdapter;

    invoke-static {v2}, Lcom/android/exchange/adapter/FolderUpdateAdapter;->access$000(Lcom/android/exchange/adapter/FolderUpdateAdapter;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 283
    .local v0, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 284
    iget v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 286
    iput-object v7, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    .line 287
    iput-object v7, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 291
    :cond_0
    const-string v1, "Mahskyript"

    const-string v2, "FolderUpdateAdapter.FolderUpdateParser.wipe finished"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method
