.class Lcom/android/email/activity/MessageCompose$5;
.super Landroid/content/BroadcastReceiver;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 708
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, action:Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "11111 MessageCompose.java >>>>> BroadcastReceiver >>>>> 700"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 710
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    const-string v1, "Email"

    const-string v2, "DPMReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1200(Lcom/android/email/activity/MessageCompose;)V

    .line 719
    :cond_0
    return-void
.end method
