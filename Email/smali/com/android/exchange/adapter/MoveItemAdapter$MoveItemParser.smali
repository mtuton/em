.class public Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "MoveItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/MoveItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoveItemParser"
.end annotation


# instance fields
.field mDstMsgId:Ljava/lang/String;

.field mSrcMsgId:Ljava/lang/String;

.field mStatus:I

.field final synthetic this$0:Lcom/android/exchange/adapter/MoveItemAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/MoveItemAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/MoveItemAdapter;)V
    .locals 1
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 156
    iput-object p1, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->this$0:Lcom/android/exchange/adapter/MoveItemAdapter;

    .line 157
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 152
    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mDstMsgId:Ljava/lang/String;

    .line 158
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
    .line 163
    return-void
.end method

.method public commit()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "0"

    .line 186
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->this$0:Lcom/android/exchange/adapter/MoveItemAdapter;

    invoke-static {v3}, Lcom/android/exchange/adapter/MoveItemAdapter;->access$000(Lcom/android/exchange/adapter/MoveItemAdapter;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 187
    .local v1, dstMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v1, :cond_0

    .line 188
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Can\'t find mailbox."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 192
    const-string v2, "syncServerId"

    iget-object v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mDstMsgId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "mailboxKey"

    iget-object v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->this$0:Lcom/android/exchange/adapter/MoveItemAdapter;

    invoke-static {v3}, Lcom/android/exchange/adapter/MoveItemAdapter;->access$000(Lcom/android/exchange/adapter/MoveItemAdapter;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    :cond_1
    const-string v2, "flagMoved"

    const-string v3, "0"

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "dstMailboxKey"

    const-string v3, "0"

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v2}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v3}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v3

    if-nez v3, :cond_2

    .line 200
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncServerId=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 206
    iget-object v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->this$0:Lcom/android/exchange/adapter/MoveItemAdapter;

    invoke-static {v2}, Lcom/android/exchange/adapter/MoveItemAdapter;->access$000(Lcom/android/exchange/adapter/MoveItemAdapter;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/exchange/SyncManager;->serviceRequest(JI)V

    .line 207
    :cond_3
    return-void

    .line 203
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public parse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x145

    if-eq v0, v1, :cond_0

    .line 267
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 269
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 270
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x14a

    if-ne v0, v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->parseMoveItemResponse()Z

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->this$0:Lcom/android/exchange/adapter/MoveItemAdapter;

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/MoveItemAdapter;->callback(I)V

    .line 275
    return v2
.end method

.method public parseMoveItemResponse()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const-string v6, ""

    .line 235
    :cond_0
    :goto_0
    const/16 v0, 0x14a

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->nextTag(I)I

    move-result v0

    if-eq v0, v5, :cond_3

    .line 236
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x147

    if-ne v0, v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x14b

    if-ne v0, v1, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mStatus:I

    .line 240
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MoveItem status:"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " srcMsgId: "

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->userLog([Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mStatus:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 248
    :sswitch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Move Item: Server error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :sswitch_1
    new-instance v0, Lcom/android/email/mail/DeviceAccessException;

    const v1, 0x40001

    const v2, 0x7f0802cb

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    throw v0

    .line 254
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x14c

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mDstMsgId:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->commit()V

    goto/16 :goto_0

    .line 259
    :cond_3
    return v4

    .line 242
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x81 -> :sswitch_1
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
    .line 167
    return-void
.end method

.method public wipe()V
    .locals 6

    .prologue
    const-string v3, "0"

    .line 215
    iget-object v1, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 216
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flagMoved"

    const-string v2, "0"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "dstMailboxKey"

    const-string v2, "0"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v2}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncServerId=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    :cond_0
    monitor-exit v1

    .line 227
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_1
    return-void

    .line 225
    .restart local v0       #cv:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
