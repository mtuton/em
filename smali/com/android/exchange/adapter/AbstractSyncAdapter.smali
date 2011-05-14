.class public abstract Lcom/android/exchange/adapter/AbstractSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractSyncAdapter.java"


# static fields
.field public static final DAYS:I = 0x5265c00

.field public static final HOURS:I = 0x36ee80

.field public static final MINUTES:I = 0xea60

.field public static final SECONDS:I = 0x3e8

.field public static final WEEKS:I = 0x240c8400


# instance fields
.field public mAccount:Lcom/android/email/provider/EmailContent$Account;

.field public mAccountManagerAccount:Landroid/accounts/Account;

.field public mContext:Landroid/content/Context;

.field public mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

.field public mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 3
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 68
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 69
    iput-object p2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    .line 70
    iget-object v0, p2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p2, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract getCollectionName()Ljava/lang/String;
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Reset SyncKey to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public incrementChangeCount()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget v1, v0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    .line 83
    return-void
.end method

.method public incrementChangeCount(I)V
    .locals 2
    .parameter "incrAmt"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget v1, v0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    .line 87
    return-void
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSyncable()Z
.end method

.method public abstract parse(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setIntervalPing()V
    .locals 8

    .prologue
    .line 109
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 113
    .local v3, mailboxUpdated:Z
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 114
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    const/4 v5, -0x3

    iput v5, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 115
    const-string v4, "syncInterval"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const/4 v3, 0x1

    .line 130
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v4}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 131
    if-eqz v3, :cond_1

    .line 132
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 136
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    return-void

    .line 118
    :cond_2
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v0, v4, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 119
    .local v0, acctInterval:I
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v2, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 120
    .local v2, interval:I
    const-string v4, "AbstractSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> AccountInterval["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] MailboxInterval["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eq v0, v2, :cond_0

    .line 125
    const/4 v3, 0x0

    goto :goto_0

    .line 136
    .end local v0           #acctInterval:I
    .end local v2           #interval:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .locals 1
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iput-object p1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .locals 1
    .parameter "strings"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 79
    return-void
.end method
