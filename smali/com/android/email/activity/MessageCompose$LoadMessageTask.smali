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
    .line 1308
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1308
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1308
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

    .line 1311
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v7, p1, v10

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v5

    .line 1312
    .local v5, message:Lcom/android/email/provider/EmailContent$Message;
    if-nez v5, :cond_0

    .line 1313
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    .line 1356
    :goto_0
    return-object v6

    .line 1315
    :cond_0
    iget-wide v1, v5, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 1316
    .local v1, accountId:J
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1318
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6, v0}, Lcom/android/email/activity/MessageCompose;->access$502(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Account;

    .line 1321
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1322
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v1

    .line 1323
    const-wide/16 v6, -0x1

    cmp-long v6, v1, v6

    if-nez v6, :cond_2

    .line 1324
    const-string v6, "Compose >>"

    const-string v7, "[r2d209 check] There is no default account"

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 1337
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1338
    const-string v6, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1340
    .local v4, isEditDraft:Z
    if-eqz v4, :cond_3

    .line 1341
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 1343
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1345
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    :goto_1
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v10

    aput-object v0, v6, v11

    goto :goto_0

    .line 1326
    .end local v4           #isEditDraft:Z
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v7, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/activity/MessageCompose;->access$502(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Account;

    .line 1327
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1328
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    goto/16 :goto_0

    .line 1348
    .restart local v4       #isEditDraft:Z
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 1349
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1350
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1352
    .end local v4           #isEditDraft:Z
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 1353
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

    .line 1354
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1308
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 9
    .parameter "messageAndAccount"

    .prologue
    const/16 v4, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "com.android.email.intent.action.REPLY_ALL"

    const-string v5, "com.android.email.intent.action.FORWARD_OLD"

    .line 1361
    if-nez p1, :cond_0

    .line 1451
    :goto_0
    return-void

    .line 1365
    :cond_0
    aget-object v1, p1, v8

    check-cast v1, Lcom/android/email/provider/EmailContent$Message;

    .line 1366
    .local v1, message:Lcom/android/email/provider/EmailContent$Message;
    aget-object v0, p1, v7

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 1367
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 1371
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v3, 0x7f080037

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1373
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0

    .line 1377
    :cond_1
    const-string v2, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1378
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2, v1}, Lcom/android/email/activity/MessageCompose;->access$702(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/provider/EmailContent$Message;

    .line 1379
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v3, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;-><init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;)V

    new-array v4, v7, [Ljava/lang/Long;

    iget-wide v5, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageCompose;->access$1702(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1431
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1432
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2, v0}, Lcom/android/email/activity/MessageCompose;->access$502(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Account;

    .line 1438
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)V

    .line 1440
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/email/activity/MessageCompose;->processSourceMessageGuarded(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V

    .line 1441
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2, v7}, Lcom/android/email/activity/MessageCompose;->access$2602(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 1445
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose;->showHideGalButton(Lcom/android/email/provider/EmailContent$Account;)V

    goto :goto_0

    .line 1395
    :cond_4
    const-string v2, "com.android.email.intent.action.REPLY"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.email.intent.action.FORWARD"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1399
    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2, v1}, Lcom/android/email/activity/MessageCompose;->access$1902(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/provider/EmailContent$Message;

    .line 1402
    const-string v2, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1403
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1404
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1405
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 1406
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 1407
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1408
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2, v7}, Lcom/android/email/activity/MessageCompose;->access$2302(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 1424
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/email/Controller;->setMessageRead(JZ)V

    goto/16 :goto_1

    .line 1411
    :cond_8
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 1412
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1413
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 1414
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 1415
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1416
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2, v7}, Lcom/android/email/activity/MessageCompose;->access$2302(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_2
.end method
