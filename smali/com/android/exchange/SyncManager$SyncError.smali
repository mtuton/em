.class Lcom/android/exchange/SyncManager$SyncError;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncError"
.end annotation


# instance fields
.field fatal:Z

.field holdDelay:J

.field holdEndTime:J

.field reason:I

.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/exchange/SyncManager;IZ)V
    .locals 4
    .parameter
    .parameter "_reason"
    .parameter "_fatal"

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/android/exchange/SyncManager$SyncError;->this$0:Lcom/android/exchange/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    .line 1253
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/exchange/SyncManager$SyncError;->holdDelay:J

    .line 1254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/SyncManager$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    .line 1257
    iput p2, p0, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    .line 1258
    iput-boolean p3, p0, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    .line 1259
    return-void
.end method


# virtual methods
.method escalate()V
    .locals 4

    .prologue
    .line 1265
    iget-wide v0, p0, Lcom/android/exchange/SyncManager$SyncError;->holdDelay:J

    const-wide/32 v2, 0x3a980

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1266
    iget-wide v0, p0, Lcom/android/exchange/SyncManager$SyncError;->holdDelay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/SyncManager$SyncError;->holdDelay:J

    .line 1268
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/SyncManager$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    .line 1269
    return-void
.end method
