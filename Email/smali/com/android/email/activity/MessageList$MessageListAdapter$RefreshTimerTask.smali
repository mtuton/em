.class Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimerTask;
.super Ljava/util/TimerTask;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList$MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshTimerTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageList$MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList$MessageListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 8304
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimerTask;->this$1:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 8307
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimerTask;->this$1:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$5300(Lcom/android/email/activity/MessageList$MessageListAdapter;)V

    .line 8308
    return-void
.end method
