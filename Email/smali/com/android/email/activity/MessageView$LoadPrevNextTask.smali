.class Lcom/android/email/activity/MessageView$LoadPrevNextTask;
.super Landroid/os/AsyncTask;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadPrevNextTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mLocalMailboxId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageView;J)V
    .locals 0
    .parameter
    .parameter "mailboxId"

    .prologue
    .line 5866
    iput-object p1, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5867
    iput-wide p2, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->mLocalMailboxId:J

    .line 5868
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 14
    .parameter "params"

    .prologue
    .line 5872
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->mLocalMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    .line 5874
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 5878
    .local v7, c:Landroid/database/Cursor;
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 5879
    invoke-static {}, Lcom/android/email/activity/MessageList;->getSelectedSearchType()I

    move-result v6

    .line 5880
    .local v6, SearchType:I
    invoke-static {}, Lcom/android/email/activity/MessageList;->getstrSearchWord()Ljava/lang/String;

    move-result-object v13

    .line 5883
    .local v13, strSearchWord:Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 5895
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$500(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v11

    .line 5896
    .local v11, mb:Lcom/android/email/provider/EmailContent$Mailbox;
    iget v0, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_3

    .line 5897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( displayName like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5913
    .end local v11           #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    .local v12, strSearch:Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #selection:Ljava/lang/String;
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/email/activity/MessageList;->SORT_QUERY:[Ljava/lang/String;

    sget v6, Lcom/android/email/activity/MessageList;->mSortType:I

    .end local v6           #SearchType:I
    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 6100
    .end local v12           #strSearch:Ljava/lang/String;
    .end local v13           #strSearchWord:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6101
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6102
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6104
    :cond_1
    const/4 v7, 0x0

    :cond_2
    move-object v8, v7

    .line 6106
    .end local v7           #c:Landroid/database/Cursor;
    .local v8, c:Landroid/database/Cursor;
    :goto_2
    return-object v8

    .line 5886
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #SearchType:I
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v13       #strSearchWord:Ljava/lang/String;
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( displayName like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5887
    .restart local v12       #strSearch:Ljava/lang/String;
    goto :goto_0

    .line 5889
    .end local v12           #strSearch:Ljava/lang/String;
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( toList like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5890
    .restart local v12       #strSearch:Ljava/lang/String;
    goto :goto_0

    .line 5892
    .end local v12           #strSearch:Ljava/lang/String;
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5893
    .restart local v12       #strSearch:Ljava/lang/String;
    goto/16 :goto_0

    .line 5900
    .end local v12           #strSearch:Ljava/lang/String;
    .restart local v11       #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_3
    iget v0, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget v0, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 5902
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( toList like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12       #strSearch:Ljava/lang/String;
    goto/16 :goto_0

    .line 5906
    .end local v12           #strSearch:Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( displayName like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12       #strSearch:Ljava/lang/String;
    goto/16 :goto_0

    .line 5917
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #SearchType:I
    .end local v11           #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 5918
    .local v9, e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5919
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 5920
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5921
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5923
    :cond_6
    const/4 v7, 0x0

    .line 5934
    goto/16 :goto_1

    .line 5927
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 5928
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "View >>"

    const-string v1, "LoadPrevNextTask exception"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5929
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5930
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5932
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 5938
    .end local v9           #e:Ljava/lang/Exception;
    .end local v12           #strSearch:Ljava/lang/String;
    .end local v13           #strSearchWord:Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    :cond_8
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4500(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5939
    const-string v0, "View >>"

    const-string v1, "LoadPrevNextTask.doInBackground() called at EAS account"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5941
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "importance COLLATE NOCASE DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    goto/16 :goto_1

    .line 5945
    :catch_2
    move-exception v0

    move-object v10, v0

    .line 5946
    .local v10, ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5947
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 5948
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5949
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5951
    :cond_9
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5952
    const/4 v7, 0x0

    .line 5962
    goto/16 :goto_1

    .line 5957
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    move-object v9, v0

    .line 5958
    .local v9, e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5959
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 5960
    const/4 v7, 0x0

    move-object v8, v7

    .line 5961
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 5964
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_a
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4500(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5965
    const-string v0, "View >>"

    const-string v1, "LoadPrevNextTask.doInBackground() called at EAS account"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5967
    :try_start_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "flagStatus COLLATE NOCASE DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v7

    goto/16 :goto_1

    .line 5971
    :catch_4
    move-exception v0

    move-object v10, v0

    .line 5972
    .restart local v10       #ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5973
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 5974
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5975
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5977
    :cond_b
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5978
    const/4 v7, 0x0

    .line 5988
    goto/16 :goto_1

    .line 5983
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v0

    move-object v9, v0

    .line 5984
    .restart local v9       #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5985
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 5986
    const/4 v7, 0x0

    move-object v8, v7

    .line 5987
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 5992
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_c
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    if-nez v0, :cond_e

    .line 5995
    :try_start_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "timeStamp COLLATE NOCASE DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v7

    goto/16 :goto_1

    .line 5999
    :catch_6
    move-exception v0

    move-object v10, v0

    .line 6000
    .restart local v10       #ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6001
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6002
    if-eqz v7, :cond_d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 6003
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6005
    :cond_d
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6006
    const/4 v7, 0x0

    .line 6016
    goto/16 :goto_1

    .line 6011
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_7
    move-exception v0

    move-object v9, v0

    .line 6012
    .restart local v9       #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6013
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 6014
    const/4 v7, 0x0

    move-object v8, v7

    .line 6015
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 6019
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_e
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 6022
    :try_start_4
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "displayName COLLATE NOCASE"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v7

    goto/16 :goto_1

    .line 6027
    :catch_8
    move-exception v0

    move-object v10, v0

    .line 6028
    .restart local v10       #ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6029
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6030
    if-eqz v7, :cond_f

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 6031
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6033
    :cond_f
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6034
    const/4 v7, 0x0

    .line 6044
    goto/16 :goto_1

    .line 6039
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_9
    move-exception v0

    move-object v9, v0

    .line 6040
    .restart local v9       #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6041
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 6042
    const/4 v7, 0x0

    move-object v8, v7

    .line 6043
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 6046
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_10
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 6049
    :try_start_5
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "toList COLLATE NOCASE"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_5 .. :try_end_5} :catch_b

    move-result-object v7

    goto/16 :goto_1

    .line 6054
    :catch_a
    move-exception v0

    move-object v10, v0

    .line 6055
    .restart local v10       #ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6056
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6057
    if-eqz v7, :cond_11

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6058
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6060
    :cond_11
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6061
    const/4 v7, 0x0

    .line 6071
    goto/16 :goto_1

    .line 6066
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_b
    move-exception v0

    move-object v9, v0

    .line 6067
    .restart local v9       #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6068
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 6069
    const/4 v7, 0x0

    move-object v8, v7

    .line 6070
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 6073
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_12
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6076
    :try_start_6
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "flagRead COLLATE NOCASE"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_6 .. :try_end_6} :catch_d

    move-result-object v7

    goto/16 :goto_1

    .line 6080
    :catch_c
    move-exception v0

    move-object v10, v0

    .line 6081
    .restart local v10       #ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6082
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6083
    if-eqz v7, :cond_13

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 6084
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6086
    :cond_13
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6087
    const/4 v7, 0x0

    .line 6097
    goto/16 :goto_1

    .line 6092
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v0

    move-object v9, v0

    .line 6093
    .restart local v9       #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6094
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 6095
    const/4 v7, 0x0

    move-object v8, v7

    .line 6096
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 5883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5863
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 6111
    if-nez p1, :cond_1

    .line 6125
    :cond_0
    :goto_0
    return-void

    .line 6115
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$3902(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadPrevNextTask;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 6117
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6121
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;)V

    .line 6122
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageView;->access$4002(Lcom/android/email/activity/MessageView;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 6123
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4000(Lcom/android/email/activity/MessageView;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$4700(Lcom/android/email/activity/MessageView;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 6124
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5863
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
