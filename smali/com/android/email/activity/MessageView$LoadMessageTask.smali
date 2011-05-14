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
.field private mId:J

.field private mOkToFetch:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageView;JZ)V
    .locals 0
    .parameter
    .parameter "messageId"
    .parameter "okToFetch"

    .prologue
    .line 4255
    iput-object p1, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4256
    iput-wide p2, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mId:J

    .line 4257
    iput-boolean p4, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mOkToFetch:Z

    .line 4258
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/email/provider/EmailContent$Message;
    .locals 4
    .parameter "params"

    .prologue
    .line 4262
    iget-wide v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mId:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4263
    const/4 v0, 0x0

    .line 4265
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
    .line 4247
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "MessageView"

    .line 4280
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView$LoadMessageTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4305
    :cond_0
    :goto_0
    return-void

    .line 4283
    :cond_1
    if-nez p1, :cond_2

    .line 4284
    iget-wide v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mId:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 4285
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_0

    .line 4292
    :cond_2
    iget-byte v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    if-ne v0, v2, :cond_3

    .line 4293
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4200(Lcom/android/email/activity/MessageView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 4294
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4300(Lcom/android/email/activity/MessageView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4295
    const-string v0, "MessageView"

    const-string v0, "mFlagTruncated == FLAG_TRUNCATED_YES"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mOkToFetch:Z

    invoke-static {v0, p1, v1}, Lcom/android/email/activity/MessageView;->access$4400(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Message;Z)V

    .line 4304
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4500(Lcom/android/email/activity/MessageView;)V

    goto :goto_0

    .line 4297
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4200(Lcom/android/email/activity/MessageView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4298
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$4300(Lcom/android/email/activity/MessageView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4299
    const-string v0, "MessageView"

    const-string v0, "mFlagTruncated == FLAG_TRUNCATED_NO"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4247
    check-cast p1, Lcom/android/email/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->onPostExecute(Lcom/android/email/provider/EmailContent$Message;)V

    return-void
.end method
