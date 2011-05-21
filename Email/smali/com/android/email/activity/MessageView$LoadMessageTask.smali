.class Lcom/android/email/activity/MessageView$LoadMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/email/provider/EmailContent$Message;",
        ">;"
    }
.end annotation


# instance fields
.field private mElmSvcCancelled:Z

.field private mId:J

.field private mOkToFetch:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageView;JZZ)V
    .locals 0
    .parameter
    .parameter "messageId"
    .parameter "okToFetch"
    .parameter "elmSvcCancelled"

    .prologue
    .line 4314
    iput-object p1, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    .line 4315
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4316
    iput-wide p2, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mId:J

    .line 4317
    iput-boolean p4, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mOkToFetch:Z

    .line 4318
    iput-boolean p5, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mElmSvcCancelled:Z

    .line 4319
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/email/provider/EmailContent$Message;
    .locals 4
    .parameter "params"

    .prologue
    .line 4323
    iget-wide v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mId:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4324
    const/4 v0, 0x0

    .line 4326
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4305
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 11
    .parameter "message"

    .prologue
    .line 4341
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView$LoadMessageTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4406
    :cond_0
    :goto_0
    return-void

    .line 4344
    :cond_1
    if-nez p1, :cond_2

    .line 4345
    iget-wide v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mId:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 4346
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_0

    .line 4351
    :cond_2
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$4200()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    .line 4352
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4202(Landroid/content/Context;)Landroid/content/Context;

    .line 4357
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$3800(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4359
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v6}, Lcom/android/email/activity/MessageView;->access$4300(Lcom/android/email/activity/MessageView;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4362
    .local v6, cur:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 4364
    .local v8, isMimeLoaded:I
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4365
    const-string v0, "isMimeLoaded"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 4367
    :cond_4
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$4200()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v9

    .line 4368
    .local v9, mAccount:Lcom/android/email/provider/EmailContent$Account;
    iget-object v10, v9, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 4369
    .local v10, protocolVer:Ljava/lang/String;
    if-eqz v10, :cond_8

    const-string v0, "2.5"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4370
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mElmSvcCancelled:Z

    if-eqz v0, :cond_6

    .line 4371
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4400(Lcom/android/email/activity/MessageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4372
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4500(Lcom/android/email/activity/MessageView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4381
    :goto_1
    const-string v0, "MessageView"

    const-string v1, "loadMoreMessage is shown always for protocolversion 2.5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4398
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4404
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #isMimeLoaded:I
    .end local v9           #mAccount:Lcom/android/email/provider/EmailContent$Account;
    .end local v10           #protocolVer:Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mOkToFetch:Z

    invoke-static {v0, p1, v1}, Lcom/android/email/activity/MessageView;->access$4600(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Message;Z)V

    .line 4405
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4700(Lcom/android/email/activity/MessageView;)V

    goto/16 :goto_0

    .line 4374
    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v8       #isMimeLoaded:I
    .restart local v9       #mAccount:Lcom/android/email/provider/EmailContent$Account;
    .restart local v10       #protocolVer:Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mOkToFetch:Z

    if-eqz v0, :cond_7

    if-nez v8, :cond_7

    .line 4375
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4400(Lcom/android/email/activity/MessageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4376
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4500(Lcom/android/email/activity/MessageView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4394
    .end local v9           #mAccount:Lcom/android/email/provider/EmailContent$Account;
    .end local v10           #protocolVer:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 4395
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4398
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 4378
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #mAccount:Lcom/android/email/provider/EmailContent$Account;
    .restart local v10       #protocolVer:Ljava/lang/String;
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4400(Lcom/android/email/activity/MessageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4379
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4500(Lcom/android/email/activity/MessageView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 4398
    .end local v9           #mAccount:Lcom/android/email/provider/EmailContent$Account;
    .end local v10           #protocolVer:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4383
    .restart local v9       #mAccount:Lcom/android/email/provider/EmailContent$Account;
    .restart local v10       #protocolVer:Ljava/lang/String;
    :cond_8
    :try_start_4
    iget-byte v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 4384
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4400(Lcom/android/email/activity/MessageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4385
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4500(Lcom/android/email/activity/MessageView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4386
    const-string v0, "MessageView"

    const-string v1, "mFlagTruncated == FLAG_TRUNCATED_YES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4388
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4400(Lcom/android/email/activity/MessageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4389
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4500(Lcom/android/email/activity/MessageView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4390
    const-string v0, "MessageView"

    const-string v1, "mFlagTruncated == FLAG_TRUNCATED_NO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4305
    check-cast p1, Lcom/android/email/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->onPostExecute(Lcom/android/email/provider/EmailContent$Message;)V

    return-void
.end method
