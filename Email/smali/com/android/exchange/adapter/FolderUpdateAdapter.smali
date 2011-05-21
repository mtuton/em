.class public Lcom/android/exchange/adapter/FolderUpdateAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "FolderUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;
    }
.end annotation


# instance fields
.field public final CODE_FOLDER_UPDATE_FOLDER_NOT_EXISTS:I

.field public final CODE_FOLDER_UPDATE_INVALID_SYNC_KEY:I

.field public final CODE_FOLDER_UPDATE_MALFORMED_REQUEST:I

.field public final CODE_FOLDER_UPDATE_NAME_EXISTS:I

.field public final CODE_FOLDER_UPDATE_PARENT_FOLDER_NOT_FOUND:I

.field public final CODE_FOLDER_UPDATE_SERVER_ERROR:I

.field public final CODE_FOLDER_UPDATE_SUCCESS:I

.field public final CODE_FOLDER_UPDATE_SYSTEM_FOLDER:I

.field public final CODE_FOLDER_UPDATE_TIME_OUT:I

.field public final CODE_FOLDER_UPDATE_UNKNOWN_ERROR:I

.field private final FOLDER_UPDATE_PROJECTION:[Ljava/lang/String;

.field private final INDEX_DST_MAILBOX_ID:I

.field private final INDEX_ID:I

.field private final INDEX_NEW_DISPLAY_NAME:I

.field private final INDEX_SERVER_ID:I

.field private final INDEX_SYNC_KEY:I

.field private mCommandType:I

.field private mNewFolderName:Ljava/lang/String;

.field private mParentServerId:Ljava/lang/String;

.field mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

.field private mServerId:Ljava/lang/String;

.field private mUpdatedMailboxId:I


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 8
    .parameter "mailbox"
    .parameter "service"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 34
    iput v4, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->CODE_FOLDER_UPDATE_SUCCESS:I

    .line 35
    iput v5, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->CODE_FOLDER_UPDATE_NAME_EXISTS:I

    .line 36
    iput v6, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->CODE_FOLDER_UPDATE_SYSTEM_FOLDER:I

    .line 37
    iput v7, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->CODE_FOLDER_UPDATE_FOLDER_NOT_EXISTS:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->CODE_FOLDER_UPDATE_PARENT_FOLDER_NOT_FOUND:I

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->CODE_FOLDER_UPDATE_SERVER_ERROR:I

    .line 40
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->CODE_FOLDER_UPDATE_TIME_OUT:I

    .line 41
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->CODE_FOLDER_UPDATE_INVALID_SYNC_KEY:I

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->CODE_FOLDER_UPDATE_MALFORMED_REQUEST:I

    .line 43
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->CODE_FOLDER_UPDATE_UNKNOWN_ERROR:I

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "syncKey"

    aput-object v1, v0, v4

    const-string v1, "serverId"

    aput-object v1, v0, v5

    const-string v1, "dstMailboxId"

    aput-object v1, v0, v6

    const-string v1, "newDisplayName"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->FOLDER_UPDATE_PROJECTION:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->INDEX_ID:I

    .line 53
    iput v4, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->INDEX_SYNC_KEY:I

    .line 54
    iput v5, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->INDEX_SERVER_ID:I

    .line 55
    iput v6, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->INDEX_DST_MAILBOX_ID:I

    .line 56
    iput v7, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->INDEX_NEW_DISPLAY_NAME:I

    .line 59
    iput-object v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mServerId:Ljava/lang/String;

    .line 60
    iput-object v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mParentServerId:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mNewFolderName:Ljava/lang/String;

    .line 63
    iput-object v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 68
    const-string v0, "Mahskyript"

    const-string v1, "FolderUpdateAdapter.FolderUpdateAdapter"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/FolderUpdateAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mUpdatedMailboxId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mNewFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mParentServerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exchange/adapter/FolderUpdateAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mServerId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public callback(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/email/service/IEmailServiceCallback;->folderCommandStatus(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 146
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
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    const-string v0, "Mahskyript"

    const-string v1, "FolderUpdateAdapter.getCommandName: FolderUpdate"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v0, "FolderUpdate"

    return-object v0
.end method

.method public hasChangedItems()Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    .line 153
    const/4 v6, 0x0

    .line 154
    .local v6, count:I
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->FOLDER_UPDATE_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

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

    .line 161
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 163
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 165
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_0
    const-string v1, "Mahskyript"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolderUpdateAdapter.hasChangedItems count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-lez v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 165
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 169
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSyncable()Z
    .locals 2

    .prologue
    .line 72
    const-string v0, "Mahskyript"

    const-string v1, "FolderUpdateAdapter.FolderUpdateAdapter.isSyncable"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
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
    .line 133
    new-instance v0, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;-><init>(Lcom/android/exchange/adapter/FolderUpdateAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 135
    .local v0, parser:Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/FolderUpdateAdapter$FolderUpdateParser;->parse()Z

    move-result v1

    return v1
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

    const/4 v11, 0x0

    const/4 v10, 0x2

    const-string v12, "Mahskyript"

    .line 79
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->FOLDER_UPDATE_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

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

    move-result-object v6

    .line 86
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 88
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mUpdatedMailboxId:I

    .line 91
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mServerId:Ljava/lang/String;

    .line 92
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mParentServerId:Ljava/lang/String;

    .line 93
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mNewFolderName:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mUpdatedMailboxId:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 99
    .local v7, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mParentServerId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 100
    iget-object v1, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mParentServerId:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mNewFolderName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 104
    iget-object v1, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mNewFolderName:Ljava/lang/String;

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mParentServerId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 107
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mParentServerId:Ljava/lang/String;

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mServerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mParentServerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mNewFolderName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 113
    :cond_3
    const/16 v1, 0x1d5

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1d2

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1c8

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1c9

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1c7

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mNewFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 119
    const-string v1, "Mahskyript"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolderUpdateAdapter.FolderUpdateAdapter.sendLocalChanges. updatedMailboxId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/adapter/FolderUpdateAdapter;->mUpdatedMailboxId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const/4 v1, 0x1

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 128
    .end local v7           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :goto_0
    return v1

    .line 124
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_5
    const-string v1, "Mahskyript"

    const-string v1, "FolderUpdateAdapter.FolderUpdateAdapter.sendLocalChanges exit 2"

    invoke-static {v12, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v11

    .line 128
    goto :goto_0
.end method
