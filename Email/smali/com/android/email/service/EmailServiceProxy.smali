.class public Lcom/android/email/service/EmailServiceProxy;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/email/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/email/service/IEmailServiceCallback;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDead:Z

.field private mReturn:Ljava/lang/Object;

.field private mRunnable:Ljava/lang/Runnable;

.field private mService:Lcom/android/email/service/IEmailService;

.field private mSyncManagerConnection:Landroid/content/ServiceConnection;

.field private mTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/android/email/service/IEmailServiceCallback;)V
    .locals 2
    .parameter "_context"
    .parameter
    .parameter "_callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/email/service/IEmailServiceCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, _class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;

    invoke-direct {v0, p0}, Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;-><init>(Lcom/android/email/service/EmailServiceProxy;)V

    iput-object v0, p0, Lcom/android/email/service/EmailServiceProxy;->mSyncManagerConnection:Landroid/content/ServiceConnection;

    .line 63
    iput-object v1, p0, Lcom/android/email/service/EmailServiceProxy;->mService:Lcom/android/email/service/IEmailService;

    .line 64
    iput-object v1, p0, Lcom/android/email/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    .line 66
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/email/service/EmailServiceProxy;->mTimeout:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/EmailServiceProxy;->mDead:Z

    .line 74
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/email/service/EmailServiceProxy;->mClass:Ljava/lang/Class;

    .line 76
    iput-object p3, p0, Lcom/android/email/service/EmailServiceProxy;->mCallback:Lcom/android/email/service/IEmailServiceCallback;

    .line 80
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/android/email/service/EmailServiceProxy;->mTimeout:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/email/service/EmailServiceProxy;->mTimeout:I

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy;->mService:Lcom/android/email/service/IEmailService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/email/service/EmailServiceProxy;Lcom/android/email/service/IEmailService;)Lcom/android/email/service/IEmailService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy;->mService:Lcom/android/email/service/IEmailService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/email/service/EmailServiceProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/service/EmailServiceProxy;->runTask()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy;->mCallback:Lcom/android/email/service/IEmailServiceCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method

