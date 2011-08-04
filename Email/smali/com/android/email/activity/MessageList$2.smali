.class Lcom/android/email/activity/MessageList$2;
.super Landroid/content/BroadcastReceiver;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 822
    if-eqz p2, :cond_1

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 824
    .local v10, action:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 825
    const-string v3, "android.intent.action.EMAILSEARCH_COMPLETED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList$MessageListHandler;->progress(Z)V

    .line 828
    const-string v3, "SearchResult"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 829
    .local v18, result:I
    const-string v3, "Total"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 830
    .local v20, total:I
    const-string v3, "StartRange"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 831
    .local v19, startRange:I
    const-string v3, "EndRange"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 832
    .local v12, endRange:I
    const-string v3, "MessageList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " total = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "startRange = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "endRange ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/16 v3, 0xd

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_2

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f0802cb

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 836
    new-instance v15, Lcom/android/email/mail/DeviceAccessException;

    const v3, 0x40001

    const v4, 0x7f0802cb

    invoke-direct {v15, v3, v4}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    .line 837
    .local v15, exception:Lcom/android/email/mail/DeviceAccessException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ControllerResults;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v5

    invoke-static {v3, v15, v4, v5, v6}, Lcom/android/email/activity/MessageList$ControllerResults;->access$400(Lcom/android/email/activity/MessageList$ControllerResults;Lcom/android/email/mail/MessagingException;IJ)V

    .line 858
    .end local v12           #endRange:I
    .end local v15           #exception:Lcom/android/email/mail/DeviceAccessException;
    .end local v18           #result:I
    .end local v19           #startRange:I
    .end local v20           #total:I
    :cond_0
    :goto_0
    const-string v3, "android.intent.action.ITEM_ESTIMATE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 859
    const-string v3, "collectionIds"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 860
    .local v11, collectionIDs:[Ljava/lang/String;
    const-string v3, "estimations"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 862
    .local v14, estimations:[Ljava/lang/String;
    if-eqz v11, :cond_1

    if-eqz v14, :cond_1

    array-length v3, v14

    array-length v4, v11

    if-ne v3, v4, :cond_1

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v17

    .line 867
    .local v17, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v17, :cond_6

    .line 869
    const-string v3, "MessageList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping... - No mailbox with this Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v3, "MessageList"

    const-string v4, "Otherwise, NullPointerException from mailbox.mServerId"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .end local v10           #action:Ljava/lang/String;
    .end local v11           #collectionIDs:[Ljava/lang/String;
    .end local v14           #estimations:[Ljava/lang/String;
    .end local v17           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    return-void

    .line 841
    .restart local v10       #action:Ljava/lang/String;
    .restart local v12       #endRange:I
    .restart local v18       #result:I
    .restart local v19       #startRange:I
    .restart local v20       #total:I
    :cond_2
    if-gtz v20, :cond_3

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f080255

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 844
    :cond_3
    add-int/lit8 v3, v12, 0x1

    move/from16 v0, v20

    move v1, v3

    if-le v0, v1, :cond_5

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f080258

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 848
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_4

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->cancel(Z)Z

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageList;->access$502(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 852
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v11, v0

    new-instance v3, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    invoke-static {v11, v3}, Lcom/android/email/activity/MessageList;->access$502(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 847
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f080254

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 874
    .end local v12           #endRange:I
    .end local v18           #result:I
    .end local v19           #startRange:I
    .end local v20           #total:I
    .restart local v11       #collectionIDs:[Ljava/lang/String;
    .restart local v14       #estimations:[Ljava/lang/String;
    .restart local v17       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_6
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    array-length v3, v11

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_1

    .line 875
    aget-object v3, v11, v16

    if-eqz v3, :cond_7

    aget-object v3, v11, v16

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "0"

    aget-object v4, v14, v16

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    move-object v3, v0

    const v4, 0x7f0700b7

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 880
    .local v13, estimateView:Landroid/widget/TextView;
    if-eqz v13, :cond_7

    .line 881
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    aget-object v3, v14, v16

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    .end local v13           #estimateView:Landroid/widget/TextView;
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_2
.end method
