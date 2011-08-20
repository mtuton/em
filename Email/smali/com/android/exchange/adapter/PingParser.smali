.class public Lcom/android/exchange/adapter/PingParser;
.super Lcom/android/exchange/adapter/Parser;
.source "PingParser.java"


# instance fields
.field private mService:Lcom/android/exchange/EasSyncService;

.field private mSyncStatus:I

.field private syncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/PingParser;->syncList:Ljava/util/ArrayList;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/PingParser;->mSyncStatus:I

    .line 55
    iput-object p2, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 56
    return-void
.end method


# virtual methods
.method public getSyncList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/exchange/adapter/PingParser;->syncList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncStatus()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/exchange/adapter/PingParser;->mSyncStatus:I

    return v0
.end method

.method public parse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, res:Z
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x345

    if-eq v2, v3, :cond_0

    .line 75
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    .line 78
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x347

    if-ne v2, v3, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValueInt()I

    move-result v1

    .line 80
    .local v1, status:I
    iput v1, p0, Lcom/android/exchange/adapter/PingParser;->mSyncStatus:I

    .line 81
    iget-object v2, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Ping completed, status = "

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 82
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 86
    :cond_2
    new-instance v2, Lcom/android/exchange/StaleFolderListException;

    invoke-direct {v2}, Lcom/android/exchange/StaleFolderListException;-><init>()V

    throw v2

    .line 87
    :cond_3
    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 91
    const/16 v2, 0x81

    if-ne v1, v2, :cond_0

    .line 93
    const-string v2, "PingParser"

    const-string v3, "PingParser::parse() - Received status 129 for ping, to Block device "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v2, Lcom/android/email/mail/DeviceAccessException;

    const v3, 0x40001

    const v4, 0x7f0802cb

    invoke-direct {v2, v3, v4}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    throw v2

    .line 99
    .end local v1           #status:I
    :cond_4
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x349

    if-ne v2, v3, :cond_5

    .line 100
    iget-object v2, p0, Lcom/android/exchange/adapter/PingParser;->syncList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/PingParser;->parsePingFolders(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 101
    :cond_5
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x348

    if-ne v2, v3, :cond_6

    .line 103
    new-instance v2, Lcom/android/exchange/IllegalHeartbeatException;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValueInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/exchange/IllegalHeartbeatException;-><init>(I)V

    throw v2

    .line 105
    :cond_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->skipTag()V

    goto :goto_0

    .line 108
    :cond_7
    return v0
.end method

.method public parsePingFolders(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    .local p1, syncList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const/16 v1, 0x349

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 60
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x34a

    if-ne v1, v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, serverId:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Changes found in: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0           #serverId:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->skipTag()V

    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method
