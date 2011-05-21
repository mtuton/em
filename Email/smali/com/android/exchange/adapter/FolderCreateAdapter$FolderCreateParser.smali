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
    .line 132
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    .line 133
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 134
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.FolderCreateParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
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
    .line 139
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.commandsParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
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

    .line 160
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.commit"

    invoke-static {v11, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v10, 0x1

    .line 162
    .local v10, type:I
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-static {v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$000(Lcom/android/exchange/adapter/FolderCreateAdapter;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 164
    .local v8, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    new-instance v7, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    .line 165
    .local v7, m:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$100(Lcom/android/exchange/adapter/FolderCreateAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mServerId:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iput-wide v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 168
    iput v3, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 169
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 173
    iget v0, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x44

    if-eq v0, v1, :cond_2

    iget-object v0, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    :goto_0
    iput-object v0, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Create mailbox: "

    aput-object v1, v0, v12

    iget-object v1, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->userLog([Ljava/lang/String;)V

    .line 178
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->mContentResolver:Landroid/content/ContentResolver;

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

    .line 184
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
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

    .line 189
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 199
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    const-string v1, "Applying "

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, " mailbox operations."

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, v2, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 203
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    :try_start_2
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.email.provider"

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 211
    const-string v1, "New Account SyncKey: "

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.commit before callback"

    invoke-static {v11, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-static {v0, v4}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$102(Lcom/android/exchange/adapter/FolderCreateAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$002(Lcom/android/exchange/adapter/FolderCreateAdapter;J)J

    .line 224
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-virtual {v0, v12}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    .line 225
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.commit after callback"

    invoke-static {v11, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    move-object v0, v4

    .line 173
    goto/16 :goto_0

    .line 189
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 218
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 214
    :catch_0
    move-exception v1

    goto :goto_1

    .line 212
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public itemOperationsResponsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.itemOperationsResponsesParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
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
    .line 149
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.moveResponseParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public parse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "Mahskyript"

    .line 235
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.parse"

    invoke-static {v4, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    new-instance v1, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-direct {v1, v2}, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;-><init>(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    iput-object v1, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 238
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x1d3

    if-eq v0, v1, :cond_0

    .line 239
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 241
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 243
    iget v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->tag:I

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->tag:I

    const/16 v1, 0x1c8

    if-ne v0, v1, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mServerId:Ljava/lang/String;

    goto :goto_0

    .line 247
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->tag:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->getValueInt()I

    move-result v1

    iput v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    .line 249
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 269
    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :pswitch_2
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_0

    .line 256
    :pswitch_3
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_0

    .line 259
    :pswitch_4
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_0

    .line 265
    :pswitch_5
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 274
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.parse  CODE_FOLDER_CREATE_SUCCESS"

    invoke-static {v4, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->commit()V

    .line 277
    :cond_4
    const-string v0, "Mahskyript"

    const-string v0, "FolderCreateAdapter.FolderCreateParser.parse exit"

    invoke-static {v4, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v3

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.responsesParser"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public wipe()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.wipe"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method
