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


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public DeviceAccessError(I)V
    .locals 1
    .parameter "AccessErrorType"

    .prologue
    .line 945
    const v0, 0x40001

    if-ne p1, v0, :cond_1

    .line 946
    const/high16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    const v0, 0x40002

    if-ne p1, v0, :cond_0

    .line 948
    const v0, 0x80001

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public attachmentProgress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 905
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 906
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 907
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 908
    return-void

    .line 906
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public attachmentViewError()V
    .locals 1

    .prologue
    .line 956
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 957
    return-void
.end method

.method public errorLoadMore(I)V
    .locals 2
    .parameter "errorType"

    .prologue
    .line 980
    sparse-switch p1, :sswitch_data_0

    .line 1000
    const/high16 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 1004
    :goto_0
    return-void

    .line 982
    :sswitch_0
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 986
    :sswitch_1
    const/high16 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 991
    :sswitch_2
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 996
    :sswitch_3
    const-string v0, "Email"

    const-string v1, "errorLoadMore : LOADMORE_CANCEL "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/high16 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 980
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_0
        0x70000 -> :sswitch_1
        0x100000 -> :sswitch_3
    .end sparse-switch
.end method

.method public fetchingAttachment()V
    .locals 1

    .prologue
    .line 952
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 953
    return-void
.end method

.method public finishLoadAttachment(J)V
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 967
    const/16 v1, 0x13

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 968
    .local v0, msg:Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 969
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 970
    return-void
.end method

