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


# static fields
.field public static final ONEDAY_TIMESTAMP:J = 0x5265c00L


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


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;JJZ)V
    .locals 1
    .parameter
    .parameter "mailboxKey"
    .parameter "accountKey"
    .parameter "refreshView"

    .prologue
    .line 4581
    iput-object p1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    .line 4582
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    .line 4583
    iput-wide p4, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mAccountKey:J

    .line 4584
    iput-boolean p6, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRefreshView:Z

    .line 4585
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    .line 4586
    return-void
.end method

.method private makeSeparator(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 5236
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$5500(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 5240
    .local v0, childCursor:Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 5241
    .local v1, row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5244
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5245
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/MergeCursor;
    .locals 53
    .parameter "params"

    .prologue
    .line 4601
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4600(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4602
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$600()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$600()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 4603
    :cond_0
    const/16 v32, 0x0

    .line 4604
    .local v32, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    if-nez v4, :cond_4

    .line 4605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v32

    .line 4610
    :goto_0
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0

    if-nez v4, :cond_5

    .line 4611
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$600()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 4612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$400(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4613
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$602(I)I

    .line 4631
    .end local v32           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v40

    .line 4632
    .local v40, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_9

    .line 4633
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    const-wide/16 v6, -0x5

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    .line 4634
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    .line 4651
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    const-wide/16 v6, -0x4

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    .line 4652
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4653
    .local v39, select_acc:Ljava/lang/StringBuilder;
    const/16 v25, 0x1

    .line 4654
    .local v25, first_acc:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 4657
    .local v14, c2:Landroid/database/Cursor;
    if-eqz v14, :cond_f

    .line 4659
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {v14, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4660
    :cond_3
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4661
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4662
    .local v10, accountid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4, v10, v11}, Lcom/android/email/activity/MessageList;->access$5400(Lcom/android/email/activity/MessageList;J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4663
    if-eqz v25, :cond_c

    .line 4664
    const-string v4, " AND ("

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4665
    const/16 v25, 0x0

    .line 4669
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 4675
    .end local v10           #accountid:J
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5070
    .end local v14           #c2:Landroid/database/Cursor;
    .end local v25           #first_acc:Z
    .end local v39           #select_acc:Ljava/lang/StringBuilder;
    .end local v40           #selection:Ljava/lang/String;
    .end local p1
    :catch_0
    move-exception v4

    move-object/from16 v38, v4

    .line 5071
    .local v38, rte:Ljava/lang/RuntimeException;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 5072
    const/4 v4, 0x0

    .end local v38           #rte:Ljava/lang/RuntimeException;
    :goto_5
    return-object v4

    .line 4608
    .restart local v32       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local p1
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v32

    goto/16 :goto_0

    .line 4615
    :cond_5
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 4618
    :cond_6
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$600()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$400(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4620
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$602(I)I

    goto/16 :goto_1

    .line 4623
    :cond_7
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$600()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 4624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$400(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4625
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$602(I)I

    goto/16 :goto_1

    .line 4635
    .end local v32           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v40       #selection:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    const-wide/16 v6, -0x6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 4636
    const/4 v4, 0x4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    goto/16 :goto_2

    .line 4640
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 4641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    iget v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    goto/16 :goto_2

    .line 4644
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v31

    .line 4645
    .local v31, mailBox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v31, :cond_b

    const/4 v4, 0x0

    :goto_6
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 4668
    .end local v31           #mailBox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v10       #accountid:J
    .restart local v14       #c2:Landroid/database/Cursor;
    .restart local v25       #first_acc:Z
    .restart local v39       #select_acc:Ljava/lang/StringBuilder;
    :cond_c
    :try_start_4
    const-string v4, " OR "

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 4672
    .end local v10           #accountid:J
    :cond_d
    if-nez v25, :cond_e

    .line 4673
    const-string v4, " ) "

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4675
    :cond_e
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4679
    :cond_f
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 4682
    .end local v14           #c2:Landroid/database/Cursor;
    .end local v25           #first_acc:Z
    .end local v39           #select_acc:Ljava/lang/StringBuilder;
    :cond_10
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 4683
    .local v19, c_total:Ljava/util/List;,"Ljava/util/List<Landroid/database/Cursor;>;"
    sget v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-ne v4, v5, :cond_1b

    .line 4686
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 4687
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

    .line 4691
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 4693
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v48, v4, v6

    .line 4694
    .local v48, todayMilli:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND timeStamp >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 4695
    .local v50, todayQuery:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > timeStamp AND timeStamp >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x5265c00

    sub-long v5, v48, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 4696
    .local v52, yesterdayQuery:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND timeStamp < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x5265c00

    sub-long v5, v48, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4698
    .local v12, beforeQuery:Ljava/lang/String;
    sget v4, Lcom/android/email/activity/MessageList;->mSortType:I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v4, :cond_15

    .line 4701
    const/16 v18, 0x0

    .line 4702
    .local v18, c_today:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 4703
    .local v20, c_yesterday:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 4706
    .local v15, c_before:Landroid/database/Cursor;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$5500(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "timeStamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 4712
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_13

    .line 4713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f080105

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->makeSeparator(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4714
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 4724
    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$5500(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "timeStamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 4730
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_14

    .line 4731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f080106

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->makeSeparator(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4732
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 4742
    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$5500(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "timeStamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4748
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_11

    .line 4749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f080107

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->makeSeparator(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 4755
    :cond_11
    :goto_9
    :try_start_9
    move-object/from16 v0, v19

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5059
    .end local v3           #cal:Ljava/util/Calendar;
    .end local v12           #beforeQuery:Ljava/lang/String;
    .end local v15           #c_before:Landroid/database/Cursor;
    .end local v18           #c_today:Landroid/database/Cursor;
    .end local v20           #c_yesterday:Landroid/database/Cursor;
    .end local v48           #todayMilli:J
    .end local v50           #todayQuery:Ljava/lang/String;
    .end local v52           #yesterdayQuery:Ljava/lang/String;
    .end local p1
    :goto_a
    if-eqz v19, :cond_12

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v4

    if-eqz v4, :cond_29

    .line 5060
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 4716
    .restart local v3       #cal:Ljava/util/Calendar;
    .restart local v12       #beforeQuery:Ljava/lang/String;
    .restart local v15       #c_before:Landroid/database/Cursor;
    .restart local v18       #c_today:Landroid/database/Cursor;
    .restart local v20       #c_yesterday:Landroid/database/Cursor;
    .restart local v48       #todayMilli:J
    .restart local v50       #todayQuery:Ljava/lang/String;
    .restart local v52       #yesterdayQuery:Ljava/lang/String;
    .restart local p1
    :cond_13
    :try_start_a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_7

    .line 4718
    :catch_1
    move-exception v4

    move-object/from16 v24, v4

    .line 4719
    .local v24, e:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_7

    .line 4734
    .end local v24           #e:Ljava/lang/Exception;
    :cond_14
    :try_start_c
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_8

    .line 4736
    :catch_2
    move-exception v4

    move-object/from16 v24, v4

    .line 4737
    .restart local v24       #e:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 4751
    .end local v24           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    move-object/from16 v24, v4

    .line 4752
    .restart local v24       #e:Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 4756
    .end local v15           #c_before:Landroid/database/Cursor;
    .end local v18           #c_today:Landroid/database/Cursor;
    .end local v20           #c_yesterday:Landroid/database/Cursor;
    .end local v24           #e:Ljava/lang/Exception;
    :cond_15
    sget v4, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1a

    .line 4757
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$5600()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v44

    .line 4760
    .local v44, strSearchWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$600()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 4771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4400(Lcom/android/email/activity/MessageList;)I

    move-result v4

    if-nez v4, :cond_16

    .line 4772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    move-result-object v43

    .line 4790
    .local v43, strSearch:Ljava/lang/String;
    :goto_b
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$5500(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/android/email/activity/MessageList;->SORT_QUERY:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4795
    .local v13, c:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_19

    .line 4796
    move-object/from16 v0, v19

    move-object v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_a

    .line 4800
    .end local v13           #c:Landroid/database/Cursor;
    :catch_4
    move-exception v4

    move-object/from16 v24, v4

    .line 4801
    .restart local v24       #e:Ljava/lang/Exception;
    :try_start_f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 4762
    .end local v24           #e:Ljava/lang/Exception;
    .end local v43           #strSearch:Ljava/lang/String;
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 4763
    .restart local v43       #strSearch:Ljava/lang/String;
    goto :goto_b

    .line 4765
    .end local v43           #strSearch:Ljava/lang/String;
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( toList like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 4766
    .restart local v43       #strSearch:Ljava/lang/String;
    goto/16 :goto_b

    .line 4768
    .end local v43           #strSearch:Ljava/lang/String;
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 4769
    .restart local v43       #strSearch:Ljava/lang/String;
    goto/16 :goto_b

    .line 4775
    .end local v43           #strSearch:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4400(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4400(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4400(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_18

    .line 4778
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( toList like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .restart local v43       #strSearch:Ljava/lang/String;
    goto/16 :goto_b

    .line 4782
    .end local v43           #strSearch:Ljava/lang/String;
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    move-result-object v43

    .restart local v43       #strSearch:Ljava/lang/String;
    goto/16 :goto_b

    .line 4798
    .restart local v13       #c:Landroid/database/Cursor;
    :cond_19
    :try_start_10
    move-object/from16 v0, v19

    move-object v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_a

    .line 4806
    .end local v13           #c:Landroid/database/Cursor;
    .end local v43           #strSearch:Ljava/lang/String;
    .end local v44           #strSearchWord:Ljava/lang/String;
    :cond_1a
    const/16 v17, 0x0

    .line 4808
    .local v17, c_other:Landroid/database/Cursor;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$5500(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/email/activity/MessageList;->access$5700(Lcom/android/email/activity/MessageList;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v7, v40

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 4821
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_a

    .line 4822
    :catch_5
    move-exception v4

    move-object/from16 v24, v4

    .line 4823
    .restart local v24       #e:Ljava/lang/Exception;
    :try_start_12
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 4830
    .end local v3           #cal:Ljava/util/Calendar;
    .end local v12           #beforeQuery:Ljava/lang/String;
    .end local v17           #c_other:Landroid/database/Cursor;
    .end local v24           #e:Ljava/lang/Exception;
    .end local v48           #todayMilli:J
    .end local v50           #todayQuery:Ljava/lang/String;
    .end local v52           #yesterdayQuery:Ljava/lang/String;
    :cond_1b
    new-instance v46, Ljava/util/HashMap;

    invoke-direct/range {v46 .. v46}, Ljava/util/HashMap;-><init>()V

    .line 4831
    .local v46, threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;>;"
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    .line 4832
    .local v45, subjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v33, 0x0

    .line 4833
    .local v33, messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    const/16 v51, 0x0

    .line 4835
    .local v51, totalThreadMail:I
    const/4 v13, 0x0

    .line 4836
    .restart local v13       #c:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 4838
    .local v16, c_count:I
    :try_start_13
    sget v4, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1f

    .line 4839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$5500(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    sget-object v7, Lcom/android/email/activity/MessageList;->SORT_QUERY:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    move-object/from16 v7, v40

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4885
    :goto_c
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 4886
    const-string v4, "MessageList >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground(): Cursor c.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4887
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 4890
    :cond_1c
    new-instance v34, Lcom/android/email/activity/MessageList$MessageData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    move-object/from16 v0, v34

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$MessageData;-><init>(Lcom/android/email/activity/MessageList;)V

    .line 4891
    .local v34, msgData:Lcom/android/email/activity/MessageList$MessageData;
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    .line 4892
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v34

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->mailBoxKey:S

    .line 4893
    const/4 v4, 0x2

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v34

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->accountKey:S

    .line 4894
    const/4 v4, 0x3

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->displayName:Ljava/lang/String;

    .line 4895
    const/4 v4, 0x4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    .line 4896
    const/4 v4, 0x5

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/android/email/activity/MessageList$MessageData;->timeStamp:J

    .line 4897
    const/4 v4, 0x6

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v34

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->flagRead:S

    .line 4898
    const/4 v4, 0x7

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v34

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->flagFavorite:S

    .line 4899
    const/16 v4, 0x8

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    move v0, v4

    move-object/from16 v1, v34

    iput-short v0, v1, Lcom/android/email/activity/MessageList$MessageData;->flagAttachment:S

    .line 4900
    const/16 v4, 0x9

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->toList:Ljava/lang/String;

    .line 4901
    const/16 v4, 0xa

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    .line 4902
    const/16 v4, 0xb

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->followUpFlag:I

    .line 4903
    const/16 v4, 0xc

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/email/activity/MessageList$MessageData;->importance:I

    .line 4904
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_24

    .line 4906
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v46

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    check-cast v0, Ljava/util/List;

    move-object/from16 v33, v0

    .line 4907
    if-nez v33, :cond_23

    .line 4908
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 4909
    .local v28, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4911
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v46

    move-object v1, v4

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4912
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v45

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4928
    .end local v28           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    :cond_1d
    :goto_d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-result v4

    if-nez v4, :cond_1c

    .line 4931
    .end local v34           #msgData:Lcom/android/email/activity/MessageList$MessageData;
    :cond_1e
    :try_start_14
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4934
    const-string v4, "MessageList >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground(): totalThreadMail = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4937
    new-instance v21, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$5500(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v4

    add-int v5, v16, v51

    add-int/lit8 v5, v5, 0xa

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 4939
    .local v21, childCursor:Landroid/database/MatrixCursor;
    const/16 v35, 0x0

    .line 4940
    .local v35, position:I
    const/16 v29, 0x0

    .line 4943
    .local v29, listSize:I
    const/16 v41, 0x0

    .line 4944
    .local v41, status:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$5802(Lcom/android/email/activity/MessageList;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 4945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    add-int v5, v16, v51

    add-int/lit8 v5, v5, 0xa

    new-array v5, v5, [S

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$5902(Lcom/android/email/activity/MessageList;[S)[S

    .line 4946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    add-int v5, v16, v51

    add-int/lit8 v5, v5, 0xa

    new-array v5, v5, [I

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageList;->access$6002(Lcom/android/email/activity/MessageList;[I)[I

    .line 4948
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    move/from16 v36, v35

    .end local v26           #i$:Ljava/util/Iterator;
    .end local v35           #position:I
    .end local p1
    .local v36, position:I
    :goto_e
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    .line 4949
    .local v47, threadSubject:Ljava/lang/String;
    invoke-virtual/range {v46 .. v47}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .end local v33           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    check-cast v33, Ljava/util/List;

    .line 4950
    .restart local v33       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v29

    .line 4951
    const/16 v41, 0x0

    .line 4954
    const/4 v4, 0x1

    move/from16 v0, v29

    move v1, v4

    if-le v0, v1, :cond_2c

    .line 4955
    const/4 v4, 0x0

    move-object/from16 v0, v33

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/activity/MessageList$MessageData;

    .line 4956
    .local v22, data:Lcom/android/email/activity/MessageList$MessageData;
    new-instance v42, Ljava/lang/StringBuffer;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuffer;-><init>()V

    .line 4958
    .local v42, strBuffer:Ljava/lang/StringBuffer;
    new-instance v42, Ljava/lang/StringBuffer;

    .end local v42           #strBuffer:Ljava/lang/StringBuffer;
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuffer;-><init>()V

    .line 4959
    .restart local v42       #strBuffer:Ljava/lang/StringBuffer;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v42

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4962
    invoke-virtual/range {v21 .. v21}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v37

    .line 4963
    .local v37, row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4964
    move-object/from16 v0, v22

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->mailBoxKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4965
    move-object/from16 v0, v22

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->accountKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4966
    const/4 v4, 0x1

    sub-int v4, v29, v4

    move-object/from16 v0, v33

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/email/activity/MessageList$MessageData;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->displayName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4967
    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4968
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MessageData;->timeStamp:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4969
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4970
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4971
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4972
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4973
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4974
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->followUpFlag:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4975
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->importance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 4979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[I

    move-result-object v4

    const/4 v5, -0x2

    aput v5, v4, v36

    .line 4982
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6100()Ljava/util/HashSet;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 4984
    const/16 v41, 0x2

    .line 4985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$5800(Lcom/android/email/activity/MessageList;)Ljava/util/HashSet;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4991
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$5900(Lcom/android/email/activity/MessageList;)[S

    move-result-object v4

    aput-short v41, v4, v36

    .line 4994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/MessageList$ListItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    add-int/lit8 v35, v36, 0x1

    .end local v36           #position:I
    .restart local v35       #position:I
    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$ListItem;-><init>(Lcom/android/email/activity/MessageList;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4997
    .end local v22           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v37           #row:Landroid/database/MatrixCursor$RowBuilder;
    .end local v42           #strBuffer:Ljava/lang/StringBuffer;
    :goto_10
    add-int v4, v16, v51

    move/from16 v0, v35

    move v1, v4

    if-le v0, v1, :cond_26

    .line 4998
    const-string v4, "MessageList >>"

    const-string v5, "doInBackground(): position is over array bound."

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5044
    .end local v47           #threadSubject:Ljava/lang/String;
    :goto_11
    const/16 v46, 0x0

    .line 5048
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5051
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "flagRead"

    aput-object v5, v6, v4

    .line 5052
    .local v6, projection:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "-100"

    aput-object v5, v8, v4

    .line 5053
    .local v8, selectionarg:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id = ?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 5056
    .local v23, dummyCursor:Landroid/database/Cursor;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_a

    .line 4846
    .end local v6           #projection:[Ljava/lang/String;
    .end local v8           #selectionarg:[Ljava/lang/String;
    .end local v21           #childCursor:Landroid/database/MatrixCursor;
    .end local v23           #dummyCursor:Landroid/database/Cursor;
    .end local v29           #listSize:I
    .end local v35           #position:I
    .end local v41           #status:S
    .restart local p1
    :cond_1f
    :try_start_15
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$5600()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v44

    .line 4849
    .restart local v44       #strSearchWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$600()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 4860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4400(Lcom/android/email/activity/MessageList;)I

    move-result v4

    if-nez v4, :cond_20

    .line 4861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 4878
    .restart local v43       #strSearch:Ljava/lang/String;
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$5500(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/android/email/activity/MessageList;->SORT_QUERY:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto/16 :goto_c

    .line 4851
    .end local v43           #strSearch:Ljava/lang/String;
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 4852
    .restart local v43       #strSearch:Ljava/lang/String;
    goto :goto_12

    .line 4854
    .end local v43           #strSearch:Ljava/lang/String;
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( toList like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 4855
    .restart local v43       #strSearch:Ljava/lang/String;
    goto :goto_12

    .line 4857
    .end local v43           #strSearch:Ljava/lang/String;
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 4858
    .restart local v43       #strSearch:Ljava/lang/String;
    goto/16 :goto_12

    .line 4864
    .end local v43           #strSearch:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4400(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4400(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4400(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_22

    .line 4868
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( toList like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .restart local v43       #strSearch:Ljava/lang/String;
    goto/16 :goto_12

    .line 4872
    .end local v43           #strSearch:Ljava/lang/String;
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( displayName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR subject like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .restart local v43       #strSearch:Ljava/lang/String;
    goto/16 :goto_12

    .line 4914
    .end local v43           #strSearch:Ljava/lang/String;
    .end local v44           #strSearchWord:Ljava/lang/String;
    .restart local v34       #msgData:Lcom/android/email/activity/MessageList$MessageData;
    :cond_23
    invoke-interface/range {v33 .. v34}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4917
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    .line 4918
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_d

    .line 4922
    :cond_24
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 4923
    .restart local v28       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4925
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v46

    move-object v1, v4

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4926
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v45

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_d

    .line 4931
    .end local v28           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    .end local v34           #msgData:Lcom/android/email/activity/MessageList$MessageData;
    :catchall_1
    move-exception v4

    :try_start_16
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v4

    .line 4989
    .end local p1
    .restart local v21       #childCursor:Landroid/database/MatrixCursor;
    .restart local v22       #data:Lcom/android/email/activity/MessageList$MessageData;
    .restart local v29       #listSize:I
    .restart local v36       #position:I
    .restart local v37       #row:Landroid/database/MatrixCursor$RowBuilder;
    .restart local v41       #status:S
    .restart local v42       #strBuffer:Ljava/lang/StringBuffer;
    .restart local v47       #threadSubject:Ljava/lang/String;
    :cond_25
    const/16 v41, 0x1

    goto/16 :goto_f

    .line 5004
    .end local v22           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v36           #position:I
    .end local v37           #row:Landroid/database/MatrixCursor$RowBuilder;
    .end local v42           #strBuffer:Ljava/lang/StringBuffer;
    .restart local v35       #position:I
    :cond_26
    shl-int/lit8 v4, v41, 0x4

    move v0, v4

    int-to-short v0, v0

    move/from16 v41, v0

    .line 5007
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    move/from16 v36, v35

    .end local v35           #position:I
    .restart local v36       #position:I
    :goto_13
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/activity/MessageList$MessageData;

    .line 5008
    .restart local v22       #data:Lcom/android/email/activity/MessageList$MessageData;
    invoke-virtual/range {v21 .. v21}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v37

    .line 5009
    .restart local v37       #row:Landroid/database/MatrixCursor$RowBuilder;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5010
    move-object/from16 v0, v22

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->mailBoxKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5011
    move-object/from16 v0, v22

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->accountKey:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5012
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->displayName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5013
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->subject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5014
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MessageData;->timeStamp:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5015
    move-object/from16 v0, v22

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->flagRead:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5016
    move-object/from16 v0, v22

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->flagFavorite:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5017
    move-object/from16 v0, v22

    iget-short v0, v0, Lcom/android/email/activity/MessageList$MessageData;->flagAttachment:S

    move v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5018
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->toList:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5019
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageData;->threadSubject:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5020
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->followUpFlag:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5021
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->importance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[I

    move-result-object v4

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageData;->recordID:I

    move v5, v0

    aput v5, v4, v36

    .line 5027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$5900(Lcom/android/email/activity/MessageList;)[S

    move-result-object v4

    aput-short v41, v4, v36

    .line 5030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/MessageList$ListItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    add-int/lit8 v35, v36, 0x1

    .end local v36           #position:I
    .restart local v35       #position:I
    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$ListItem;-><init>(Lcom/android/email/activity/MessageList;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5032
    add-int v4, v16, v51

    move/from16 v0, v35

    move v1, v4

    if-le v0, v1, :cond_27

    .line 5033
    const-string v4, "MessageList >>"

    const-string v5, "doInBackground(): position is over array bound."

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5038
    .end local v22           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v37           #row:Landroid/database/MatrixCursor$RowBuilder;
    :goto_14
    add-int v4, v16, v51

    move/from16 v0, v35

    move v1, v4

    if-le v0, v1, :cond_28

    .line 5039
    const-string v4, "MessageList >>"

    const-string v5, "doInBackground(): position is over array bound."

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .restart local v22       #data:Lcom/android/email/activity/MessageList$MessageData;
    .restart local v37       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_27
    move/from16 v36, v35

    .line 5034
    .end local v35           #position:I
    .restart local v36       #position:I
    goto/16 :goto_13

    .end local v22           #data:Lcom/android/email/activity/MessageList$MessageData;
    .end local v36           #position:I
    .end local v37           #row:Landroid/database/MatrixCursor$RowBuilder;
    .restart local v35       #position:I
    :cond_28
    move/from16 v36, v35

    .line 5040
    .end local v35           #position:I
    .restart local v36       #position:I
    goto/16 :goto_e

    .line 5062
    .end local v13           #c:Landroid/database/Cursor;
    .end local v16           #c_count:I
    .end local v21           #childCursor:Landroid/database/MatrixCursor;
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v29           #listSize:I
    .end local v33           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    .end local v36           #position:I
    .end local v41           #status:S
    .end local v45           #subjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v46           #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;>;"
    .end local v47           #threadSubject:Ljava/lang/String;
    .end local v51           #totalThreadMail:I
    :cond_29
    new-instance v30, Landroid/database/MergeCursor;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/database/Cursor;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/database/Cursor;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 5063
    .local v30, mMc:Landroid/database/MergeCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 5064
    invoke-virtual/range {v30 .. v30}, Landroid/database/MergeCursor;->close()V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    .line 5065
    const/16 v30, 0x0

    :cond_2a
    move-object/from16 v4, v30

    .line 5067
    goto/16 :goto_5

    .end local v30           #mMc:Landroid/database/MergeCursor;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v16       #c_count:I
    .restart local v21       #childCursor:Landroid/database/MatrixCursor;
    .restart local v27       #i$:Ljava/util/Iterator;
    .restart local v29       #listSize:I
    .restart local v33       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;"
    .restart local v36       #position:I
    .restart local v41       #status:S
    .restart local v45       #subjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v46       #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessageList$MessageData;>;>;"
    .restart local v47       #threadSubject:Ljava/lang/String;
    .restart local v51       #totalThreadMail:I
    :cond_2b
    move/from16 v35, v36

    .end local v36           #position:I
    .restart local v35       #position:I
    goto :goto_14

    .end local v27           #i$:Ljava/util/Iterator;
    .end local v35           #position:I
    .restart local v36       #position:I
    :cond_2c
    move/from16 v35, v36

    .end local v36           #position:I
    .restart local v35       #position:I
    goto/16 :goto_10

    .end local v35           #position:I
    .end local v47           #threadSubject:Ljava/lang/String;
    .restart local v36       #position:I
    :cond_2d
    move/from16 v35, v36

    .end local v36           #position:I
    .restart local v35       #position:I
    goto/16 :goto_11

    .line 4760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 4849
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
    .line 4567
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->doInBackground([Ljava/lang/Void;)Landroid/database/MergeCursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/MergeCursor;)V
    .locals 13
    .parameter "c"

    .prologue
    .line 5082
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/MergeCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5227
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 5088
    .restart local p1
    :cond_1
    sget-boolean v0, Lcom/android/email/activity/MessageList;->isStartedFromMailboxList:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6200(Lcom/android/email/activity/MessageList;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6300(Lcom/android/email/activity/MessageList;)I

    move-result v0

    if-nez v0, :cond_3

    .line 5089
    :cond_2
    const-string v0, "MessageList >>"

    const-string v1, "11111 onPostExecute -> RefreshFolderListTask -----------------------------------------"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5090
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v1, Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$5102(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$RefreshFolderListTask;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 5091
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$6300(Lcom/android/email/activity/MessageList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5095
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5099
    const/4 v11, 0x0

    .line 5100
    .local v11, tempCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5101
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v11

    .line 5104
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageList;->access$6402(Lcom/android/email/activity/MessageList;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 5110
    :try_start_0
    sget v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-eq v0, v1, :cond_5

    .line 5112
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageList;->mTotalListCount:I

    .line 5113
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

    .line 5116
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5800(Lcom/android/email/activity/MessageList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6102(Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 5117
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5900(Lcom/android/email/activity/MessageList;)[S

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6502([S)[S

    .line 5118
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6000(Lcom/android/email/activity/MessageList;)[I

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:[I

    .line 5120
    sget v0, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    sput v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    .line 5130
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5131
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6602(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 5132
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxTypeForList:I

    iput v1, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mMailboxType:I

    .line 5134
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRealPosition:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->setRealArray(Ljava/util/ArrayList;)V

    .line 5136
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 5137
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/email/activity/MessageList;->mAdapterIsChanged:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5154
    :cond_6
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadMessageTask || mRefreshView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRefreshView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5155
    iget-boolean v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mRefreshView:Z

    if-eqz v0, :cond_7

    .line 5156
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6700(Lcom/android/email/activity/MessageList;)V

    .line 5157
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6800(Lcom/android/email/activity/MessageList;)V

    .line 5159
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 5160
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    .line 5168
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    :cond_8
    sget v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-ne v0, v1, :cond_b

    .line 5172
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6900(Lcom/android/email/activity/MessageList;)V

    .line 5173
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$7000(Lcom/android/email/activity/MessageList;Landroid/database/Cursor;)V

    .line 5221
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->syncFavorites()V

    .line 5224
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->syncFollowupFlag()V

    .line 5226
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5139
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 5140
    .local v10, ise:Ljava/lang/IllegalStateException;
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException >>> LoadMessagesTask:onPostExecute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5141
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 5142
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5144
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 5145
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException >>> LoadMessagesTask:onPostExecute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5146
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 5147
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5161
    .end local v8           #iae:Ljava/lang/IllegalArgumentException;
    :cond_a
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget-wide v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mAccountKey:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 5162
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mAccountKey:J

    invoke-static {v0, v1, v2}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 5175
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7100(Lcom/android/email/activity/MessageList;)V

    .line 5177
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$6400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_f

    .line 5178
    const/4 v6, 0x0

    .line 5180
    .local v6, accountKey:Ljava/lang/String;
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMailboxKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5182
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$7200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5186
    .local v7, c2:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5187
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5188
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$4402(Lcom/android/email/activity/MessageList;I)I

    .line 5189
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailboxType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$4400(Lcom/android/email/activity/MessageList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5190
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5193
    :cond_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5196
    if-eqz v6, :cond_9

    .line 5197
    const-string v3, "accountKey =? AND mailboxKey =?"

    .line 5198
    .local v3, selection_empty:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->mMailboxKey:J

    .end local v6           #accountKey:Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5202
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 5204
    .local v12, totalMessageCount:I
    if-gtz v12, :cond_d

    .line 5205
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    move v9, v0

    .line 5206
    .local v9, isVisible:Z
    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const v2, 0x7f080140

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5207
    if-nez v9, :cond_d

    .line 5208
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5209
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5212
    .end local v9           #isVisible:Z
    :cond_d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 5193
    .end local v3           #selection_empty:Ljava/lang/String;
    .end local v12           #totalMessageCount:I
    .restart local v6       #accountKey:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 5205
    .end local v6           #accountKey:Ljava/lang/String;
    .restart local v3       #selection_empty:Ljava/lang/String;
    .restart local v12       #totalMessageCount:I
    :cond_e
    const/4 v0, 0x0

    move v9, v0

    goto :goto_3

    .line 5215
    .end local v3           #selection_empty:Ljava/lang/String;
    .end local v7           #c2:Landroid/database/Cursor;
    .end local v12           #totalMessageCount:I
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageList$LoadMessagesTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4567
    check-cast p1, Landroid/database/MergeCursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->onPostExecute(Landroid/database/MergeCursor;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 4592
    return-void
.end method
