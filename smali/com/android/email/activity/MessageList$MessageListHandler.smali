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


# static fields
.field private static final MSG_ERROR_BANNER:I = 0x3

.field private static final MSG_LOOKUP_MAILBOX_TYPE:I = 0x2

.field private static final MSG_MOVE_PROGRESS:I = 0x5

.field private static final MSG_PROGRESS:I = 0x1

.field private static final MSG_REQUERY_LIST:I = 0x4

.field private static final MSG_SHOW_MESSAGE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 5868
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/16 v1, 0x8

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 5879
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 5961
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 5963
    :cond_0
    :goto_0
    return-void

    .line 5881
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v1, v12

    :goto_1
    iput-boolean v1, v0, Lcom/android/email/activity/MessageList;->mMoveDialogVisible:Z

    .line 5882
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    iget-boolean v0, v0, Lcom/android/email/activity/MessageList;->mMoveDialogVisible:Z

    if-eqz v0, :cond_2

    .line 5883
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const v5, 0x7f080161

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->setMessage(Ljava/lang/CharSequence;)V

    .line 5884
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->show()V

    goto :goto_0

    :cond_1
    move v1, v5

    .line 5881
    goto :goto_1

    .line 5887
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->hide()V

    goto :goto_0

    .line 5892
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    move v11, v12

    .line 5893
    .local v11, visible:Z
    :goto_2
    if-eqz v11, :cond_6

    .line 5894
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6200(Lcom/android/email/activity/MessageList;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5898
    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8200(Lcom/android/email/activity/MessageList;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5899
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8200(Lcom/android/email/activity/MessageList;)Landroid/view/View;

    move-result-object v0

    if-eqz v11, :cond_3

    move v1, v5

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5901
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, v11}, Lcom/android/email/activity/MessageList;->access$8300(Lcom/android/email/activity/MessageList;Z)V

    goto :goto_0

    .end local v11           #visible:Z
    :cond_5
    move v11, v5

    .line 5892
    goto :goto_2

    .line 5896
    .restart local v11       #visible:Z
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6200(Lcom/android/email/activity/MessageList;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 5904
    .end local v11           #visible:Z
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5905
    .local v2, accountId:J
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 5906
    .local v4, mailboxType:I
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, v2, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v7

    .line 5907
    .local v7, mailboxId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-eqz v0, :cond_7

    .line 5908
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, v7, v8}, Lcom/android/email/activity/MessageList;->access$302(Lcom/android/email/activity/MessageList;J)J

    .line 5909
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8400(Lcom/android/email/activity/MessageList;)V

    .line 5913
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$FindMailboxTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_8

    .line 5915
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/email/activity/MessageList$FindMailboxTask;->cancel(Z)Z

    .line 5916
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$8502(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$FindMailboxTask;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 5920
    :cond_8
    iget-object v12, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v0, Lcom/android/email/activity/MessageList$FindMailboxTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$FindMailboxTask;-><init>(Lcom/android/email/activity/MessageList;JIZ)V

    invoke-static {v12, v0}, Lcom/android/email/activity/MessageList;->access$8502(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$FindMailboxTask;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 5921
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$FindMailboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5924
    .end local v2           #accountId:J
    .end local v4           #mailboxType:I
    .end local v7           #mailboxId:J
    :pswitch_3
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 5925
    .local v9, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    move v6, v12

    .line 5926
    .local v6, isVisible:Z
    :goto_4
    if-eqz v9, :cond_a

    .line 5927
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5928
    if-nez v6, :cond_0

    .line 5929
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5930
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const v5, 0x7f040002

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .end local v6           #isVisible:Z
    :cond_9
    move v6, v5

    .line 5925
    goto :goto_4

    .line 5935
    .restart local v6       #isVisible:Z
    :cond_a
    if-eqz v6, :cond_0

    .line 5936
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5937
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    const v5, 0x7f040003

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 5944
    .end local v6           #isVisible:Z
    .end local v9           #message:Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5945
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->doRequery()V

    .line 5946
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8700(Lcom/android/email/activity/MessageList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 5947
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)V

    .line 5949
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8900(Lcom/android/email/activity/MessageList;)V

    goto/16 :goto_0

    .line 5954
    :pswitch_5
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 5955
    .local v10, string:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 5956
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListHandler;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, v10, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5879
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public lookupMailboxType(JI)V
    .locals 2
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 5991
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5992
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5993
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 5994
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5995
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5996
    return-void
.end method

.method public progress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 5977
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5978
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5979
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5980
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5981
    return-void

    .line 5979
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public progressMove(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 5966
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5967
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5968
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5969
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5970
    return-void

    .line 5968
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requeryList()V
    .locals 1

    .prologue
    .line 6022
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendEmptyMessage(I)Z

    .line 6023
    return-void
.end method

.method public showErrorBanner(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 6003
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6004
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6005
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6006
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6007
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 6011
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6012
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6013
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6014
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6015
    return-void
.end method