.method private runTask()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/service/EmailServiceProxy;->mSyncManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/service/EmailServiceProxy;->mDead:Z

    .line 126
    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy;->mSyncManagerConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 130
    :try_start_2
    iget-object v2, p0, Lcom/android/email/service/EmailServiceProxy;->mSyncManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 115
    :catch_0
    move-exception v1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private setTask(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "runnable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/email/service/EmailServiceProxy;->mDead:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy;->mRunnable:Ljava/lang/Runnable;

    .line 142
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/service/EmailServiceProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/service/EmailServiceProxy;->mClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/email/service/EmailServiceProxy;->mSyncManagerConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 144
    return-void
.end method


# virtual methods
.method public MoveMessage(Ljava/util/List;JJJ)V
    .locals 9
    .parameter
    .parameter "accountId"
    .parameter "mailboxKey"
    .parameter "curBoxKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    .local p1, messageId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$16;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/email/service/EmailServiceProxy$16;-><init>(Lcom/android/email/service/EmailServiceProxy;Ljava/util/List;JJJ)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method public OoOffice(JLcom/android/exchange/OoODataList;)V
    .locals 1
    .parameter "accountId"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/service/EmailServiceProxy$10;-><init>(Lcom/android/email/service/EmailServiceProxy;JLcom/android/exchange/OoODataList;)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 7
    .parameter "userName"
    .parameter "password"
    .parameter "domain"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/service/EmailServiceProxy$5;-><init>(Lcom/android/email/service/EmailServiceProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/email/service/EmailServiceProxy;->waitForCompletion()V

    .line 235
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    .line 238
    :cond_0
    iget-object v6, p0, Lcom/android/email/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 239
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "EmailServiceProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoDiscover returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autodiscover_error_code"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 240
    goto :goto_0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public emptyTrash(J)V
    .locals 1
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/service/EmailServiceProxy$15;-><init>(Lcom/android/email/service/EmailServiceProxy;J)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method public folderCreate(JLjava/lang/String;J)V
    .locals 7
    .parameter "accountId"
    .parameter "folderName"
    .parameter "parentMailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$14;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/service/EmailServiceProxy$14;-><init>(Lcom/android/email/service/EmailServiceProxy;JLjava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public hostChanged(J)V
    .locals 1
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/service/EmailServiceProxy$9;-><init>(Lcom/android/email/service/EmailServiceProxy;J)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public loadAttachment(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "attachmentId"
    .parameter "destinationFile"
    .parameter "contentUriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/service/EmailServiceProxy$1;-><init>(Lcom/android/email/service/EmailServiceProxy;JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public loadMore(J)V
    .locals 1
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/service/EmailServiceProxy$13;-><init>(Lcom/android/email/service/EmailServiceProxy;J)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method public moveConversationAlways(JJ[BI)V
    .locals 8
    .parameter "messageId"
    .parameter "toMailboxId"
    .parameter "conversationId"
    .parameter "ignore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$11;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/service/EmailServiceProxy$11;-><init>(Lcom/android/email/service/EmailServiceProxy;JJ[BI)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public sendMeetingResponse(JI)V
    .locals 1
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/service/EmailServiceProxy$12;-><init>(Lcom/android/email/service/EmailServiceProxy;JI)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method public sendRecoveryPassword(JLjava/lang/String;)V
    .locals 2
    .parameter "accountId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 415
    const-string v0, "Email"

    const-string v1, "EmailServiceProxy.sendRecoveryPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/service/EmailServiceProxy$17;-><init>(Lcom/android/email/service/EmailServiceProxy;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method

.method public setCallback(Lcom/android/email/service/IEmailServiceCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/android/email/service/EmailServiceProxy$8;-><init>(Lcom/android/email/service/EmailServiceProxy;Lcom/android/email/service/IEmailServiceCallback;)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public setDeviceInfo(J)V
    .locals 1
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/service/EmailServiceProxy$18;-><init>(Lcom/android/email/service/EmailServiceProxy;J)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method public setLogging(I)V
    .locals 1
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$7;

    invoke-direct {v0, p0, p1}, Lcom/android/email/service/EmailServiceProxy$7;-><init>(Lcom/android/email/service/EmailServiceProxy;I)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public setTimeout(I)Lcom/android/email/service/EmailServiceProxy;
    .locals 0
    .parameter "secs"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/email/service/EmailServiceProxy;->mTimeout:I

    .line 107
    return-object p0
.end method

.method public startSync(J)V
    .locals 1
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/service/EmailServiceProxy$2;-><init>(Lcom/android/email/service/EmailServiceProxy;J)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public stopSync(J)V
    .locals 1
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/service/EmailServiceProxy$3;-><init>(Lcom/android/email/service/EmailServiceProxy;J)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public updateFolderList(J)V
    .locals 1
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/service/EmailServiceProxy$6;-><init>(Lcom/android/email/service/EmailServiceProxy;J)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I
    .locals 9
    .parameter "protocol"
    .parameter "host"
    .parameter "userName"
    .parameter "password"
    .parameter "port"
    .parameter "ssl"
    .parameter "trustCertificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/android/email/service/EmailServiceProxy$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/email/service/EmailServiceProxy$4;-><init>(Lcom/android/email/service/EmailServiceProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-direct {p0, v0}, Lcom/android/email/service/EmailServiceProxy;->setTask(Ljava/lang/Runnable;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/email/service/EmailServiceProxy;->waitForCompletion()V

    .line 214
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 218
    .end local p0
    :goto_0
    return v0

    .line 217
    .restart local p0
    :cond_0
    const-string v0, "EmailServiceProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validate returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lcom/android/email/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public waitForCompletion()V
    .locals 8

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/email/service/EmailServiceProxy;->mSyncManagerConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 148
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 153
    .local v0, time:J
    :try_start_1
    iget-object v3, p0, Lcom/android/email/service/EmailServiceProxy;->mSyncManagerConnection:Landroid/content/ServiceConnection;

    iget v4, p0, Lcom/android/email/service/EmailServiceProxy;->mTimeout:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 161
    return-void

    .line 160
    .end local v0           #time:J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 154
    .restart local v0       #time:J
    :catch_0
    move-exception v3

    goto :goto_0
.end method
