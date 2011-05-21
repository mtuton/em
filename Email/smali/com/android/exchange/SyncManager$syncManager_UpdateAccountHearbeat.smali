.class Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;
.super Ljava/lang/Thread;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "syncManager_UpdateAccountHearbeat"
.end annotation


# instance fields
.field private lFlag:J

.field private lHeatbeat:J

.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SyncManager;J)V
    .locals 2
    .parameter
    .parameter "heatbeat"

    .prologue
    .line 3543
    iput-object p1, p0, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->this$0:Lcom/android/exchange/SyncManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3544
    iput-wide p2, p0, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->lHeatbeat:J

    .line 3545
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->lFlag:J

    .line 3546
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "James"

    .line 3553
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 3554
    const-string v0, "James"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waiting for next alarm for updating AccountDB : = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->lHeatbeat:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3558
    :try_start_1
    iget-wide v0, p0, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->lHeatbeat:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 3559
    iget-wide v0, p0, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->lFlag:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 3560
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "James"

    const-string v1, "IFlag is not changed"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    :cond_1
    const-string v0, "PeakOffPeak"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 3566
    :cond_2
    :goto_0
    monitor-exit p0

    .line 3571
    :goto_1
    return-void

    .line 3564
    :cond_3
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "James"

    const-string v1, "IFlag is changed to 1"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3566
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3567
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3569
    :catchall_1
    move-exception v0

    throw v0
.end method

.method public setFlag()V
    .locals 2

    .prologue
    .line 3549
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->lFlag:J

    .line 3550
    return-void
.end method
