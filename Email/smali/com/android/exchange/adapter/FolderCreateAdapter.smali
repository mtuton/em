.class public Lcom/android/exchange/adapter/FolderCreateAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "FolderCreateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;
    }
.end annotation


# instance fields
.field public final CODE_FOLDER_CREATE_INVALID_SYNC_KEY:I

.field public final CODE_FOLDER_CREATE_MALFORMED_REQUEST:I

.field public final CODE_FOLDER_CREATE_NAME_EXISTS:I

.field public final CODE_FOLDER_CREATE_PARENT_FOLDER_NOT_FOUND:I

.field public final CODE_FOLDER_CREATE_SERVER_ERROR:I

.field public final CODE_FOLDER_CREATE_SUCCESS:I

.field public final CODE_FOLDER_CREATE_SYSTEM_FOLDER:I

.field public final CODE_FOLDER_CREATE_TIME_OUT:I

.field public final CODE_FOLDER_CREATE_UNKNOWN_CODE:I

.field public final CODE_FOLDER_CREATE_UNKNOWN_ERROR:I

.field private mNewFolderName:Ljava/lang/String;

.field private mParentFolderId:J

.field mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;Ljava/lang/String;J)V
    .locals 2
    .parameter "mailbox"
    .parameter "service"
    .parameter "newFolderName"
    .parameter "parentFolderId"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_SUCCESS:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_NAME_EXISTS:I

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_SYSTEM_FOLDER:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_PARENT_FOLDER_NOT_FOUND:I

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_SERVER_ERROR:I

    .line 40
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_TIME_OUT:I

    .line 41
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_INVALID_SYNC_KEY:I

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_MALFORMED_REQUEST:I

    .line 43
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_UNKNOWN_ERROR:I

    .line 44
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_UNKNOWN_CODE:I

    .line 46
    iput-object v1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 48
    iput-object v1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    .line 54
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateAdapter"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object p3, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    .line 56
    iput-wide p4, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/FolderCreateAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/exchange/adapter/FolderCreateAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/FolderCreateAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/exchange/adapter/FolderCreateAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public callback(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 117
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.callback"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/email/service/IEmailServiceCallback;->folderCommandStatus(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.cleanup"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public commit()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.commit"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.getCollectionName"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.getCommandName"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "FolderCreate"

    return-object v0
.end method

.method public hasChangedItems()Z
    .locals 4

    .prologue
    .line 112
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.hasChangedItems"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncable()Z
    .locals 2

    .prologue
    .line 60
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.isSyncable"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v1, "Mahskyript"

    const-string v2, "FolderCreateAdapter.parse"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;-><init>(Lcom/android/exchange/adapter/FolderCreateAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 89
    .local v0, parser:Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 6
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "Mahskyript"

    .line 66
    const-string v2, "Mahskyript"

    const-string v2, "FolderCreateAdapter.sendLocalChanges"

    invoke-static {v5, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 68
    .local v0, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget v2, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v3, 0x44

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object v1, v2

    .line 71
    .local v1, parentFolderKey:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v2, :cond_1

    .line 72
    const/16 v2, 0x1d3

    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1d2

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1c9

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1c7

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1ca

    const-string v4, "12"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 78
    const-string v2, "Mahskyript"

    const-string v2, "FolderCreateAdapter.sendLocalChanges exit 1"

    invoke-static {v5, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v2, 0x1

    .line 82
    :goto_1
    return v2

    .line 68
    .end local v1           #parentFolderKey:Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    move-object v1, v2

    goto :goto_0

    .line 81
    .restart local v1       #parentFolderKey:Ljava/lang/String;
    :cond_1
    const-string v2, "Mahskyript"

    const-string v2, "FolderCreateAdapter.sendLocalChanges exit 2"

    invoke-static {v5, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v2, 0x0

    goto :goto_1
.end method
