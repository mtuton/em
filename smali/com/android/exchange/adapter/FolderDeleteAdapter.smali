.class public Lcom/android/exchange/adapter/FolderDeleteAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "FolderDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;
    }
.end annotation


# instance fields
.field public final CODE_FOLDER_DELETE_FOLDER_NOT_EXISTS:I

.field public final CODE_FOLDER_DELETE_INVALID_SYNC_KEY:I

.field public final CODE_FOLDER_DELETE_MALFORMED_REQUEST:I

.field public final CODE_FOLDER_DELETE_SERVER_ERROR:I

.field public final CODE_FOLDER_DELETE_SUCCESS:I

.field public final CODE_FOLDER_DELETE_SYSTEM_FOLDER:I

.field public final CODE_FOLDER_DELETE_TIME_OUT:I

.field public final CODE_FOLDER_DELETE_UNKNOWN_ERROR:I

.field private final FOLDER_DELETE_PROJECTION:[Ljava/lang/String;

.field private INDEX_MAILBOX_FLAGCHANGED:I

.field private INDEX_MAILBOX_ID:I

.field private INDEX_SERVER_ID:I

.field private INDEX_SYNC_KEY:I

.field private final WHERE_PARENT_SERVER_ID_AND_ACCOUNT:Ljava/lang/String;

.field private final WHERE_SERVER_ID_AND_ACCOUNT:Ljava/lang/String;

.field mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

.field private mServerId:Ljava/lang/String;

.field private thisMailboxChanged:I

.field private thisMailboxId:J


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 6
    .parameter "mailbox"
    .parameter "service"

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 42
    iput v3, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_SUCCESS:I

    .line 43
    iput v4, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_SYSTEM_FOLDER:I

    .line 44
    iput v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_FOLDER_NOT_EXISTS:I

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_SERVER_ERROR:I

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_TIME_OUT:I

    .line 47
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_INVALID_SYNC_KEY:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_MALFORMED_REQUEST:I

    .line 49
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_UNKNOWN_ERROR:I

    .line 51
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "syncKey"

    aput-object v1, v0, v2

    const-string v1, "serverId"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "flagChanged"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->FOLDER_DELETE_PROJECTION:[Ljava/lang/String;

    .line 53
    const-string v0, "serverId=? and accountKey=?"

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->WHERE_SERVER_ID_AND_ACCOUNT:Ljava/lang/String;

    .line 56
    const-string v0, "parentServerId=? and accountKey=?"

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->WHERE_PARENT_SERVER_ID_AND_ACCOUNT:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->INDEX_SYNC_KEY:I

    .line 60
    iput v3, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->INDEX_SERVER_ID:I

    .line 62
    iput v5, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->INDEX_MAILBOX_ID:I

    .line 63
    iput v4, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->INDEX_MAILBOX_FLAGCHANGED:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxId:J

    .line 70
    iput v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxChanged:I

    .line 74
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.FolderDeleteAdapter"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/FolderDeleteAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/FolderDeleteAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxChanged:I

    return v0
.end method

.method static synthetic access$272(Lcom/android/exchange/adapter/FolderDeleteAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxChanged:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxChanged:I

    return v0
.end method


# virtual methods
.method public callback(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 157
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.callback "

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/email/service/IEmailServiceCallback;->folderCommandStatus(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public commit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.getCommandName: FolderDelete"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "FolderDelete"

    return-object v0
.end method

.method public hasChangedItems()Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 136
    const/4 v6, 0x0

    .line 137
    .local v6, count:I
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->FOLDER_DELETE_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v8, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "flagChanged"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 145
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 147
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 149
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_0
    const-string v1, "Mahskyript"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolderDeleteAdapter.hasChangedItems count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-lez v6, :cond_1

    move v1, v10

    :goto_0
    return v1

    .line 149
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 153
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSyncable()Z
    .locals 2

    .prologue
    .line 78
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.isSyncable"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;-><init>(Lcom/android/exchange/adapter/FolderDeleteAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 118
    .local v0, parser:Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 11
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const-string v10, "Mahskyript"

    .line 85
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->FOLDER_DELETE_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "flagChanged"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 95
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->INDEX_SERVER_ID:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;

    .line 97
    iget v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->INDEX_MAILBOX_ID:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxId:J

    .line 98
    iget v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->INDEX_MAILBOX_FLAGCHANGED:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxChanged:I

    .line 99
    const/16 v1, 0x1d4

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1d2

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1c8

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 103
    const-string v1, "Mahskyript"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolderDeleteAdapter.sendLocalChanges. Deleting item serverId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v9

    .line 111
    :goto_0
    return v1

    .line 107
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_1
    const-string v1, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.sendLocalChanges Nothing to delete"

    invoke-static {v10, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    goto :goto_0
.end method
