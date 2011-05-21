.class Lcom/android/email/activity/MessageView$MessageViewHandler;
.super Landroid/os/Handler;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageViewHandler"
.end annotation


# static fields
.field private static final MSG_ATTACHMENT_PROGRESS:I = 0x2

.field private static final MSG_FETCHING_ATTACHMENT:I = 0xa

.field private static final MSG_FINISH_LOAD_ATTACHMENT:I = 0x13

.field private static final MSG_LOADMORE_ERROR:I = 0x30000

.field private static final MSG_LOADMORE_ERROR_FETCH_FAILURE:I = 0x60000

.field private static final MSG_LOADMORE_ERROR_NULLMSG:I = 0x50000

.field private static final MSG_LOADMORE_ERROR_OUTOFMEMORY:I = 0x40000

.field private static final MSG_LOADMORE_FINISH:I = 0x20000

.field private static final MSG_LOADMORE_START:I = 0x10000

.field private static final MSG_LOAD_BODY_ERROR:I = 0x5

.field private static final MSG_LOAD_CONTENT_URI:I = 0x3

.field private static final MSG_NETWORK_ERROR:I = 0x6

.field private static final MSG_PROGRESS:I = 0x1

.field private static final MSG_SECURITYREQUIRED_ERROR:I = 0x14

.field private static final MSG_SET_ATTACHMENTS_ENABLED:I = 0x4

.field private static final MSG_UPDATE_ATTACHMENT_ICON:I = 0x12

.field private static final MSG_VIEW_ATTACHMENT_ERROR:I = 0xc


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public attachmentProgress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 642
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 643
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 644
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 645
    return-void

    .line 643
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public attachmentViewError()V
    .locals 1

    .prologue
    .line 685
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 686
    return-void
.end method

.method public errorLoadMore(I)V
    .locals 1
    .parameter "errorType"

    .prologue
    .line 709
    sparse-switch p1, :sswitch_data_0

    .line 724
    const/high16 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 728
    :goto_0
    return-void

    .line 711
    :sswitch_0
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 715
    :sswitch_1
    const/high16 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 720
    :sswitch_2
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 709
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_0
        0x70000 -> :sswitch_1
    .end sparse-switch
.end method

.method public fetchingAttachment()V
    .locals 1

    .prologue
    .line 681
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 682
    return-void
.end method

.method public finishLoadAttachment(J)V
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 696
    const/16 v1, 0x13

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 697
    .local v0, msg:Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 699
    return-void
.end method

