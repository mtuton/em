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


# static fields
.field private static final MSG_ERROR_BANNER:I = 0x2

.field private static final MSG_PROGRESS:I = 0x1

.field private static final MSG_SHOW_MESSAGE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0
    .parameter

    .prologue
    .line 519
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

    .line 528
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 570
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 530
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    move v2, v6

    .line 531
    .local v2, showProgress:Z
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 533
    if-eqz v2, :cond_2

    .line 534
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .end local v2           #showProgress:Z
    :cond_1
    move v2, v5

    .line 530
    goto :goto_1

    .line 536
    .restart local v2       #showProgress:Z
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 541
    .end local v2           #showProgress:Z
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 542
    .local v1, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v6

    .line 543
    .local v0, isVisible:Z
    :goto_2
    if-eqz v1, :cond_4

    .line 544
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    if-nez v0, :cond_0

    .line 546
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
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

    .line 542
    goto :goto_2

    .line 552
    .restart local v0       #isVisible:Z
    :cond_4
    if-eqz v0, :cond_0

    .line 553
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    const v6, 0x7f040003

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 562
    .end local v0           #isVisible:Z
    .end local v1           #message:Ljava/lang/String;
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, string:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 564
    iget-object v4, p0, Lcom/android/email/activity/MailboxList$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 528
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

    .line 588
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 589
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 590
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 591
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 592
    return-void

    .line 590
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showErrorBanner(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 599
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 600
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 601
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 602
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 603
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 576
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 577
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 578
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 579
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 580
    return-void
.end method
