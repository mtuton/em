.class Lcom/android/email/service/BootReceiver$BootHandler;
.super Landroid/os/Handler;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/BootReceiver;


# direct methods
.method constructor <init>(Lcom/android/email/service/BootReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/email/service/BootReceiver$BootHandler;->this$0:Lcom/android/email/service/BootReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 38
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/email/service/BootReceiver;->mMediaIntentRecvTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2af8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 39
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lcom/android/email/service/BootReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message check TIME Out >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/service/BootReceiver$BootHandler;->this$0:Lcom/android/email/service/BootReceiver;

    iget-object v2, v2, Lcom/android/email/service/BootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/email/service/BootReceiver$BootHandler;->this$0:Lcom/android/email/service/BootReceiver;

    iget-object v0, v0, Lcom/android/email/service/BootReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/email/service/BootReceiver$BootHandler;->this$0:Lcom/android/email/service/BootReceiver;

    iget-object v0, v0, Lcom/android/email/service/BootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeCheckMediaRunning()V
    .locals 2

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/android/email/service/BootReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove check media >>"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/service/BootReceiver$BootHandler;->removeMessages(I)V

    .line 62
    return-void
.end method

.method public startCheckMediaRunning()V
    .locals 3

    .prologue
    .line 52
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/android/email/service/BootReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start check media >>"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 55
    .local v0, m:Landroid/os/Message;
    const-wide/16 v1, 0x2af8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/service/BootReceiver$BootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 56
    return-void
.end method
