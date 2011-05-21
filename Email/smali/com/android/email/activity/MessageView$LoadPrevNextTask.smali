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
    .line 3982
    iput-object p1, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3983
    iput-wide p2, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->mLocalMailboxId:J

    .line 3984
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 14
    .parameter "params"

    .prologue
    .line 3988
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->mLocalMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    .line 3990
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3994
    .local v7, c:Landroid/database/Cursor;
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 3995
    invoke-static {}, Lcom/android/email/activity/MessageList;->getSelectedSearchType()I

    move-result v6

    .line 3996
    .local v6, SearchType:I
    invoke-static {}, Lcom/android/email/activity/MessageList;->getstrSearchWord()Ljava/lang/String;

    move-result-object v13

    .line 3999
    .local v13, strSearchWord:Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 4011
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$3700(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v11

    .line 4012
    .local v11, mb:Lcom/android/email/provider/EmailContent$Mailbox;
    iget v0, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_2

    .line 4013
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

    .line 4029
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

    .line 4216
    .end local v12           #strSearch:Ljava/lang/String;
    .end local v13           #strSearchWord:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4218
    const/4 v7, 0x0

    :cond_1
    move-object v8, v7

    .line 4220
    .end local v7           #c:Landroid/database/Cursor;
    .local v8, c:Landroid/database/Cursor;
    :goto_2
    return-object v8

    .line 4002
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

    .line 4003
    .restart local v12       #strSearch:Ljava/lang/String;
    goto :goto_0

    .line 4005
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

    .line 4006
    .restart local v12       #strSearch:Ljava/lang/String;
    goto :goto_0

    .line 4008
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

    .line 4009
    .restart local v12       #strSearch:Ljava/lang/String;
    goto :goto_0

    .line 4016
    .end local v12           #strSearch:Ljava/lang/String;
    .restart local v11       #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    iget v0, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget v0, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 4018
    :cond_3
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

    .line 4022
    .end local v12           #strSearch:Ljava/lang/String;
    :cond_4
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

    .line 4033
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #SearchType:I
    .end local v11           #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 4034
    .local v9, e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4035
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 4036
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4037
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4039
    :cond_5
    const/4 v7, 0x0

    .line 4050
    goto/16 :goto_1

    .line 4043
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 4044
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "View >>"

    const-string v1, "LoadPrevNextTask exception"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4045
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4046
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4048
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 4054
    .end local v9           #e:Ljava/lang/Exception;
    .end local v12           #strSearch:Ljava/lang/String;
    .end local v13           #strSearchWord:Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    :cond_7
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$3800(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4055
    const-string v0, "View >>"

    const-string v1, "LoadPrevNextTask.doInBackground() called at EAS account"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
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

    .line 4061
    :catch_2
    move-exception v0

    move-object v10, v0

    .line 4062
    .local v10, ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 4064
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4065
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4067
    :cond_8
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    const/4 v7, 0x0

    .line 4078
    goto/16 :goto_1

    .line 4073
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    move-object v9, v0

    .line 4074
    .local v9, e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4075
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 4076
    const/4 v7, 0x0

    move-object v8, v7

    .line 4077
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 4080
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_9
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$3800(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4081
    const-string v0, "View >>"

    const-string v1, "LoadPrevNextTask.doInBackground() called at EAS account"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
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

    .line 4087
    :catch_4
    move-exception v0

    move-object v10, v0

    .line 4088
    .restart local v10       #ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4089
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 4090
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4091
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4093
    :cond_a
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4094
    const/4 v7, 0x0

    .line 4104
    goto/16 :goto_1

    .line 4099
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v0

    move-object v9, v0

    .line 4100
    .restart local v9       #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4101
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 4102
    const/4 v7, 0x0

    move-object v8, v7

    .line 4103
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 4108
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_b
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    if-nez v0, :cond_d

    .line 4111
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

    .line 4115
    :catch_6
    move-exception v0

    move-object v10, v0

    .line 4116
    .restart local v10       #ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 4118
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4119
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4121
    :cond_c
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4122
    const/4 v7, 0x0

    .line 4132
    goto/16 :goto_1

    .line 4127
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_7
    move-exception v0

    move-object v9, v0

    .line 4128
    .restart local v9       #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4129
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 4130
    const/4 v7, 0x0

    move-object v8, v7

    .line 4131
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 4135
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_d
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 4138
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

    .line 4143
    :catch_8
    move-exception v0

    move-object v10, v0

    .line 4144
    .restart local v10       #ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 4146
    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4149
    :cond_e
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4150
    const/4 v7, 0x0

    .line 4160
    goto/16 :goto_1

    .line 4155
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_9
    move-exception v0

    move-object v9, v0

    .line 4156
    .restart local v9       #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4157
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 4158
    const/4 v7, 0x0

    move-object v8, v7

    .line 4159
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 4162
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_f
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 4165
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

    .line 4170
    :catch_a
    move-exception v0

    move-object v10, v0

    .line 4171
    .restart local v10       #ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4172
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 4173
    if-eqz v7, :cond_10

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4174
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4176
    :cond_10
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4177
    const/4 v7, 0x0

    .line 4187
    goto/16 :goto_1

    .line 4182
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_b
    move-exception v0

    move-object v9, v0

    .line 4183
    .restart local v9       #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4184
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 4185
    const/4 v7, 0x0

    move-object v8, v7

    .line 4186
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 4189
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_11
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4192
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

    .line 4196
    :catch_c
    move-exception v0

    move-object v10, v0

    .line 4197
    .restart local v10       #ise:Ljava/lang/IllegalStateException;
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4198
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 4199
    if-eqz v7, :cond_12

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4200
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4202
    :cond_12
    const-string v0, "Email"

    const-string v1, " ===== LoadPrevNextTask doInBackground Exception Cursor.close() return null ===== "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4203
    const/4 v7, 0x0

    .line 4213
    goto/16 :goto_1

    .line 4208
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v0

    move-object v9, v0

    .line 4209
    .restart local v9       #e:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    const-string v0, "View >>"

    const-string v1, "DatabaseObjectNotClosedException in loadprevnexttask"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    invoke-virtual {v9}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 4211
    const/4 v7, 0x0

    move-object v8, v7

    .line 4212
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 3999
    nop

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
    .line 3979
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
    .line 4225
    if-nez p1, :cond_1

    .line 4239
    :cond_0
    :goto_0
    return-void

    .line 4229
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$3002(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadPrevNextTask;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 4231
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4235
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$3900(Lcom/android/email/activity/MessageView;)V

    .line 4236
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageView;->access$3102(Lcom/android/email/activity/MessageView;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 4237
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$3100(Lcom/android/email/activity/MessageView;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$4000(Lcom/android/email/activity/MessageView;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 4238
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4100(Lcom/android/email/activity/MessageView;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3979
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
