.class Lcom/android/email/activity/MessageView$6;
.super Ljava/lang/Thread;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView;->onRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;

.field final synthetic val$syncAccountId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/android/email/activity/MessageView$6;->this$0:Lcom/android/email/activity/MessageView;

    iput-wide p2, p0, Lcom/android/email/activity/MessageView$6;->val$syncAccountId:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/email/activity/MessageView$6;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1200(Lcom/android/email/activity/MessageView;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageView$6;->val$syncAccountId:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->processPendingActions(JZ)V

    .line 1590
    return-void
.end method
