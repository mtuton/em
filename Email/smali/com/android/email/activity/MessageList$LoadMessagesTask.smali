.class Lcom/android/email/activity/MessageList$LoadMessagesTask;
.super Landroid/os/AsyncTask;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessagesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/MergeCursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountKey:J

.field private mMailboxKey:J

.field private mMailboxTypeForList:I

.field private mRealPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageList$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshView:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field private versionDouble:D


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;JJZ)V
    .locals 2
    .parameter
    .parameter "mailboxKey"
    .parameter "accountKey"
    .parameter "refreshView"

    .prologue
    .line 5830
    iput-object p1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5821
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->versionDouble:D

    .line 5825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    .line 5831
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    .line 5832
    iput-wide p4, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mAccountKey:J

    .line 5833
    iput-boolean p6, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRefreshView:Z

    .line 5834
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    .line 5835
    return-void
.end method

.method private makeSeparator(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 6805
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 6809
    .local v0, childCursor:Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 6810
    .local v1, row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6811
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6812
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6813
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6814
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/MergeCursor;
    .locals 77
    .parameter "params"

    .prologue
    .line 5852
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v49

    .line 5854
    .local v49, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v49, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, v49

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MessageList;->access$5700(Lcom/android/email/activity/MessageList;J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5856
    move-object/from16 v0, v49

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide/from16 v19, v0

    .line 5857
    .local v19, accountKey:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v46

    .line 5859
    .local v46, mConvAccount:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageList$LoadMessagesTask;->versionDouble:D

    .line 5861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->versionDouble:D

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MessageList;->access$5802(Lcom/android/email/activity/MessageList;D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5873
    .end local v19           #accountKey:J
    .end local v46           #mConvAccount:Lcom/android/email/provider/EmailContent$Account;
    .end local v49           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 5874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$5902(Lcom/android/email/activity/MessageList;I)I

    .line 5880
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$5000(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 5881
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$800()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$800()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 5882
    :cond_0
    const/16 v49, 0x0

    .line 5883
    .restart local v49       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    if-nez v4, :cond_6

    .line 5884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v49

    .line 5889
    :goto_2
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0

    if-nez v4, :cond_7

    .line 5890
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$800()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 5891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$600(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5892
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$802(I)I

    .line 5910
    .end local v49           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v12

    .line 5911
    .local v12, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_b

    .line 5912
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    const-wide/16 v6, -0x5

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 5913
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    .line 5930
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    const-wide/16 v6, -0x4

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    .line 5931
    new-instance v57, Ljava/lang/StringBuilder;

    move-object/from16 v0, v57

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5932
    .local v57, select_acc:Ljava/lang/StringBuilder;
    const/16 v41, 0x1

    .line 5933
    .local v41, first_acc:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v27

    .line 5936
    .local v27, c2:Landroid/database/Cursor;
    if-eqz v27, :cond_11

    .line 5938
    const/4 v4, -0x1

    :try_start_2
    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5939
    :cond_3
    :goto_5
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5940
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 5941
    .local v21, accountid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageList;->access$5700(Lcom/android/email/activity/MessageList;J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5942
    if-eqz v41, :cond_e

    .line 5943
    const-string v4, " AND ("

    move-object/from16 v0, v57

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5944
    const/16 v41, 0x0

    .line 5948
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v57

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 5954
    .end local v21           #accountid:J
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6626
    .end local v12           #selection:Ljava/lang/String;
    .end local v27           #c2:Landroid/database/Cursor;
    .end local v41           #first_acc:Z
    .end local v57           #select_acc:Ljava/lang/StringBuilder;
    .end local p1
    :catch_0
    move-exception v4

    move-object/from16 v56, v4

    .line 6627
    .local v56, rte:Ljava/lang/RuntimeException;
    invoke-virtual/range {v56 .. v56}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 6628
    const/4 v4, 0x0

    .end local v56           #rte:Ljava/lang/RuntimeException;
    :goto_7
    return-object v4

    .line 5865
    .restart local v49       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local p1
    :cond_4
    const-wide/16 v4, 0x0

    :try_start_4
    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageList$LoadMessagesTask;->versionDouble:D

    .line 5866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->versionDouble:D

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MessageList;->access$5802(Lcom/android/email/activity/MessageList;D)D
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 5868
    .end local v49           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :catch_1
    move-exception v4

    move-object/from16 v39, v4

    .line 5869
    .local v39, e:Ljava/lang/Exception;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 5876
    .end local v39           #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$5902(Lcom/android/email/activity/MessageList;I)I

    goto/16 :goto_1

    .line 5887
    .restart local v49       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v49

    goto/16 :goto_2

    .line 5894
    :cond_7
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_8

    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    .line 5897
    :cond_8
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$800()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 5898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$600(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5899
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$802(I)I

    goto/16 :goto_3

    .line 5902
    :cond_9
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$800()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 5903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$600(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5904
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$802(I)I

    goto/16 :goto_3

    .line 5914
    .end local v49           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v12       #selection:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    const-wide/16 v6, -0x6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 5915
    const/4 v4, 0x4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    goto/16 :goto_4

    .line 5919
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 5920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    iget v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    goto/16 :goto_4

    .line 5923
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v48

    .line 5924
    .local v48, mailBox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v48, :cond_d

    const/4 v4, 0x0

    :goto_8
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8

    .line 5947
    .end local v48           #mailBox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v21       #accountid:J
    .restart local v27       #c2:Landroid/database/Cursor;
    .restart local v41       #first_acc:Z
    .restart local v57       #select_acc:Ljava/lang/StringBuilder;
    :cond_e
    :try_start_6
    const-string v4, " OR "

    move-object/from16 v0, v57

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 5951
    .end local v21           #accountid:J
    :cond_f
    if-nez v41, :cond_10

    .line 5952
    const-string v4, " ) "

    move-object/from16 v0, v57

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5954
    :cond_10
    :try_start_7
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 5958
    :cond_11
    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5961
    .end local v27           #c2:Landroid/database/Cursor;
    .end local v41           #first_acc:Z
    .end local v57           #select_acc:Ljava/lang/StringBuilder;
    :cond_12
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 5962
    .local v32, c_total:Ljava/util/List;,"Ljava/util/List<Landroid/database/Cursor;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    iget v4, v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-ne v4, v5, :cond_1e

    .line 5965
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 5966
    .local v3, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 5970
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 5972
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v72, v4, v6

    .line 5973
    .local v72, todayMilli:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND timeStamp >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v72

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    .line 5974
    .local v74, todayQuery:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v72

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > timeStamp AND timeStamp >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x5265c00

    sub-long v5, v72, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    .line 5975
    .local v76, yesterdayQuery:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND timeStamp < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x5265c00

    sub-long v5, v72, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 5977
    .local v24, beforeQuery:Ljava/lang/String;
    sget v4, Lcom/android/email/activity/MessageList;->mSortType:I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    if-nez v4, :cond_18

    .line 5980
    const/16 v31, 0x0

    .line 5981
    .local v31, c_today:Landroid/database/Cursor;
    const/16 v33, 0x0

    .line 5982
    .local v33, c_yesterday:Landroid/database/Cursor;
    const/16 v28, 0x0

    .line 5985
    .local v28, c_before:Landroid/database/Cursor;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "timeStamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 5991
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_16

    .line 5992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f08011b

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->makeSeparator(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5993
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 6003
    :goto_9
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "timeStamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 6009
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_17

    .line 6010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f08011c

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->makeSeparator(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6011
    invoke-interface/range {v32 .. v33}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 6021
    :goto_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "timeStamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 6027
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_13

    .line 6028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f08011d

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->makeSeparator(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    .line 6034
    :cond_13
    :goto_b
    :try_start_b
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6615
    .end local v3           #cal:Ljava/util/Calendar;
    .end local v24           #beforeQuery:Ljava/lang/String;
    .end local v28           #c_before:Landroid/database/Cursor;
    .end local v31           #c_today:Landroid/database/Cursor;
    .end local v33           #c_yesterday:Landroid/database/Cursor;
    .end local v72           #todayMilli:J
    .end local v74           #todayQuery:Ljava/lang/String;
    .end local v76           #yesterdayQuery:Ljava/lang/String;
    .end local p1
    :cond_14
    :goto_c
    if-eqz v32, :cond_15

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    move-result v4

    if-eqz v4, :cond_41

    .line 6616
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 5995
    .restart local v3       #cal:Ljava/util/Calendar;
    .restart local v24       #beforeQuery:Ljava/lang/String;
    .restart local v28       #c_before:Landroid/database/Cursor;
    .restart local v31       #c_today:Landroid/database/Cursor;
    .restart local v33       #c_yesterday:Landroid/database/Cursor;
    .restart local v72       #todayMilli:J
    .restart local v74       #todayQuery:Ljava/lang/String;
    .restart local v76       #yesterdayQuery:Ljava/lang/String;
    .restart local p1
    :cond_16
    :try_start_c
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_9

    .line 5997
    :catch_2
    move-exception v4

    move-object/from16 v39, v4

    .line 5998
    .restart local v39       #e:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_9

    .line 6013
    .end local v39           #e:Ljava/lang/Exception;
    :cond_17
    :try_start_e
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_a

    .line 6015
    :catch_3
    move-exception v4

    move-object/from16 v39, v4

    .line 6016
    .restart local v39       #e:Ljava/lang/Exception;
    :try_start_f
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 6030
    .end local v39           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v4

    move-object/from16 v39, v4

    .line 6031
    .restart local v39       #e:Ljava/lang/Exception;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 6035
    .end local v28           #c_before:Landroid/database/Cursor;
    .end local v31           #c_today:Landroid/database/Cursor;
    .end local v33           #c_yesterday:Landroid/database/Cursor;
    .end local v39           #e:Ljava/lang/Exception;
    :cond_18
    sget v4, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1d

    .line 6036
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6100()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v64

    .line 6039
    .local v64, strSearchWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$800()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 6050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4800(Lcom/android/email/activity/MessageList;)I

    move-result v4

    if-nez v4, :cond_19

    .line 6051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    move-result-object v63

    .line 6069
    .local v63, strSearch:Ljava/lang/String;
    :goto_d
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/android/email/activity/MessageList;->SORT_QUERY:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 6074
    .local v25, c:Landroid/database/Cursor;
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1c

    .line 6075
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_c

    .line 6079
    .end local v25           #c:Landroid/database/Cursor;
    :catch_5
    move-exception v4

    move-object/from16 v39, v4

    .line 6080
    .restart local v39       #e:Ljava/lang/Exception;
    :try_start_11
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 6041
    .end local v39           #e:Ljava/lang/Exception;
    .end local v63           #strSearch:Ljava/lang/String;
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 6042
    .restart local v63       #strSearch:Ljava/lang/String;
    goto :goto_d

    .line 6044
    .end local v63           #strSearch:Ljava/lang/String;
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( toList like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 6045
    .restart local v63       #strSearch:Ljava/lang/String;
    goto/16 :goto_d

    .line 6047
    .end local v63           #strSearch:Ljava/lang/String;
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 6048
    .restart local v63       #strSearch:Ljava/lang/String;
    goto/16 :goto_d

    .line 6054
    .end local v63           #strSearch:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4800(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4800(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4800(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1b

    .line 6057
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( toList like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .restart local v63       #strSearch:Ljava/lang/String;
    goto/16 :goto_d

    .line 6061
    .end local v63           #strSearch:Ljava/lang/String;
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    move-result-object v63

    .restart local v63       #strSearch:Ljava/lang/String;
    goto/16 :goto_d

    .line 6077
    .restart local v25       #c:Landroid/database/Cursor;
    :cond_1c
    :try_start_12
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_c

    .line 6085
    .end local v25           #c:Landroid/database/Cursor;
    .end local v63           #strSearch:Ljava/lang/String;
    .end local v64           #strSearchWord:Ljava/lang/String;
    :cond_1d
    const/16 v30, 0x0

    .line 6087
    .local v30, c_other:Landroid/database/Cursor;
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/email/activity/MessageList;->access$6200(Lcom/android/email/activity/MessageList;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v12

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 6100
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_c

    .line 6101
    :catch_6
    move-exception v4

    move-object/from16 v39, v4

    .line 6102
    .restart local v39       #e:Ljava/lang/Exception;
    :try_start_14
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 6108
    .end local v3           #cal:Ljava/util/Calendar;
    .end local v24           #beforeQuery:Ljava/lang/String;
    .end local v30           #c_other:Landroid/database/Cursor;
    .end local v39           #e:Ljava/lang/Exception;
    .end local v72           #todayMilli:J
    .end local v74           #todayQuery:Ljava/lang/String;
    .end local v76           #yesterdayQuery:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    iget v4, v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION_READY:I

    if-eq v4, v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    iget v4, v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v4, v5, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->versionDouble:D

    move-wide v4, v0

    const-wide/high16 v6, 0x402c

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_21

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$5900(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    iget v4, v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION_READY:I

    if-eq v4, v5, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    iget v4, v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v4, v5, :cond_2f

    .line 6111
    :cond_21
    new-instance v70, Ljava/util/HashMap;

    invoke-direct/range {v70 .. v70}, Ljava/util/HashMap;-><init>()V

    .line 6112
    .local v70, threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;>;"
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    .line 6113
    .local v65, subjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v50, 0x0

    .line 6114
    .local v50, messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    const/16 v75, 0x0

    .line 6116
    .local v75, totalThreadMail:I
    const/16 v25, 0x0

    .line 6117
    .restart local v25       #c:Landroid/database/Cursor;
    const/16 v29, 0x0

    .line 6119
    .local v29, c_count:I
    :try_start_15
    sget v4, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_25

    .line 6120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    sget-object v7, Lcom/android/email/activity/MessageList;->SORT_QUERY:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    move-object v7, v12

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 6166
    :goto_e
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v29

    .line 6167
    const-string v4, "MessageList >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground(): Cursor c.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6168
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 6171
    :cond_22
    new-instance v51, Lcom/android/email/activity/MessageList$MessageData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, v51

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$MessageData;-><init>(Lcom/android/email/activity/MessageList;)V

    .line 6172
    .local v51, msgData:Lcom/android/email/activity/MessageList$MessageData;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    .line 6173
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->mailBoxKey:S

    .line 6174
    const/4 v4, 0x2

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->accountKey:S

    .line 6175
    const/4 v4, 0x3

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->displayName:Ljava/lang/String;

    .line 6176
    const/4 v4, 0x4

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    .line 6177
    const/4 v4, 0x5

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v51

    iput-wide v0, v2, Lcom/android/email/activity/MessageList$MessageData;->timeStamp:J

    .line 6178
    const/4 v4, 0x6

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->flagRead:S

    .line 6179
    const/4 v4, 0x7

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->flagFavorite:S

    .line 6180
    const/16 v4, 0x8

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->flagAttachment:S

    .line 6181
    const/16 v4, 0x9

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->toList:Ljava/lang/String;

    .line 6182
    const/16 v4, 0xa

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    .line 6183
    const/16 v4, 0xb

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->followUpFlag:I

    .line 6184
    const/16 v4, 0xc

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->importance:I

    .line 6185
    const/16 v4, 0xe

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->smimeFlags:I

    .line 6186
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_2a

    .line 6188
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v70

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    move-object/from16 v0, v52

    check-cast v0, Ljava/util/List;

    move-object/from16 v50, v0

    .line 6189
    if-nez v50, :cond_29

    .line 6190
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 6191
    .local v44, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6193
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v70

    move-object v1, v4

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6194
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v65

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6210
    .end local v44           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    :cond_23
    :goto_f
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-result v4

    if-nez v4, :cond_22

    .line 6213
    .end local v51           #msgData:Lcom/android/email/activity/MessageList$MessageData;
    :cond_24
    :try_start_16
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 6216
    const-string v4, "MessageList >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground(): totalThreadMail = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6219
    new-instance v34, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v4

    add-int v5, v29, v75

    add-int/lit8 v5, v5, 0xa

    move-object/from16 v0, v34

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 6221
    .local v34, childCursor:Landroid/database/MatrixCursor;
    const/16 v52, 0x0

    .line 6222
    .local v52, position:I
    const/16 v45, 0x0

    .line 6223
    .local v45, listSize:I
    add-int v23, v29, v75

    .line 6226
    .local v23, arraySize:I
    const/16 v60, 0x0

    .line 6227
    .local v60, status:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$6302(Lcom/android/email/activity/MessageList;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 6228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$6402(Lcom/android/email/activity/MessageList;[S)[S

    .line 6230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$6502(Lcom/android/email/activity/MessageList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6232
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .local v42, i$:Ljava/util/Iterator;
    move/from16 v53, v52

    .end local v42           #i$:Ljava/util/Iterator;
    .end local v52           #position:I
    .end local p1
    .local v53, position:I
    :goto_10
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/lang/String;

    .line 6233
    .local v71, threadSubject:Ljava/lang/String;
    invoke-virtual/range {v70 .. v71}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    .end local v50           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    check-cast v50, Ljava/util/List;

    .line 6234
    .restart local v50       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->size()I

    move-result v45

    .line 6235
    const/16 v60, 0x0

    .line 6238
    const/4 v4, 0x1

    move/from16 v0, v45

    move v1, v4

    if-le v0, v1, :cond_45

    .line 6239
    const/4 v4, 0x0

    move-object/from16 v0, v50

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/email/activity/MessageList$MessageData;

    .line 6240
    .local v37, data:Lcom/android/email/activity/MessageList$MessageData;
    new-instance v61, Ljava/lang/StringBuffer;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuffer;-><init>()V

    .line 6242
    .local v61, strBuffer:Ljava/lang/StringBuffer;
    new-instance v61, Ljava/lang/StringBuffer;

    .end local v61           #strBuffer:Ljava/lang/StringBuffer;
    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuffer;-><init>()V

    .line 6244
    .restart local v61       #strBuffer:Ljava/lang/StringBuffer;
    const-string v4, "("

    move-object/from16 v0, v61

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6246
    invoke-virtual/range {v34 .. v34}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v54

    .line 6247
    .local v54, row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6248
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->mailBoxKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6249
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->accountKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6250
    const/4 v4, 0x1

    sub-int v4, v45, v4

    move-object/from16 v0, v50

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/email/activity/MessageList$MessageData;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->displayName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6251
    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6252
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MessageData;->timeStamp:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6253
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6254
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6255
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6256
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6257
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6258
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->followUpFlag:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6259
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->importance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6260
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6261
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->smimeFlags:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6500(Lcom/android/email/activity/MessageList;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6269
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6600()Ljava/util/HashSet;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 6271
    const/16 v60, 0x2

    .line 6272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6300(Lcom/android/email/activity/MessageList;)Ljava/util/HashSet;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6278
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)[S

    move-result-object v4

    aput-short v60, v4, v53

    .line 6281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/MessageList$ListItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    add-int/lit8 v52, v53, 0x1

    .end local v53           #position:I
    .restart local v52       #position:I
    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$ListItem;-><init>(Lcom/android/email/activity/MessageList;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6284
    .end local v37           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v54           #row:Landroid/database/MatrixCursor$RowBuilder;
    .end local v61           #strBuffer:Ljava/lang/StringBuffer;
    :goto_12
    move/from16 v0, v52

    move/from16 v1, v23

    if-le v0, v1, :cond_2c

    .line 6285
    const-string v4, "MessageList >>"

    const-string v5, "doInBackground(): position is over array bound."

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6334
    .end local v71           #threadSubject:Ljava/lang/String;
    :goto_13
    const/16 v70, 0x0

    .line 6338
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6341
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "flagRead"

    aput-object v5, v6, v4

    .line 6342
    .local v6, projection:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "-100"

    aput-object v5, v8, v4

    .line 6343
    .local v8, selectionarg:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id = ?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 6346
    .local v38, dummyCursor:Landroid/database/Cursor;
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    goto/16 :goto_c

    .line 6127
    .end local v6           #projection:[Ljava/lang/String;
    .end local v8           #selectionarg:[Ljava/lang/String;
    .end local v23           #arraySize:I
    .end local v34           #childCursor:Landroid/database/MatrixCursor;
    .end local v38           #dummyCursor:Landroid/database/Cursor;
    .end local v45           #listSize:I
    .end local v52           #position:I
    .end local v60           #status:S
    .restart local p1
    :cond_25
    :try_start_17
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6100()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v64

    .line 6130
    .restart local v64       #strSearchWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$800()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 6141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4800(Lcom/android/email/activity/MessageList;)I

    move-result v4

    if-nez v4, :cond_26

    .line 6142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 6159
    .restart local v63       #strSearch:Ljava/lang/String;
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/android/email/activity/MessageList;->SORT_QUERY:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    goto/16 :goto_e

    .line 6132
    .end local v63           #strSearch:Ljava/lang/String;
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 6133
    .restart local v63       #strSearch:Ljava/lang/String;
    goto :goto_14

    .line 6135
    .end local v63           #strSearch:Ljava/lang/String;
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( toList like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 6136
    .restart local v63       #strSearch:Ljava/lang/String;
    goto :goto_14

    .line 6138
    .end local v63           #strSearch:Ljava/lang/String;
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 6139
    .restart local v63       #strSearch:Ljava/lang/String;
    goto/16 :goto_14

    .line 6145
    .end local v63           #strSearch:Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4800(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4800(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4800(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_28

    .line 6149
    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( toList like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .restart local v63       #strSearch:Ljava/lang/String;
    goto/16 :goto_14

    .line 6153
    .end local v63           #strSearch:Ljava/lang/String;
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .restart local v63       #strSearch:Ljava/lang/String;
    goto/16 :goto_14

    .line 6196
    .end local v63           #strSearch:Ljava/lang/String;
    .end local v64           #strSearchWord:Ljava/lang/String;
    .restart local v51       #msgData:Lcom/android/email/activity/MessageList$MessageData;
    :cond_29
    invoke-interface/range {v50 .. v51}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6199
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_23

    .line 6200
    add-int/lit8 v75, v75, 0x1

    goto/16 :goto_f

    .line 6204
    :cond_2a
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 6205
    .restart local v44       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6207
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v70

    move-object v1, v4

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6208
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v65

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_f

    .line 6213
    .end local v44           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    .end local v51           #msgData:Lcom/android/email/activity/MessageList$MessageData;
    :catchall_1
    move-exception v4

    :try_start_18
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v4

    .line 6276
    .end local p1
    .restart local v23       #arraySize:I
    .restart local v34       #childCursor:Landroid/database/MatrixCursor;
    .restart local v37       #data:Lcom/android/email/activity/MessageList$MessageData;
    .restart local v45       #listSize:I
    .restart local v53       #position:I
    .restart local v54       #row:Landroid/database/MatrixCursor$RowBuilder;
    .restart local v60       #status:S
    .restart local v61       #strBuffer:Ljava/lang/StringBuffer;
    .restart local v71       #threadSubject:Ljava/lang/String;
    :cond_2b
    const/16 v60, 0x1

    goto/16 :goto_11

    .line 6291
    .end local v37           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v53           #position:I
    .end local v54           #row:Landroid/database/MatrixCursor$RowBuilder;
    .end local v61           #strBuffer:Ljava/lang/StringBuffer;
    .restart local v52       #position:I
    :cond_2c
    shl-int/lit8 v4, v60, 0x4

    move v0, v4

    int-to-short v0, v0

    move/from16 v60, v0

    .line 6294
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v43

    .local v43, i$:Ljava/util/Iterator;
    move/from16 v53, v52

    .end local v52           #position:I
    .restart local v53       #position:I
    :goto_15
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/email/activity/MessageList$MessageData;

    .line 6295
    .restart local v37       #data:Lcom/android/email/activity/MessageList$MessageData;
    invoke-virtual/range {v34 .. v34}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v54

    .line 6296
    .restart local v54       #row:Landroid/database/MatrixCursor$RowBuilder;
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6297
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->mailBoxKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6298
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->accountKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6299
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->displayName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6300
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6301
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MessageData;->timeStamp:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6302
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->flagRead:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6303
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->flagFavorite:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6304
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->flagAttachment:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6305
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->toList:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6306
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6307
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->followUpFlag:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6308
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->importance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6309
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6310
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->smimeFlags:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6500(Lcom/android/email/activity/MessageList;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)[S

    move-result-object v4

    aput-short v60, v4, v53

    .line 6320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/MessageList$ListItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    add-int/lit8 v52, v53, 0x1

    .end local v53           #position:I
    .restart local v52       #position:I
    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$ListItem;-><init>(Lcom/android/email/activity/MessageList;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6322
    move/from16 v0, v52

    move/from16 v1, v23

    if-le v0, v1, :cond_2d

    .line 6323
    const-string v4, "MessageList >>"

    const-string v5, "doInBackground(): position is over array bound."

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6328
    .end local v37           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v54           #row:Landroid/database/MatrixCursor$RowBuilder;
    :goto_16
    move/from16 v0, v52

    move/from16 v1, v23

    if-le v0, v1, :cond_2e

    .line 6329
    const-string v4, "MessageList >>"

    const-string v5, "doInBackground(): position is over array bound."

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .restart local v37       #data:Lcom/android/email/activity/MessageList$MessageData;
    .restart local v54       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_2d
    move/from16 v53, v52

    .line 6324
    .end local v52           #position:I
    .restart local v53       #position:I
    goto/16 :goto_15

    .end local v37           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v53           #position:I
    .end local v54           #row:Landroid/database/MatrixCursor$RowBuilder;
    .restart local v52       #position:I
    :cond_2e
    move/from16 v53, v52

    .line 6330
    .end local v52           #position:I
    .restart local v53       #position:I
    goto/16 :goto_10

    .line 6348
    .end local v23           #arraySize:I
    .end local v25           #c:Landroid/database/Cursor;
    .end local v29           #c_count:I
    .end local v34           #childCursor:Landroid/database/MatrixCursor;
    .end local v43           #i$:Ljava/util/Iterator;
    .end local v45           #listSize:I
    .end local v50           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    .end local v53           #position:I
    .end local v60           #status:S
    .end local v65           #subjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v70           #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;>;"
    .end local v71           #threadSubject:Ljava/lang/String;
    .end local v75           #totalThreadMail:I
    .restart local p1
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    iget v4, v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION_READY:I

    if-eq v4, v5, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    iget v4, v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v4, v5, :cond_14

    :cond_30
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->versionDouble:D

    move-wide v4, v0

    const-wide/high16 v6, 0x402c

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_14

    .line 6350
    new-instance v70, Ljava/util/HashMap;

    invoke-direct/range {v70 .. v70}, Ljava/util/HashMap;-><init>()V

    .line 6351
    .restart local v70       #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 6352
    .local v36, conversationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v50, 0x0

    .line 6353
    .restart local v50       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    const/16 v75, 0x0

    .line 6354
    .restart local v75       #totalThreadMail:I
    const/16 v26, 0x0

    .line 6355
    .local v26, c1:Landroid/database/Cursor;
    const/16 v29, 0x0

    .line 6356
    .restart local v29       #c_count:I
    const/16 v68, 0x0

    .line 6358
    .local v68, temp_conversationId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    sget-object v4, Lcom/android/email/activity/MessageList;->SORT_QUERY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v14, v4, v5

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 6362
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    move-result v29

    .line 6366
    :try_start_19
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 6369
    :cond_31
    new-instance v51, Lcom/android/email/activity/MessageList$MessageData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, v51

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$MessageData;-><init>(Lcom/android/email/activity/MessageList;)V

    .line 6370
    .restart local v51       #msgData:Lcom/android/email/activity/MessageList$MessageData;
    const/4 v4, 0x0

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    .line 6371
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->mailBoxKey:S

    .line 6372
    const/4 v4, 0x2

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->accountKey:S

    .line 6373
    const/4 v4, 0x3

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->displayName:Ljava/lang/String;

    .line 6374
    const/4 v4, 0x4

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    .line 6375
    const/4 v4, 0x5

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v51

    iput-wide v0, v2, Lcom/android/email/activity/MessageList$MessageData;->timeStamp:J

    .line 6376
    const/4 v4, 0x6

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->flagRead:S

    .line 6377
    const/4 v4, 0x7

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->flagFavorite:S

    .line 6378
    const/16 v4, 0x8

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->flagAttachment:S

    .line 6379
    const/16 v4, 0x9

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->toList:Ljava/lang/String;

    .line 6380
    const/16 v4, 0xa

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    .line 6381
    const/16 v4, 0xb

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->followUpFlag:I

    .line 6382
    const/16 v4, 0xc

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->importance:I

    .line 6388
    const/16 v4, 0xe

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->smimeFlags:I

    .line 6389
    const/16 v4, 0xf

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->lastVerb:I

    .line 6390
    const/16 v4, 0x10

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->messageType:I

    .line 6391
    const/16 v4, 0x11

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    .line 6392
    const/16 v4, 0x12

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->convThreadId:I

    .line 6393
    const/16 v4, 0x13

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->flagReadConv:I

    .line 6394
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->followflagSetConv:I

    .line 6395
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v51

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->followflagComConv:I

    .line 6398
    add-int/lit8 v75, v75, 0x1

    .line 6399
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_37

    .line 6401
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v70

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    move-object/from16 v0, v52

    check-cast v0, Ljava/util/List;

    move-object/from16 v50, v0

    .line 6403
    if-nez v50, :cond_36

    .line 6407
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 6408
    .restart local v44       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6409
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v70

    move-object v1, v4

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6410
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v36

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6415
    add-int/lit8 v75, v75, 0x1

    .line 6439
    .end local v44           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    :goto_17
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    move-result v4

    if-nez v4, :cond_31

    .line 6442
    .end local v51           #msgData:Lcom/android/email/activity/MessageList$MessageData;
    :cond_32
    :try_start_1a
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 6446
    new-instance v34, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    move-object v1, v4

    move/from16 v2, v75

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 6448
    .restart local v34       #childCursor:Landroid/database/MatrixCursor;
    const/16 v52, 0x0

    .line 6449
    .restart local v52       #position:I
    const/16 v45, 0x0

    .line 6450
    .restart local v45       #listSize:I
    new-instance v58, Ljava/util/HashSet;

    invoke-direct/range {v58 .. v58}, Ljava/util/HashSet;-><init>()V

    .line 6453
    .local v58, senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v60, 0x0

    .line 6456
    .restart local v60       #status:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$6702(Lcom/android/email/activity/MessageList;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 6457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    add-int v5, v29, v75

    add-int/lit8 v5, v5, 0xa

    new-array v5, v5, [S

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$6402(Lcom/android/email/activity/MessageList;[S)[S

    .line 6459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$6502(Lcom/android/email/activity/MessageList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6460
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .restart local v42       #i$:Ljava/util/Iterator;
    move/from16 v53, v52

    .end local v42           #i$:Ljava/util/Iterator;
    .end local v52           #position:I
    .restart local v53       #position:I
    :cond_33
    :goto_18
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Ljava/lang/String;

    .line 6461
    .local v69, threadConvId:Ljava/lang/String;
    move-object/from16 v0, v70

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    .end local v50           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    check-cast v50, Ljava/util/List;

    .line 6462
    .restart local v50       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    if-eqz v50, :cond_33

    .line 6464
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->size()I

    move-result v45

    .line 6465
    const/16 v60, 0x0

    .line 6467
    const/16 v55, 0x0

    .line 6468
    .local v55, rowTemp:Landroid/database/MatrixCursor$RowBuilder;
    const/16 v66, 0x0

    .line 6469
    .local v66, tempFlag:I
    const/16 v67, 0x0

    .line 6471
    .local v67, tempImportance:I
    if-lez v45, :cond_43

    .line 6472
    const/4 v4, 0x0

    move-object/from16 v0, v50

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/email/activity/MessageList$MessageData;

    .line 6473
    .restart local v37       #data:Lcom/android/email/activity/MessageList$MessageData;
    new-instance v62, Ljava/lang/StringBuffer;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuffer;-><init>()V

    .line 6475
    .local v62, strBuffer1:Ljava/lang/StringBuffer;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_38

    .line 6476
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v62

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6483
    :goto_19
    invoke-virtual/range {v34 .. v34}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v54

    .line 6484
    .restart local v54       #row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6485
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->mailBoxKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6486
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->accountKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6487
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->displayName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6488
    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6489
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MessageData;->timeStamp:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6490
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6491
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6492
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6493
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6494
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6495
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->followUpFlag:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6496
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->importance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6497
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6498
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6499
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6500
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->messageType:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6501
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6502
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6504
    move-object/from16 v55, v54

    .line 6507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6500(Lcom/android/email/activity/MessageList;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6508
    const-string v4, "VinayTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6509
    const-string v4, "VinayTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConvID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6510
    const-string v4, "VinayTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6800()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6512
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6800()Ljava/util/HashSet;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 6513
    const/16 v60, 0x2

    .line 6514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6700(Lcom/android/email/activity/MessageList;)Ljava/util/HashSet;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6515
    const-string v4, "VinayTest"

    const-string v5, "IF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6521
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)[S

    move-result-object v4

    aput-short v60, v4, v53

    .line 6524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/MessageList$ListItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    add-int/lit8 v52, v53, 0x1

    .end local v53           #position:I
    .restart local v52       #position:I
    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$ListItem;-><init>(Lcom/android/email/activity/MessageList;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6529
    .end local v37           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v54           #row:Landroid/database/MatrixCursor$RowBuilder;
    .end local v62           #strBuffer1:Ljava/lang/StringBuffer;
    :goto_1b
    shl-int/lit8 v4, v60, 0x4

    move v0, v4

    int-to-short v0, v0

    move/from16 v60, v0

    .line 6530
    const/16 v59, 0x0

    .line 6531
    .local v59, set_count:I
    const/16 v35, 0x0

    .line 6533
    .local v35, complete_count:I
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v43

    .restart local v43       #i$:Ljava/util/Iterator;
    move/from16 v53, v52

    .end local v52           #position:I
    .restart local v53       #position:I
    :goto_1c
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/email/activity/MessageList$MessageData;

    .line 6534
    .restart local v37       #data:Lcom/android/email/activity/MessageList$MessageData;
    invoke-virtual/range {v34 .. v34}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v54

    .line 6535
    .restart local v54       #row:Landroid/database/MatrixCursor$RowBuilder;
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6536
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->mailBoxKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6537
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->accountKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6538
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->displayName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6539
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6540
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MessageData;->timeStamp:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6541
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->flagRead:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6542
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->flagFavorite:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6543
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->flagAttachment:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6544
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->toList:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6545
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6546
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->followUpFlag:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6547
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->importance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6548
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6549
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->smimeFlags:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6550
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->lastVerb:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6551
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->messageType:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6552
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6553
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6554
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6555
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6556
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6557
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->flagRead:S

    move v4, v0

    if-nez v4, :cond_34

    .line 6558
    add-int/lit8 v66, v66, 0x1

    .line 6560
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    move v5, v0

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getMsgFollowupstatus(I)Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    move-result-object v40

    .line 6561
    .local v40, ffstatus:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    sget-object v4, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    move-object/from16 v0, v40

    move-object v1, v4

    if-ne v0, v1, :cond_3a

    .line 6562
    add-int/lit8 v59, v59, 0x1

    .line 6567
    :cond_35
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6500(Lcom/android/email/activity/MessageList;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)[S

    move-result-object v4

    aput-short v60, v4, v53

    .line 6577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/MessageList$ListItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    add-int/lit8 v52, v53, 0x1

    .end local v53           #position:I
    .restart local v52       #position:I
    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$ListItem;-><init>(Lcom/android/email/activity/MessageList;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    move/from16 v53, v52

    .line 6578
    .end local v52           #position:I
    .restart local v53       #position:I
    goto/16 :goto_1c

    .line 6417
    .end local v34           #childCursor:Landroid/database/MatrixCursor;
    .end local v35           #complete_count:I
    .end local v37           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v40           #ffstatus:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    .end local v43           #i$:Ljava/util/Iterator;
    .end local v45           #listSize:I
    .end local v53           #position:I
    .end local v54           #row:Landroid/database/MatrixCursor$RowBuilder;
    .end local v55           #rowTemp:Landroid/database/MatrixCursor$RowBuilder;
    .end local v58           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v59           #set_count:I
    .end local v60           #status:S
    .end local v66           #tempFlag:I
    .end local v67           #tempImportance:I
    .end local v69           #threadConvId:Ljava/lang/String;
    .restart local v51       #msgData:Lcom/android/email/activity/MessageList$MessageData;
    :cond_36
    :try_start_1b
    invoke-interface/range {v50 .. v51}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_17

    .line 6442
    .end local v51           #msgData:Lcom/android/email/activity/MessageList$MessageData;
    :catchall_2
    move-exception v4

    :try_start_1c
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    .line 6431
    .restart local v51       #msgData:Lcom/android/email/activity/MessageList$MessageData;
    :cond_37
    :try_start_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    .line 6432
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 6433
    .restart local v44       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6434
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v70

    move-object v1, v4

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6435
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->convId:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v36

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 6436
    add-int/lit8 v68, v68, 0x1

    goto/16 :goto_17

    .line 6479
    .end local v44           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    .end local v51           #msgData:Lcom/android/email/activity/MessageList$MessageData;
    .restart local v34       #childCursor:Landroid/database/MatrixCursor;
    .restart local v37       #data:Lcom/android/email/activity/MessageList$MessageData;
    .restart local v45       #listSize:I
    .restart local v53       #position:I
    .restart local v55       #rowTemp:Landroid/database/MatrixCursor$RowBuilder;
    .restart local v58       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v60       #status:S
    .restart local v62       #strBuffer1:Ljava/lang/StringBuffer;
    .restart local v66       #tempFlag:I
    .restart local v67       #tempImportance:I
    .restart local v69       #threadConvId:Ljava/lang/String;
    :cond_38
    :try_start_1e
    const-string v4, ""

    move-object/from16 v0, v62

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_19

    .line 6518
    .restart local v54       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_39
    const/16 v60, 0x1

    .line 6519
    const-string v4, "Vinay"

    const-string v5, " BindView else sOpenedThread"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 6563
    .end local v62           #strBuffer1:Ljava/lang/StringBuffer;
    .restart local v35       #complete_count:I
    .restart local v40       #ffstatus:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    .restart local v43       #i$:Ljava/util/Iterator;
    .restart local v59       #set_count:I
    :cond_3a
    sget-object v4, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    move-object/from16 v0, v40

    move-object v1, v4

    if-ne v0, v1, :cond_35

    .line 6564
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_1d

    .line 6579
    .end local v37           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v40           #ffstatus:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    .end local v54           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_3b
    if-eqz v55, :cond_3c

    .line 6580
    const/4 v4, 0x1

    move/from16 v0, v66

    move v1, v4

    if-lt v0, v1, :cond_3d

    .line 6581
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6585
    :goto_1e
    if-lez v59, :cond_3e

    .line 6586
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6589
    :goto_1f
    if-lez v35, :cond_3f

    .line 6590
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6594
    :cond_3c
    :goto_20
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->clear()V

    .line 6595
    const/16 v50, 0x0

    .line 6596
    goto/16 :goto_18

    .line 6583
    :cond_3d
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1e

    .line 6588
    :cond_3e
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1f

    .line 6592
    :cond_3f
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_20

    .line 6597
    .end local v35           #complete_count:I
    .end local v43           #i$:Ljava/util/Iterator;
    .end local v55           #rowTemp:Landroid/database/MatrixCursor$RowBuilder;
    .end local v59           #set_count:I
    .end local v66           #tempFlag:I
    .end local v67           #tempImportance:I
    .end local v69           #threadConvId:Ljava/lang/String;
    :cond_40
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->clear()V

    .line 6598
    const/16 v36, 0x0

    .line 6599
    invoke-virtual/range {v70 .. v70}, Ljava/util/HashMap;->clear()V

    .line 6600
    const/16 v70, 0x0

    .line 6603
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v13, v0

    sget-object v14, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "flagRead"

    aput-object v5, v15, v4

    const-string v16, "_id = ?"

    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const-string v5, "-100"

    aput-object v5, v17, v4

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Lcom/android/email/activity/MessageList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 6611
    .restart local v38       #dummyCursor:Landroid/database/Cursor;
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 6618
    .end local v26           #c1:Landroid/database/Cursor;
    .end local v29           #c_count:I
    .end local v34           #childCursor:Landroid/database/MatrixCursor;
    .end local v36           #conversationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38           #dummyCursor:Landroid/database/Cursor;
    .end local v45           #listSize:I
    .end local v50           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    .end local v53           #position:I
    .end local v58           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v60           #status:S
    .end local v68           #temp_conversationId:I
    .end local v70           #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;>;"
    .end local v75           #totalThreadMail:I
    .end local p1
    :cond_41
    new-instance v47, Landroid/database/MergeCursor;

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/database/Cursor;

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/database/Cursor;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 6619
    .local v47, mMc:Landroid/database/MergeCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 6620
    invoke-virtual/range {v47 .. v47}, Landroid/database/MergeCursor;->close()V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0

    .line 6621
    const/16 v47, 0x0

    :cond_42
    move-object/from16 v4, v47

    .line 6623
    goto/16 :goto_7

    .end local v47           #mMc:Landroid/database/MergeCursor;
    .restart local v26       #c1:Landroid/database/Cursor;
    .restart local v29       #c_count:I
    .restart local v34       #childCursor:Landroid/database/MatrixCursor;
    .restart local v36       #conversationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v45       #listSize:I
    .restart local v50       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    .restart local v53       #position:I
    .restart local v55       #rowTemp:Landroid/database/MatrixCursor$RowBuilder;
    .restart local v58       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v60       #status:S
    .restart local v66       #tempFlag:I
    .restart local v67       #tempImportance:I
    .restart local v68       #temp_conversationId:I
    .restart local v69       #threadConvId:Ljava/lang/String;
    .restart local v70       #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;>;"
    .restart local v75       #totalThreadMail:I
    .restart local p1
    :cond_43
    move/from16 v52, v53

    .end local v53           #position:I
    .restart local v52       #position:I
    goto/16 :goto_1b

    .end local v26           #c1:Landroid/database/Cursor;
    .end local v36           #conversationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v52           #position:I
    .end local v55           #rowTemp:Landroid/database/MatrixCursor$RowBuilder;
    .end local v58           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v66           #tempFlag:I
    .end local v67           #tempImportance:I
    .end local v68           #temp_conversationId:I
    .end local v69           #threadConvId:Ljava/lang/String;
    .end local p1
    .restart local v23       #arraySize:I
    .restart local v25       #c:Landroid/database/Cursor;
    .restart local v43       #i$:Ljava/util/Iterator;
    .restart local v53       #position:I
    .restart local v65       #subjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v71       #threadSubject:Ljava/lang/String;
    :cond_44
    move/from16 v52, v53

    .end local v53           #position:I
    .restart local v52       #position:I
    goto/16 :goto_16

    .end local v43           #i$:Ljava/util/Iterator;
    .end local v52           #position:I
    .restart local v53       #position:I
    :cond_45
    move/from16 v52, v53

    .end local v53           #position:I
    .restart local v52       #position:I
    goto/16 :goto_12

    .end local v52           #position:I
    .end local v71           #threadSubject:Ljava/lang/String;
    .restart local v53       #position:I
    :cond_46
    move/from16 v52, v53

    .end local v53           #position:I
    .restart local v52       #position:I
    goto/16 :goto_13

    .line 6039
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 6130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5814
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->doInBackground([Ljava/lang/Void;)Landroid/database/MergeCursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/MergeCursor;)V
    .locals 11
    .parameter

    .prologue
    const-wide/high16 v7, 0x402c

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v4, "MessageList >>"

    .line 6638
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/MergeCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6796
    :cond_0
    :goto_0
    return-void

    .line 6644
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$4900(Lcom/android/email/activity/MessageList;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 6645
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2500(Lcom/android/email/activity/MessageList;)I

    .line 6647
    :cond_2
    sget-boolean v0, Lcom/android/email/activity/MessageList;->isStartedFromMailboxList:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$4900(Lcom/android/email/activity/MessageList;)I

    move-result v0

    if-ne v0, v9, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6900(Lcom/android/email/activity/MessageList;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7000(Lcom/android/email/activity/MessageList;)I

    move-result v0

    if-nez v0, :cond_4

    .line 6648
    :cond_3
    const-string v0, "MessageList >>"

    const-string v0, "11111 onPostExecute -> RefreshFolderListTask -----------------------------------------"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6649
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v1, Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {v1, v2, v5}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$5402(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$RefreshFolderListTask;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 6650
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$7000(Lcom/android/email/activity/MessageList;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6654
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6659
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 6660
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 6663
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageList;->access$7102(Lcom/android/email/activity/MessageList;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 6669
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$5800(Lcom/android/email/activity/MessageList;)D

    move-result-wide v1

    cmpl-double v1, v1, v7

    if-ltz v1, :cond_c

    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$5900(Lcom/android/email/activity/MessageList;)I

    move-result v1

    if-eq v1, v9, :cond_c

    move v1, v9

    :goto_2
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$7202(Lcom/android/email/activity/MessageList;Z)Z

    .line 6670
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    iget v0, v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-eq v0, v1, :cond_6

    .line 6672
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageList;->mTotalListCount:I

    .line 6673
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground(): mTotalListCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/email/activity/MessageList;->mTotalListCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6676
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5800(Lcom/android/email/activity/MessageList;)D

    move-result-wide v0

    cmpg-double v0, v0, v7

    if-gez v0, :cond_d

    .line 6677
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6300(Lcom/android/email/activity/MessageList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6602(Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 6683
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)[S

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$7302(Lcom/android/email/activity/MessageList;[S)[S

    .line 6684
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6500(Lcom/android/email/activity/MessageList;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    .line 6686
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    iput v1, v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    .line 6696
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 6697
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7402(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6698
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    iput v1, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mMailboxType:I

    .line 6700
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->setRealArray(Ljava/util/ArrayList;)V

    .line 6702
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$7100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 6703
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/email/activity/MessageList;->mAdapterIsChanged:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6720
    :cond_7
    const-string v0, "MessageList >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadMessageTask || mRefreshView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRefreshView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6721
    iget-boolean v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRefreshView:Z

    if-eqz v0, :cond_8

    .line 6722
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7500(Lcom/android/email/activity/MessageList;)V

    .line 6723
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7600(Lcom/android/email/activity/MessageList;)V

    .line 6725
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 6726
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    .line 6734
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f

    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    if-eq v0, v9, :cond_9

    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    iget v0, v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-ne v0, v1, :cond_f

    .line 6738
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7700(Lcom/android/email/activity/MessageList;)V

    .line 6739
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$7100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$7800(Lcom/android/email/activity/MessageList;Landroid/database/Cursor;)V

    .line 6787
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->syncFavorites()V

    .line 6790
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->syncFollowupFlag()V

    .line 6792
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$1100(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 6793
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->syncCheckedItem()V

    .line 6795
    :cond_b
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_c
    move v1, v10

    .line 6669
    goto/16 :goto_2

    .line 6678
    :cond_d
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5800(Lcom/android/email/activity/MessageList;)D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5900(Lcom/android/email/activity/MessageList;)I

    move-result v0

    if-eq v0, v9, :cond_5

    .line 6680
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6700(Lcom/android/email/activity/MessageList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6802(Ljava/util/HashSet;)Ljava/util/HashSet;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 6705
    :catch_0
    move-exception v0

    .line 6706
    const-string v1, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException >>> LoadMessagesTask:onPostExecute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$7100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6707
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6708
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6710
    :catch_1
    move-exception v0

    .line 6711
    const-string v1, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException >>> LoadMessagesTask:onPostExecute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$7100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6712
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 6713
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6727
    :cond_e
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    iget-wide v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mAccountKey:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 6728
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mAccountKey:J

    invoke-static {v0, v1, v2}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    goto/16 :goto_4

    .line 6741
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7900(Lcom/android/email/activity/MessageList;)V

    .line 6743
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_12

    .line 6746
    const-string v0, "MessageList >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMailboxKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6748
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$8000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    new-array v4, v9, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6752
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 6753
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6754
    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageList;->access$4802(Lcom/android/email/activity/MessageList;I)I

    .line 6755
    const-string v2, "MessageList >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailboxType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4800(Lcom/android/email/activity/MessageList;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6756
    const-string v2, "MessageList >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v1

    .line 6759
    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6762
    if-eqz v7, :cond_a

    .line 6763
    const-string v3, "accountKey =? AND mailboxKey =?"

    .line 6764
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v10

    iget-wide v7, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6768
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 6770
    if-gtz v1, :cond_10

    .line 6771
    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$8100(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    move v1, v9

    .line 6772
    :goto_7
    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$8100(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const v4, 0x7f080158

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6773
    if-nez v1, :cond_10

    .line 6774
    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$8100(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6775
    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$8100(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6778
    :cond_10
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 6759
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_11
    move v1, v10

    .line 6771
    goto :goto_7

    .line 6781
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8100(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_13
    move-object v7, v5

    goto/16 :goto_6

    :cond_14
    move-object v6, v5

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5814
    check-cast p1, Landroid/database/MergeCursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->onPostExecute(Landroid/database/MergeCursor;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 5841
    return-void
.end method
