.class Lcom/android/email/activity/MessageCompose$9;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$attachments:[Lcom/android/email/provider/EmailContent$Attachment;

.field final synthetic val$send:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Z[Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$9;->val$send:Z

    iput-object p3, p0, Lcom/android/email/activity/MessageCompose$9;->val$attachments:[Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14
    .parameter "params"

    .prologue
    .line 1869
    const/4 v0, 0x1

    .line 1870
    .local v0, accountValid:Z
    const/4 v5, 0x0

    .line 1872
    .local v5, inOutbox:Z
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v8

    monitor-enter v8

    .line 1873
    :try_start_0
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/provider/EmailContent$Message;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1875
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    sget-object v9, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1877
    .local v3, draftUri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v3, v10, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1880
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1881
    .local v7, values:Landroid/content/ContentValues;
    const-string v9, "textContent"

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    iget-object v10, v10, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v9, "textReply"

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    iget-object v10, v10, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    const-string v9, "htmlReply"

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    iget-object v10, v10, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const-string v9, "introText"

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    iget-object v10, v10, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v9, v10, v11, v7}, Lcom/android/email/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 1896
    .end local v3           #draftUri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$9;->val$attachments:[Lcom/android/email/provider/EmailContent$Attachment;

    .local v1, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v2, v1, v4

    .line 1898
    .local v2, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    const-string v9, "com.android.email.intent.action.FORWARD"

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1899
    :cond_0
    const-wide/16 v9, -0x1

    iput-wide v9, v2, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 1902
    :cond_1
    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Attachment;->isSaved()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1904
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iput-wide v9, v2, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1905
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2, v9}, Lcom/android/email/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1896
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1888
    .end local v1           #arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    .end local v2           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_3
    iget-boolean v9, p0, Lcom/android/email/activity/MessageCompose$9;->val$send:Z

    if-eqz v9, :cond_4

    .line 1889
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/email/provider/EmailContent$Message;I)V

    .line 1890
    const/4 v5, 0x1

    goto :goto_0

    .line 1893
    :cond_4
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/email/provider/EmailContent$Message;I)V

    goto :goto_0

    .line 1931
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 1909
    .restart local v1       #arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_1
    iget-boolean v9, p0, Lcom/android/email/activity/MessageCompose$9;->val$send:Z

    if-eqz v9, :cond_6

    .line 1910
    if-eqz v5, :cond_7

    .line 1912
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/email/Controller;->sendMessageFromOutbox(JJ)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1913
    const/4 v0, 0x0

    .line 1930
    :cond_6
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    monitor-exit v8

    return-object v9

    .line 1920
    :cond_7
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/email/Controller;->sendMessage(JJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_6

    .line 1921
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1935
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "accountValid"

    .prologue
    const/4 v2, 0x1

    .line 1936
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f080185

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1942
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose$9;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1954
    :cond_1
    :goto_0
    return-void

    .line 1946
    :cond_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$9;->val$send:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    .line 1947
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f080075

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1951
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1602(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1935
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$9;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
