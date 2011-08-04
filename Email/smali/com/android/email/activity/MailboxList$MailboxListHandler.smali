.class Lcom/android/email/activity/MailboxList$MailboxListHandler;
.super Landroid/os/Handler;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 532
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 574
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 534
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    move v2, v6

    .line 535
    .local v2, showProgress:Z
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 537
    if-eqz v2, :cond_2

    .line 538
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .end local v2           #showProgress:Z
    :cond_1
    move v2, v5

    .line 534
    goto :goto_1

    .line 540
    .restart local v2       #showProgress:Z
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 545
    .end local v2           #showProgress:Z
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 546
    .local v1, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v6

    .line 547
    .local v0, isVisible:Z
    :goto_2
    if-eqz v1, :cond_4

    .line 548
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    if-nez v0, :cond_0

    .line 550
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    const v6, 0x7f040002

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .end local v0           #isVisible:Z
    :cond_3
    move v0, v5

    .line 546
    goto :goto_2

    .line 556
    .restart local v0       #isVisible:Z
    :cond_4
    if-eqz v0, :cond_0

    .line 557
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    const v6, 0x7f040003

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 566
    .end local v0           #isVisible:Z
    .end local v1           #message:Ljava/lang/String;
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 567
    .local v3, string:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 568
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public progress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 592
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 593
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 594
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 595
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    return-void

    .line 594
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showErrorBanner(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 604
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 605
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 606
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 607
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 580
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 581
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 582
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 583
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 584
    return-void
.end method
