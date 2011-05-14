.class Lcom/android/email/activity/MessageList$RefreshFolderListTask;
.super Landroid/os/AsyncTask;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshFolderListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private folderNo:I

.field private mCurrentTab:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 1
    .parameter

    .prologue
    .line 5731
    iput-object p1, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5733
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->folderNo:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5731
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;-><init>(Lcom/android/email/activity/MessageList;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5731
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 14
    .parameter "arg0"

    .prologue
    .line 5746
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->mCurrentTab:Ljava/lang/Integer;

    .line 5747
    const-string v3, "accountKey=? AND type<64 AND flagVisible=1"

    .line 5752
    .local v3, MAILBOX_SELECTION:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5753
    iget-object v0, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$702(Lcom/android/email/activity/MessageList;Lcom/android/email/provider/EmailContent$Mailbox;)Lcom/android/email/provider/EmailContent$Mailbox;

    .line 5754
    iget-object v0, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5755
    iget-object v0, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 5756
    const/4 v0, 0x0

    .line 5798
    :goto_1
    return-object v0

    .line 5746
    .end local v3           #MAILBOX_SELECTION:Ljava/lang/String;
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 5761
    .restart local v3       #MAILBOX_SELECTION:Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "displayName"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "type,displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 5768
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 5769
    .local v11, count:I
    const/4 v0, -0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5770
    :cond_2
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5771
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 5773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountKey=? AND flagRead =0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 5776
    .local v7, selection_unread:Ljava/lang/String;
    const/4 v10, 0x0

    .line 5778
    .local v10, c_unread:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5783
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .line 5787
    if-eqz v10, :cond_2

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5788
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 5796
    .end local v7           #selection_unread:Ljava/lang/String;
    .end local v10           #c_unread:Landroid/database/Cursor;
    .end local v11           #count:I
    .end local v12           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v13, v0

    .line 5797
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 5798
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 5787
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v7       #selection_unread:Ljava/lang/String;
    .restart local v10       #c_unread:Landroid/database/Cursor;
    .restart local v11       #count:I
    .restart local v12       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5788
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 5793
    .end local v7           #selection_unread:Ljava/lang/String;
    .end local v10           #c_unread:Landroid/database/Cursor;
    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    const/4 v1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5731
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 10
    .parameter "object"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "MessageList >>"

    .line 5804
    if-nez p1, :cond_1

    .line 5861
    :cond_0
    :goto_0
    return-void

    .line 5807
    :cond_1
    aget-object v1, p1, v6

    check-cast v1, Landroid/database/Cursor;

    .line 5808
    .local v1, cursor:Landroid/database/Cursor;
    aget-object v6, p1, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5810
    .local v0, count:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5815
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$8000(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabHost;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/winset/TwTabHost;->clearAllTabs()V

    .line 5816
    const/4 v6, -0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5817
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 5818
    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v5

    .line 5819
    .local v5, text:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 5820
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5824
    :cond_2
    sget-boolean v6, Lcom/android/email/activity/MessageList;->isStartedFromMailboxList:Z

    if-eqz v6, :cond_9

    .line 5825
    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const-string v7, "Junk E-Mail"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_3
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const-string v7, "Drafts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_4
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const-string v7, "Outbox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_5
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const-string v7, "Sent Items"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const-string v7, "Deleted Items"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5831
    :cond_7
    iget v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->folderNo:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->mCurrentTab:Ljava/lang/Integer;

    .line 5833
    :cond_8
    iget v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->folderNo:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->folderNo:I

    .line 5836
    :cond_9
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_a

    .line 5838
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 5839
    .local v3, sTextbuf:Ljava/lang/StringBuffer;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5842
    .end local v3           #sTextbuf:Ljava/lang/StringBuffer;
    :cond_a
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_b

    sget-boolean v6, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v6, :cond_b

    .line 5844
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 5845
    .local v4, sbuf:Ljava/lang/StringBuffer;
    const-string v6, "MessageList >>"

    const-string v7, "folder update || row : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " | text : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5847
    .end local v4           #sbuf:Ljava/lang/StringBuffer;
    :cond_b
    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$8000(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabHost;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v7}, Lcom/android/email/activity/MessageList;->access$8000(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabHost;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/winset/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/android/email/winset/TwTabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/email/winset/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Lcom/android/email/winset/TwTabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f0700b2

    invoke-virtual {v7, v8}, Lcom/android/email/winset/TwTabHost$TabSpec;->setContent(I)Lcom/android/email/winset/TwTabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/email/winset/TwTabHost;->addTab(Lcom/android/email/winset/TwTabHost$TabSpec;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 5851
    .end local v5           #text:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 5852
    .local v2, ise:Ljava/lang/IllegalStateException;
    const-string v6, "MessageList >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalStateException >>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5853
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 5856
    .end local v2           #ise:Ljava/lang/IllegalStateException;
    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5858
    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v7, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->mCurrentTab:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/email/activity/MessageList;->access$6302(Lcom/android/email/activity/MessageList;I)I

    .line 5859
    iget-object v6, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$8000(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabHost;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->mCurrentTab:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/email/winset/TwTabHost;->setCurrentTab(I)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 5737
    iget-object v0, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 5738
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefreshFolderListTask PreExecute  STOP >>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5739
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->cancel(Z)Z

    .line 5742
    :cond_0
    return-void
.end method
