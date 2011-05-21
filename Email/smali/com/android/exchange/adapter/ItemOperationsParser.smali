.class public Lcom/android/exchange/adapter/ItemOperationsParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "ItemOperationsParser.java"


# static fields
.field private static final WHERE_SERVER_ID_AND_MAILBOX_KEY:Ljava/lang/String; = "syncServerId=? and mailboxKey=?"


# instance fields
.field private mBindArguments:[Ljava/lang/String;

.field private mMailboxIdAsString:Ljava/lang/String;

.field private mResult:Z


# direct methods
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
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private fetchPropertiesBodyParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V
    .locals 4
    .parameter "msg"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, msgData:Ljava/lang/String;
    const/4 v1, -0x1

    .line 198
    .local v1, msgType:I
    :goto_0
    const/16 v2, 0x44a

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 199
    iget v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 209
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 201
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    .line 202
    goto :goto_0

    .line 204
    :sswitch_1
    const/4 v2, 0x0

    iput-byte v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 205
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 206
    goto :goto_0

    .line 215
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 228
    :goto_1
    return-void

    .line 218
    :pswitch_0
    iput-object v0, p2, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_1

    .line 222
    :pswitch_1
    iput-object v0, p2, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_1

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x446 -> :sswitch_0
        0x44b -> :sswitch_1
    .end sparse-switch

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private fetchPropertiesParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V
    .locals 2
    .parameter "msg"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    :goto_0
    const/16 v0, 0x50b

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 179
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 189
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 181
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ItemOperationsParser;->fetchPropertiesBodyParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V

    goto :goto_0

    .line 193
    :cond_0
    return-void

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x44a
        :pswitch_0
    .end packed-switch
.end method

.method private getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"
    .parameter "projection"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 49
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private itemOperationsEmptyFolderContentsParser()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, collectionId:Ljava/lang/String;
    const/4 v1, -0x1

    .line 234
    .local v1, status:I
    :cond_0
    :goto_0
    const/16 v2, 0x512

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 235
    iget v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 247
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 238
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemOperations failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 245
    goto :goto_0

    .line 252
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 254
    if-ne v1, v5, :cond_2

    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 258
    :goto_2
    return-void

    :cond_2
    move v2, v6

    .line 254
    goto :goto_1

    .line 256
    :cond_3
    iput-boolean v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    goto :goto_2

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x50d -> :sswitch_0
    .end sparse-switch
.end method

.method private itemOperationsFetchParser()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 116
    .local v2, msg:Lcom/android/email/provider/EmailContent$Message;
    const/4 v0, 0x0

    .line 118
    .local v0, body:Lcom/android/email/provider/EmailContent$Body;
    :cond_0
    :goto_0
    const/16 v6, 0x506

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 119
    iget v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    sparse-switch v6, :sswitch_data_0

    .line 163
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 124
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v5

    .local v5, status:I
    if-eq v5, v9, :cond_0

    .line 125
    iget-object v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ItemOperations failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v5           #status:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 138
    goto :goto_0

    .line 141
    :sswitch_2
    if-eqz v4, :cond_0

    .line 143
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lcom/android/exchange/adapter/ItemOperationsParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 145
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    new-instance v3, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v3}, Lcom/android/email/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v2           #msg:Lcom/android/email/provider/EmailContent$Message;
    .local v3, msg:Lcom/android/email/provider/EmailContent$Message;
    :try_start_1
    invoke-virtual {v3, v1}, Lcom/android/email/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 150
    .end local v3           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v2       #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 154
    if-eqz v2, :cond_0

    .line 155
    iget-object v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    iget-wide v7, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0, v2, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->fetchPropertiesParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    .line 171
    .end local v1           #c:Landroid/database/Cursor;
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 172
    iget-object v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v7, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v2, v0}, Lcom/android/exchange/adapter/LoadMoreUtility;->updateEmail(Lcom/android/exchange/AbstractSyncService;Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V

    .line 173
    iput-boolean v9, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 175
    :cond_3
    return-void

    .line 150
    .end local v2           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v3       #msg:Lcom/android/email/provider/EmailContent$Message;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v2       #msg:Lcom/android/email/provider/EmailContent$Message;
    goto :goto_1

    .line 119
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x3d8 -> :sswitch_1
        0x50b -> :sswitch_2
        0x50d -> :sswitch_0
    .end sparse-switch
.end method

.method private itemOperationsResponsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    :goto_0
    const/16 v0, 0x50e

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 99
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 107
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 101
    :sswitch_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsFetchParser()V

    goto :goto_0

    .line 104
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsEmptyFolderContentsParser()V

    goto :goto_0

    .line 111
    :cond_0
    return-void

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x506 -> :sswitch_0
        0x512 -> :sswitch_1
    .end sparse-switch
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
    .line 84
    return-void
.end method

.method public commit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
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
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x505

    if-eq v1, v2, :cond_0

    .line 58
    new-instance v1, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 61
    :cond_0
    const/4 v0, -0x1

    .line 62
    .local v0, status:I
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 63
    iget v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 75
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ItemOperations failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsResponsesParser()V

    goto :goto_0

    .line 80
    :cond_2
    iget-boolean v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    return v1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x50d
        :pswitch_0
        :pswitch_1
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
    .line 90
    return-void
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
