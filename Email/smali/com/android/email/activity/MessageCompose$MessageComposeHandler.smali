.class Lcom/android/email/activity/MessageCompose$MessageComposeHandler;
.super Landroid/os/Handler;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageComposeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method public attachmentProgress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 562
    const/16 v1, 0x8f

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 563
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 564
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 565
    return-void

    .line 563
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finishLoadAttachment(J)V
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 568
    const/16 v1, 0x90

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 569
    .local v0, msg:Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 570
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 571
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 496
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 556
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 559
    .end local p0
    :goto_0
    return-void

    .line 498
    .restart local p0
    :sswitch_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v4, v6}, Lcom/android/email/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 501
    :sswitch_1
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 504
    :sswitch_2
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$000(Lcom/android/email/activity/MessageCompose;)V

    goto :goto_0

    .line 507
    :sswitch_3
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    const v6, 0x7f080068

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 513
    :sswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    move v3, v6

    .line 514
    .local v3, progress:Z
    :goto_1
    if-eqz v3, :cond_3

    .line 516
    const/4 v2, 0x0

    .line 517
    .local v2, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v4, :cond_2

    .line 519
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    const v5, 0x7f0802ae

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 535
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 542
    .end local v2           #message:Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v4, v3}, Lcom/android/email/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .end local v3           #progress:Z
    :cond_1
    move v3, v7

    .line 513
    goto :goto_1

    .line 520
    .restart local v2       #message:Ljava/lang/String;
    .restart local v3       #progress:Z
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    if-eqz v4, :cond_0

    .line 521
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    const v5, 0x7f0802af

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 537
    .end local v2           #message:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_3

    .line 545
    .end local v3           #progress:Z
    :sswitch_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 553
    .local v0, attachmentId:J
    goto/16 :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8f -> :sswitch_4
        0x90 -> :sswitch_5
    .end sparse-switch
.end method
