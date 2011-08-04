.class Lcom/android/email/activity/MessageCompose$LoadMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 1874
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1874
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1874
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;
    .locals 13
    .parameter "messageIds"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1877
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v7, p1, v10

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v5

    .line 1878
    .local v5, message:Lcom/android/email/provider/EmailContent$Message;
    if-nez v5, :cond_0

    .line 1879
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    .line 1922
    :goto_0
    return-object v6

    .line 1881
    :cond_0
    iget-wide v1, v5, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 1882
    .local v1, accountId:J
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1884
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6, v0}, Lcom/android/email/activity/MessageCompose;->access$902(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Account;

    .line 1887
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1888
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v1

    .line 1889
    const-wide/16 v6, -0x1

    cmp-long v6, v1, v6

    if-nez v6, :cond_2

    .line 1890
    const-string v6, "Compose >>"

    const-string v7, "[r2d209 check] There is no default account"

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 1903
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1904
    const-string v6, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1906
    .local v4, isEditDraft:Z
    if-eqz v4, :cond_3

    .line 1907
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 1909
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1911
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1922
    :goto_1
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v10

    aput-object v0, v6, v11

    goto :goto_0

    .line 1892
    .end local v4           #isEditDraft:Z
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v7, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/activity/MessageCompose;->access$902(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Account;

    .line 1893
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1894
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    goto/16 :goto_0

    .line 1914
    .restart local v4       #isEditDraft:Z
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 1915
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1916
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1918
    .end local v4           #isEditDraft:Z
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 1919
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while loading message body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1874
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 10
    .parameter "messageAndAccount"

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "com.android.email.intent.action.REPLY_ALL"

    const-string v6, "com.android.email.intent.action.FORWARD_OLD"

    .line 1927
    if-nez p1, :cond_0

    .line 2048
    :goto_0
    return-void

    .line 1931
    :cond_0
    aget-object v2, p1, v8

    check-cast v2, Lcom/android/email/provider/EmailContent$Message;

    .line 1932
    .local v2, message:Lcom/android/email/provider/EmailContent$Message;
    aget-object v0, p1, v9

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 1933
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v2, :cond_1

    .line 1937
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v4, 0x7f08003e

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1939
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0

    .line 1943
    :cond_1
    const-string v3, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1945
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)V

    .line 1948
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3, v2}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/provider/EmailContent$Message;

    .line 1950
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v3

    iget v1, v3, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 1951
    .local v1, flags:I
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    and-int/lit16 v4, v1, 0x200

    if-eqz v4, :cond_4

    move v4, v9

    :goto_1
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageCompose;->access$2602(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 1953
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v4, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;

    invoke-direct {v4, p0, v2}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;-><init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;Lcom/android/email/provider/EmailContent$Message;)V

    new-array v5, v9, [Ljava/lang/Long;

    iget-wide v6, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageCompose;->access$2702(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 2028
    .end local v1           #flags:I
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2029
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3, v0}, Lcom/android/email/activity/MessageCompose;->access$902(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Account;

    .line 2035
    :cond_3
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$3400(Lcom/android/email/activity/MessageCompose;)Z

    .line 2037
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/email/activity/MessageCompose;->processSourceMessageGuarded(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V

    .line 2038
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3, v9}, Lcom/android/email/activity/MessageCompose;->access$3502(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 2042
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageCompose;->showHideGalButton(Lcom/android/email/provider/EmailContent$Account;)V

    goto/16 :goto_0

    .restart local v1       #flags:I
    :cond_4
    move v4, v8

    .line 1951
    goto :goto_1

    .line 1989
    .end local v1           #flags:I
    :cond_5
    const-string v3, "com.android.email.intent.action.REPLY"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "com.android.email.intent.action.REPLY_ALL"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "com.android.email.intent.action.FORWARD"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1994
    :cond_6
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)V

    .line 1997
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3, v2}, Lcom/android/email/activity/MessageCompose;->access$202(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/provider/EmailContent$Message;

    .line 1999
    const-string v3, "com.android.email.intent.action.REPLY_ALL"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2000
    :cond_7
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2001
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 2002
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2003
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$3000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2004
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$3100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2005
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3, v9}, Lcom/android/email/activity/MessageCompose;->access$3202(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 2021
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$3300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-virtual {v3, v4, v5, v9}, Lcom/android/email/Controller;->setMessageRead(JZ)V

    goto/16 :goto_2

    .line 2008
    :cond_9
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 2009
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 2010
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2011
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$3000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2012
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$3100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2013
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3, v9}, Lcom/android/email/activity/MessageCompose;->access$3202(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_3
.end method
