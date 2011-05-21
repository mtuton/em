.class public abstract Lcom/android/exchange/AbstractSyncService;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/AbstractSyncService$ValidationResult;
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT:I = 0x7530

.field public static final DAYS:I = 0x5265c00

.field public static final EAS_PROTOCOL:Ljava/lang/String; = "eas"

.field public static final EXIT_DONE:I = 0x0

.field public static final EXIT_EXCEPTION:I = 0x3

.field public static final EXIT_IO_ERROR:I = 0x1

.field public static final EXIT_LOGIN_FAILURE:I = 0x2

.field public static final EXIT_SECURITY_FAILURE:I = 0x4

.field public static final HOURS:I = 0x36ee80

.field public static final MINUTES:I = 0xea60

.field public static final NETWORK_WAIT:I = 0x3a98

.field public static final SECONDS:I = 0x3e8


# instance fields
.field public TAG:Ljava/lang/String;

.field public mAccount:Lcom/android/email/provider/EmailContent$Account;

.field public mChangeCount:I

.field public mContext:Landroid/content/Context;

.field protected mExitStatus:I

.field public mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

.field protected mMailboxId:J

.field protected mMailboxName:Ljava/lang/String;

.field protected mPendingRequest:Lcom/android/exchange/PartRequest;

.field protected volatile mRequestTime:J

.field protected mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mStop:Z

.field public mSyncReason:I

.field protected mSynchronizer:Ljava/lang/Object;

.field protected mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "_context"

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 76
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 77
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 78
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 128
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 4
    .parameter "_context"
    .parameter "_acc"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 76
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 77
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 78
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    .line 83
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 145
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 147
    new-instance v0, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 148
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    .line 149
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 150
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 2
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 76
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 77
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 78
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 134
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 136
    iget-wide v0, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 137
    iget-object v0, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 138
    iget-wide v0, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 2
    .parameter "_context"
    .parameter "_msg"

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 76
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 77
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 78
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 156
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 157
    iget-wide v0, p2, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 158
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 159
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 76
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 77
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 78
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 166
    return-void
.end method

.method public static activate(Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/exchange/AbstractSyncService;>;"
    const-string v5, "internal error"

    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, license:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 203
    .local v2, svc:Lcom/android/exchange/AbstractSyncService;
    invoke-virtual {v2, p1}, Lcom/android/exchange/AbstractSyncService;->activateDevice(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 209
    return-object v1

    .line 204
    .end local v2           #svc:Lcom/android/exchange/AbstractSyncService;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 205
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const-string v4, "internal error"

    invoke-direct {v3, v5, v0}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 206
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 207
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const-string v4, "internal error"

    invoke-direct {v3, v5, v0}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static validate(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "host"
    .parameter "userName"
    .parameter "password"
    .parameter "port"
    .parameter "ssl"
    .parameter "trustCertificates"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/exchange/AbstractSyncService;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 188
    invoke-virtual/range {v0 .. v7}, Lcom/android/exchange/AbstractSyncService;->validateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    return-void

    .line 189
    .end local v0           #svc:Lcom/android/exchange/AbstractSyncService;
    :catch_0
    move-exception p0

    .line 190
    .local p0, e:Ljava/lang/IllegalAccessException;
    new-instance p1, Lcom/android/email/mail/MessagingException;

    .end local p1
    const-string p2, "internal error"

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 191
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/exchange/AbstractSyncService;>;"
    .restart local p1
    .restart local p2
    :catch_1
    move-exception p0

    .line 192
    .local p0, e:Ljava/lang/InstantiationException;
    new-instance p1, Lcom/android/email/mail/MessagingException;

    .end local p1
    const-string p2, "internal error"

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract activateDevice(Landroid/content/Context;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public addRequest(Lcom/android/exchange/Request;)V
    .locals 3
    .parameter "req"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract alarm()Z
.end method

.method public errorLog(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    const-string v5, ">"

    const-string v4, "<"

    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 323
    .local v0, tid:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-boolean v2, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v2, :cond_0

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    return-void
.end method

.method protected varargs getRowColumns(Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "baseUri"
    .parameter "id"
    .parameter "projection"

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p4, v1, v1}, Lcom/android/exchange/AbstractSyncService;->getRowColumns(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRowColumns(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "contentUri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    .line 381
    array-length v1, p2

    new-array v8, v1, [Ljava/lang/String;

    .line 382
    .local v8, values:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 383
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 385
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v1, p2

    if-ge v7, v1, :cond_1

    .line 387
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 393
    .end local v7           #i:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    .line 395
    :goto_1
    return-object v1

    .line 393
    .restart local v7       #i:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v1, v8

    .line 395
    goto :goto_1

    .line 393
    .end local v7           #i:I
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getSynchronizer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    return-object v0
.end method

.method public hasConnectivity()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 337
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 339
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .local v3, tries:I
    move v4, v3

    .line 340
    .end local v3           #tries:I
    .local v4, tries:I
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #tries:I
    .restart local v3       #tries:I
    if-ge v4, v7, :cond_1

    .line 341
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 342
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 343
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 344
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v5, :cond_0

    move v5, v7

    .line 353
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #state:Landroid/net/NetworkInfo$DetailedState;
    :goto_1
    return v5

    .line 349
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_0
    const-wide/16 v5, 0x2710

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v4, v3

    .line 352
    .end local v3           #tries:I
    .restart local v4       #tries:I
    goto :goto_0

    .line 353
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v4           #tries:I
    .restart local v3       #tries:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 350
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    return v0
.end method

.method public removeRequest(Lcom/android/exchange/Request;)V
    .locals 2
    .parameter "req"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 371
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract reset()V
.end method

.method public abstract stop()V
.end method

.method public userLog(Ljava/lang/String;I)V
    .locals 3
    .parameter "string"
    .parameter "code"

    .prologue
    .line 269
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method public userLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "string"
    .parameter "code"
    .parameter "string2"

    .prologue
    .line 263
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 266
    :cond_0
    return-void
.end method

.method public userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .parameter "str"
    .parameter "e"

    .prologue
    const-string v5, ">"

    const-string v4, "<"

    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 277
    .local v0, tid:J
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :goto_0
    sget-boolean v2, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v2, :cond_0

    .line 284
    invoke-static {p2}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/Exception;)V

    .line 286
    :cond_0
    return-void

    .line 280
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .locals 12
    .parameter "strings"

    .prologue
    const-string v11, ">"

    const-string v10, "<"

    .line 295
    sget-boolean v8, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v8, :cond_0

    .line 296
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .line 298
    .local v6, tid:J
    array-length v8, p1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 299
    const/4 v8, 0x0

    aget-object v3, p1, v8

    .line 308
    .local v3, logText:Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-boolean v8, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v8, :cond_0

    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v3           #logText:Ljava/lang/String;
    .end local v6           #tid:J
    :cond_0
    return-void

    .line 301
    .restart local v6       #tid:J
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v8, 0x40

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 302
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 303
    .local v5, string:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    .end local v5           #string:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #logText:Ljava/lang/String;
    goto :goto_0
.end method

.method public abstract validateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method