.method public finishLoadMore()V
    .locals 1

    .prologue
    .line 731
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 732
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v6, v0

    .line 431
    .local v6, context:Landroid/content/Context;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    sparse-switch v13, :sswitch_data_0

    .line 637
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 639
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 433
    .restart local p0
    .restart local p1
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v14, v0

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v13, v14}, Lcom/android/email/activity/MessageView;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 438
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0801aa

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 444
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v13

    if-nez v13, :cond_2

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 449
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 450
    .local v8, e:Landroid/view/WindowManager$BadTokenException;
    const-string v13, "View >>"

    const-string v14, "BadTokenException - MSG_LOADMORE_START"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v8}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 447
    .end local v8           #e:Landroid/view/WindowManager$BadTokenException;
    :cond_2
    :try_start_1
    const-string v13, "View >>"

    const-string v14, "mLoadMoreDialog.isShowing()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 453
    :catch_1
    move-exception v13

    move-object v8, v13

    .line 454
    .local v8, e:Ljava/lang/IllegalStateException;
    const-string v13, "View >>"

    const-string v14, "IllegalStateException - MSG_LOADMORE_START"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 456
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_0

    .line 463
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 470
    :goto_2
    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801ab

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 465
    :catch_2
    move-exception v13

    move-object v8, v13

    .line 466
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v13, "View >>"

    const-string v14, "IllegalStateException - MSG_LOADMORE_FINISH - dismiss()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 468
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_2

    .line 477
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 484
    :goto_3
    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801ac

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 479
    :catch_3
    move-exception v13

    move-object v8, v13

    .line 480
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v13, "View >>"

    const-string v14, "IllegalStateException - MSG_LOADMORE_ERROR - dismiss()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 482
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_3

    .line 493
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    .line 500
    :goto_4
    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801ad

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 495
    :catch_4
    move-exception v13

    move-object v8, v13

    .line 496
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v13, "View >>"

    const-string v14, "IllegalStateException - MSG_LOADMORE_OUTOFMEMORY - dismiss()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 498
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_4

    .line 509
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    .line 516
    :goto_5
    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801ae

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 511
    :catch_5
    move-exception v13

    move-object v8, v13

    .line 512
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v13, "View >>"

    const-string v14, "IllegalStateException - MSG_LOADMORE_NULLMSG - dismiss()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 514
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_5

    .line 525
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6

    .line 532
    :goto_6
    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801af

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 527
    :catch_6
    move-exception v13

    move-object v8, v13

    .line 528
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v13, "View >>"

    const-string v14, "IllegalStateException - MSG_LOADMORE_FETCH_FAILURE - dismiss()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 530
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_6

    .line 539
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$100(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v13

    if-nez v13, :cond_0

    .line 541
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v13, v0

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    move v11, v13

    .line 542
    .local v11, progress:Z
    :goto_7
    if-eqz v11, :cond_5

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$200(Lcom/android/email/activity/MessageView;)I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_4

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    const v14, 0x7f080078

    invoke-virtual {v13, v14}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, allAttachStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f08006b

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/email/activity/MessageView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 561
    .end local v2           #allAttachStr:Ljava/lang/String;
    :goto_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->show()V
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_7

    .line 575
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-virtual {v13, v11}, Lcom/android/email/activity/MessageView;->setProgressBarIndeterminateVisibility(Z)V

    goto/16 :goto_0

    .line 541
    .end local v11           #progress:Z
    :cond_3
    const/4 v13, 0x0

    move v11, v13

    goto :goto_7

    .line 549
    .restart local v11       #progress:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f08006b

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/email/activity/MessageView;->access$400(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/email/activity/MessageView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_8

    .line 562
    :catch_7
    move-exception v13

    move-object v9, v13

    .line 563
    .local v9, ex:Landroid/view/WindowManager$BadTokenException;
    const-string v13, "View >>"

    const-string v14, "BadTokenException - MSG_ATTACHMENT_PROGRESS"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {v9}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_9

    .line 570
    .end local v9           #ex:Landroid/view/WindowManager$BadTokenException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->hide()V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/email/activity/MessageView;->access$502(Lcom/android/email/activity/MessageView;Z)Z

    goto :goto_9

    .line 578
    .end local v11           #progress:Z
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 579
    .local v12, uriString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    .end local v12           #uriString:Ljava/lang/String;
    :sswitch_9
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$700(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .local v7, count:I
    :goto_a
    if-ge v10, v7, :cond_0

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$700(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 588
    .local v3, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-object v13, v3, Lcom/android/email/activity/MessageView$AttachmentInfo;->downloadButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    :goto_b
    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 584
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 588
    :cond_6
    const/4 v14, 0x0

    goto :goto_b

    .line 592
    .end local v3           #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    .end local v7           #count:I
    .end local v10           #i:I
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    const v14, 0x7f080037

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 596
    :sswitch_b
    const-string v13, "MessageView"

    const-string v14, " fzhang Hit string.status_network_error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    const v14, 0x7f080033

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 601
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f08006a

    invoke-virtual {v14, v15}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 606
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f080076

    invoke-virtual {v14, v15}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 611
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$700(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v14, v0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->iconView:Landroid/widget/ImageView;

    move-object v13, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 616
    .restart local p0
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageView;->access$900(Lcom/android/email/activity/MessageView;)V

    goto/16 :goto_0

    .line 619
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 620
    .local v4, attachmentId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    invoke-static {v13, v4, v5}, Lcom/android/email/activity/MessageView;->access$1000(Lcom/android/email/activity/MessageView;J)V

    goto/16 :goto_0

    .line 629
    .end local v4           #attachmentId:J
    .restart local p1
    :sswitch_10
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "11111 MessageView.java >>>>> handleMessage()  >>>>> 588"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v13, v0

    const v14, 0x7f080188

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 431
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_9
        0x5 -> :sswitch_a
        0x6 -> :sswitch_b
        0xa -> :sswitch_c
        0xc -> :sswitch_d
        0x12 -> :sswitch_e
        0x13 -> :sswitch_f
        0x14 -> :sswitch_10
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_6
    .end sparse-switch
.end method

.method public loadBodyError()V
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 667
    return-void
.end method

.method public loadContentUri(Ljava/lang/String;)V
    .locals 2
    .parameter "uriString"

    .prologue
    .line 654
    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 655
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    return-void
.end method

.method public networkError()V
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 671
    return-void
.end method

.method public progress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 648
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 649
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 650
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 651
    return-void

    .line 649
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public securityRequiredError()V
    .locals 2

    .prologue
    .line 675
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> securityRequiredError()  >>>>> 634"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 676
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 677
    return-void
.end method

.method public setAttachmentsEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 660
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 661
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 662
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 663
    return-void

    .line 661
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startLoadMore()V
    .locals 1

    .prologue
    .line 704
    const/high16 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 705
    return-void
.end method

.method public updateAttachmentIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "pos"
    .parameter "icon"

    .prologue
    .line 689
    const/16 v1, 0x12

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 690
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 691
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 692
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 693
    return-void
.end method
