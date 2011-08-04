.class Lcom/android/email/activity/MessageList$MessageListHandler;
.super Landroid/os/Handler;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 7467
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 7480
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 7577
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7579
    :cond_0
    :goto_0
    return-void

    .line 7482
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/android/email/activity/MessageList;->mMoveDialogVisible:Z

    .line 7483
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    iget-boolean v0, v0, Lcom/android/email/activity/MessageList;->mMoveDialogVisible:Z

    if-eqz v0, :cond_2

    .line 7484
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const v2, 0x7f080179

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->setMessage(Ljava/lang/CharSequence;)V

    .line 7485
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->show()V

    goto :goto_0

    .line 7482
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 7488
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->hide()V

    goto :goto_0

    .line 7493
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v13, v0

    .line 7494
    .local v13, visible:Z
    :goto_2
    if-eqz v13, :cond_5

    .line 7495
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6900(Lcom/android/email/activity/MessageList;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7509
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, v13}, Lcom/android/email/activity/MessageList;->access$9100(Lcom/android/email/activity/MessageList;Z)V

    goto :goto_0

    .line 7493
    .end local v13           #visible:Z
    :cond_4
    const/4 v0, 0x0

    move v13, v0

    goto :goto_2

    .line 7497
    .restart local v13       #visible:Z
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6900(Lcom/android/email/activity/MessageList;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7499
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 7500
    .local v6, estimateView:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 7501
    const-string v0, ""

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7502
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 7512
    .end local v6           #estimateView:Landroid/widget/TextView;
    .end local v13           #visible:Z
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 7513
    .local v2, accountId:J
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 7514
    .local v4, mailboxType:I
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, v2, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v8

    .line 7515
    .local v8, mailboxId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_6

    .line 7516
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, v8, v9}, Lcom/android/email/activity/MessageList;->access$202(Lcom/android/email/activity/MessageList;J)J

    .line 7517
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9200(Lcom/android/email/activity/MessageList;)V

    .line 7521
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9300(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9300(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$FindMailboxTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_7

    .line 7523
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9300(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$FindMailboxTask;->cancel(Z)Z

    .line 7524
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$9302(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$FindMailboxTask;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 7528
    :cond_7
    iget-object v6, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v0, Lcom/android/email/activity/MessageList$FindMailboxTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$FindMailboxTask;-><init>(Lcom/android/email/activity/MessageList;JIZ)V

    invoke-static {v6, v0}, Lcom/android/email/activity/MessageList;->access$9302(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$FindMailboxTask;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 7529
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9300(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$FindMailboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 7532
    .end local v2           #accountId:J
    .end local v4           #mailboxType:I
    .end local v8           #mailboxId:J
    :pswitch_3
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 7533
    .local v10, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    move v7, v0

    .line 7534
    .local v7, isVisible:Z
    :goto_4
    if-eqz v10, :cond_9

    .line 7535
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7536
    if-nez v7, :cond_0

    .line 7537
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7538
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 7533
    .end local v7           #isVisible:Z
    :cond_8
    const/4 v0, 0x0

    move v7, v0

    goto :goto_4

    .line 7543
    .restart local v7       #isVisible:Z
    :cond_9
    if-eqz v7, :cond_0

    .line 7544
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7545
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 7552
    .end local v7           #isVisible:Z
    .end local v10           #message:Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7553
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->doRequery()V

    .line 7554
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9400(Lcom/android/email/activity/MessageList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 7555
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9500(Lcom/android/email/activity/MessageList;)V

    .line 7557
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9600(Lcom/android/email/activity/MessageList;)V

    goto/16 :goto_0

    .line 7562
    :pswitch_5
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 7563
    .local v11, string:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 7564
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 7570
    .end local v11           #string:Ljava/lang/String;
    :pswitch_6
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 7571
    .local v12, stringConv:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 7572
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    invoke-static {v0, v12, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 7480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public lookupMailboxType(JI)V
    .locals 2
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 7607
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7608
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7609
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 7610
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7611
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7612
    return-void
.end method

.method public progress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 7593
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7594
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7595
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7596
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7597
    return-void

    .line 7595
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public progressMove(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 7582
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7583
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7584
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7585
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7586
    return-void

    .line 7584
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requeryList()V
    .locals 1

    .prologue
    .line 7644
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendEmptyMessage(I)Z

    .line 7645
    return-void
.end method

.method public showErrorBanner(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 7619
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7620
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7621
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7622
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7623
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 7627
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7628
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7629
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7630
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7631
    return-void
.end method
