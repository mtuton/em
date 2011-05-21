.class Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;
.super Ljava/util/Timer;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList$MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshTimer"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageList$MessageListAdapter;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList$MessageListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 6530
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->this$1:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 6531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->timerTask:Ljava/util/TimerTask;

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 6534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->timerTask:Ljava/util/TimerTask;

    .line 6535
    return-void
.end method

.method protected declared-synchronized schedule(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 6538
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->timerTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 6545
    :goto_0
    monitor-exit p0

    return-void

    .line 6539
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 6540
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->this$1:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$4900(Lcom/android/email/activity/MessageList$MessageListAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6542
    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimerTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->this$1:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimerTask;-><init>(Lcom/android/email/activity/MessageList$MessageListAdapter;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->timerTask:Ljava/util/TimerTask;

    .line 6543
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