.method public finishLoadMore()V
    .locals 1

    .prologue
    .line 1007
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 1008
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v6, v0

    .line 614
    .local v6, context:Landroid/content/Context;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v14, v0

    sparse-switch v14, :sswitch_data_0

    .line 887
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 889
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 616
    .restart local p0
    .restart local p1
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v15, v0

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    :goto_1
    invoke-virtual {v14, v15}, Lcom/android/email/activity/MessageView;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 621
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0801d1

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 631
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 633
    :catch_0
    move-exception v14

    move-object v8, v14

    .line 634
    .local v8, e:Landroid/view/WindowManager$BadTokenException;
    const-string v14, "View >>"

    const-string v15, "BadTokenException - MSG_LOADMORE_START"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v8}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 637
    .end local v8           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v14

    move-object v8, v14

    .line 638
    .local v8, e:Ljava/lang/IllegalStateException;
    const-string v14, "View >>"

    const-string v15, "IllegalStateException - MSG_LOADMORE_START"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 640
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_0

    .line 647
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 654
    :goto_2
    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0801d2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v6, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 649
    :catch_2
    move-exception v14

    move-object v8, v14

    .line 650
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v14, "View >>"

    const-string v15, "IllegalStateException - MSG_LOADMORE_FINISH - dismiss()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 652
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_2

    .line 661
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->hide()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 668
    :goto_3
    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0801d3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v6, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 663
    :catch_3
    move-exception v14

    move-object v8, v14

    .line 664
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v14, "View >>"

    const-string v15, "IllegalStateException - MSG_LOADMORE_ERROR - dismiss()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 666
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_3

    .line 677
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->hide()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 684
    :goto_4
    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0801d4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v6, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 679
    :catch_4
    move-exception v14

    move-object v8, v14

    .line 680
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v14, "View >>"

    const-string v15, "IllegalStateException - MSG_LOADMORE_OUTOFMEMORY - dismiss()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 682
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_4

    .line 693
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->hide()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5

    .line 700
    :goto_5
    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0801d5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v6, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 695
    :catch_5
    move-exception v14

    move-object v8, v14

    .line 696
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v14, "View >>"

    const-string v15, "IllegalStateException - MSG_LOADMORE_NULLMSG - dismiss()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 698
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_5

    .line 707
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_6
    const-string v14, "Email"

    const-string v15, "MSG_LOADMORE_ERROR_FETCH_FAILURE"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->hide()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_6

    .line 717
    :goto_6
    invoke-virtual {v6}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0801d6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v6, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 712
    :catch_6
    move-exception v14

    move-object v8, v14

    .line 713
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v14, "Email"

    const-string v15, "IllegalStateException - MSG_LOADMORE_FETCH_FAILURE - dismiss()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 715
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_6

    .line 725
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_7
    const-string v14, "Email"

    const-string v15, "MSG_LOADMORE_CANCEL"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->hide()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 730
    :catch_7
    move-exception v14

    move-object v8, v14

    .line 731
    .restart local v8       #e:Ljava/lang/IllegalStateException;
    const-string v14, "Email"

    const-string v15, "IllegalStateException - MSG_LOADMORE_CANCEL - hide()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 733
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto/16 :goto_0

    .line 743
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$100(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    .line 745
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v14, v0

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    move v12, v14

    .line 746
    .local v12, progress:Z
    :goto_7
    if-eqz v12, :cond_7

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$200(Lcom/android/email/activity/MessageView;)I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_3

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f080082

    invoke-virtual {v14, v15}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, allAttachStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v15, v0

    const v16, 0x7f080075

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v2, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/android/email/activity/MessageView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 774
    .end local v2           #allAttachStr:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    new-instance v15, Lcom/android/email/activity/MessageView$MessageViewHandler$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageView$MessageViewHandler$1;-><init>(Lcom/android/email/activity/MessageView$MessageViewHandler;)V

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 786
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->show()V
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_8

    .line 800
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-virtual {v14, v12}, Lcom/android/email/activity/MessageView;->setProgressBarIndeterminateVisibility(Z)V

    goto/16 :goto_0

    .line 745
    .end local v12           #progress:Z
    :cond_2
    const/4 v14, 0x0

    move v12, v14

    goto :goto_7

    .line 754
    .restart local v12       #progress:Z
    :cond_3
    const/4 v11, 0x0

    .line 755
    .local v11, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$400(Lcom/android/email/activity/MessageView;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$500(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$500(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v14, :cond_5

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f0802ae

    invoke-virtual {v14, v15}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 764
    :cond_4
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_8

    .line 758
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$500(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$500(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    if-eqz v14, :cond_4

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f0802af

    invoke-virtual {v14, v15}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    .line 761
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f080075

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/email/activity/MessageView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    .line 787
    .end local v11           #message:Ljava/lang/String;
    :catch_8
    move-exception v14

    move-object v9, v14

    .line 788
    .local v9, ex:Landroid/view/WindowManager$BadTokenException;
    const-string v14, "View >>"

    const-string v15, "BadTokenException - MSG_ATTACHMENT_PROGRESS"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {v9}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_9

    .line 795
    .end local v9           #ex:Landroid/view/WindowManager$BadTokenException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->hide()V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/email/activity/MessageView;->access$702(Lcom/android/email/activity/MessageView;Z)Z

    goto/16 :goto_9

    .line 803
    .end local v12           #progress:Z
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 804
    .local v13, uriString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 809
    .end local v13           #uriString:Ljava/lang/String;
    :sswitch_a
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$900(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .local v7, count:I
    :goto_b
    if-ge v10, v7, :cond_0

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$900(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 813
    .local v3, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-object v14, v3, Lcom/android/email/activity/MessageView$AttachmentInfo;->downloadButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    const/4 v15, 0x1

    :goto_c
    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 809
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 813
    :cond_8
    const/4 v15, 0x0

    goto :goto_c

    .line 817
    .end local v3           #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    .end local v7           #count:I
    .end local v10           #i:I
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f08003e

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 821
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 823
    :cond_9
    const-string v14, "MessageView"

    const-string v15, " fzhang Hit string.status_network_error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f08003a

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 828
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v15, v0

    const v16, 0x7f080074

    invoke-virtual/range {v15 .. v16}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 833
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v15, v0

    const v16, 0x7f080080

    invoke-virtual/range {v15 .. v16}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 838
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$900(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v15, v0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->iconView:Landroid/widget/ImageView;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 843
    .restart local p0
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$1000(Lcom/android/email/activity/MessageView;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$1100(Lcom/android/email/activity/MessageView;)V

    goto/16 :goto_0

    .line 846
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 851
    .local v4, attachmentId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14, v4, v5}, Lcom/android/email/activity/MessageView;->access$1200(Lcom/android/email/activity/MessageView;J)V

    goto/16 :goto_0

    .line 858
    .end local v4           #attachmentId:J
    .restart local p1
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v15, v0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 861
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$1300(Lcom/android/email/activity/MessageView;)V

    goto/16 :goto_0

    .line 867
    :sswitch_13
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "11111 MessageView.java >>>>> handleMessage()  >>>>> 588"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f0801a5

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 875
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->hide()V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f0802cb

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 881
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->hide()V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    move-object v14, v0

    const v15, 0x7f0802cd

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 614
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0x4 -> :sswitch_a
        0x5 -> :sswitch_b
        0x6 -> :sswitch_c
        0xa -> :sswitch_d
        0xc -> :sswitch_e
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x14 -> :sswitch_13
        0x15 -> :sswitch_11
        0x16 -> :sswitch_12
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_6
        0x70000 -> :sswitch_7
        0x80000 -> :sswitch_14
        0x80001 -> :sswitch_15
    .end sparse-switch
.end method

.method public loadBodyError()V
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 930
    return-void
.end method

.method public loadContentUri(Ljava/lang/String;)V
    .locals 2
    .parameter "uriString"

    .prologue
    .line 917
    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 918
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 919
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 920
    return-void
.end method

.method public networkError()V
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 934
    return-void
.end method

.method public progress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 911
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 912
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 913
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 914
    return-void

    .line 912
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public securityRequiredError()V
    .locals 2

    .prologue
    .line 938
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> securityRequiredError()  >>>>> 634"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 939
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 940
    return-void
.end method

.method public setAttachmentsEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 923
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 924
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 925
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 926
    return-void

    .line 924
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startLoadMore()V
    .locals 1

    .prologue
    .line 975
    const/high16 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 976
    return-void
.end method

.method public updateAttachmentIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "pos"
    .parameter "icon"

    .prologue
    .line 960
    const/16 v1, 0x12

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 961
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 962
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 963
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 964
    return-void
.end method
