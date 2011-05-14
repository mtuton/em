.class public Lcom/android/exchange/adapter/MoveItemAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "MoveItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;
    }
.end annotation


# instance fields
.field private final CODE_MOVE_ITEM_INVALID_COLLECTION_DST:I

.field private final CODE_MOVE_ITEM_INVALID_COLLECTION_SRC:I

.field private final CODE_MOVE_ITEM_ITEM_LOCKED:I

.field private final CODE_MOVE_ITEM_SERVER_ERROR:I

.field private final CODE_MOVE_ITEM_SRC_DST_SAME:I

.field private final CODE_MOVE_ITEM_SUCCESS:I

.field private final INDEX_DST_MAILBOX:I

.field private final INDEX_SERVER_ID:I

.field private MOVE_ITEMS_PROJECTION:[Ljava/lang/String;

.field private mDstMailboxId:I

.field private parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 4
    .parameter "mailbox"
    .parameter "service"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 31
    iput v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_INVALID_COLLECTION_SRC:I

    .line 32
    iput v1, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_INVALID_COLLECTION_DST:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_SUCCESS:I

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_SRC_DST_SAME:I

    .line 35
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_SERVER_ERROR:I

    .line 36
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_ITEM_LOCKED:I

    .line 38
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "syncServerId"

    aput-object v1, v0, v2

    const-string v1, "dstMailboxKey"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->MOVE_ITEMS_PROJECTION:[Ljava/lang/String;

    .line 41
    iput v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->INDEX_SERVER_ID:I

    .line 42
    iput v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->INDEX_DST_MAILBOX:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    .line 45
    iput v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/MoveItemAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I

    return v0
.end method


# virtual methods
.method public callback(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 90
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/android/email/service/IEmailServiceCallback;->moveItemStatus(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->wipe()V

    .line 56
    :cond_0
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "MoveItems"

    return-object v0
.end method

.method public hasChangedItems()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    .local v6, count:I
    iget-object v1, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->MOVE_ITEMS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v8, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "flagMoved"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 78
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 80
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_0
    if-lez v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 82
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 85
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;-><init>(Lcom/android/exchange/adapter/MoveItemAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/MoveItemAdapter;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    .line 67
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->parse()Z

    move-result v0

    return v0
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 13
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 101
    const/16 v0, 0x145

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 103
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 106
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mailbox can not be synchronized."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->MOVE_ITEMS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v9, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "flagMoved"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 112
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 114
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, serverId:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I

    .line 119
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 121
    .local v7, dstMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 123
    const/16 v0, 0x146

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x147

    invoke-virtual {v0, v1, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x148

    iget-object v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x149

    iget-object v2, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 141
    .end local v7           #dstMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v8           #serverId:Ljava/lang/String;
    :goto_0
    return v0

    .line 130
    .restart local v7       #dstMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v8       #serverId:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MoveItem: mailbox not found"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/MoveItemAdapter;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 132
    goto :goto_0

    .line 136
    .end local v7           #dstMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v8           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_4
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move v0, v11

    .line 141
    goto :goto_0
.end method
