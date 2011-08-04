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
    .line 6142
    iput-object p1, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    .line 6143
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6144
    iput-wide p2, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mId:J

    .line 6145
    iput-boolean p4, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mOkToFetch:Z

    .line 6146
    iput-boolean p5, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mElmSvcCancelled:Z

    .line 6147
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/email/provider/EmailContent$Message;
    .locals 4
    .parameter "params"

    .prologue
    .line 6151
    iget-wide v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mId:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 6152
    const/4 v0, 0x0

    .line 6154
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
    .line 6133
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
    .line 6169
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView$LoadMessageTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6282
    :cond_0
    :goto_0
    return-void

    .line 6172
    :cond_1
    if-nez p1, :cond_2

    .line 6173
    iget-wide v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mId:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 6174
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_0

    .line 6182
    :cond_2
    const-string v0, "MessageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jebarlin >>> message.mIsMimeLoaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mIsMimeLoaded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6184
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {}, Lcom/android/email/activity/MessageView;->access$4900()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$5000(Lcom/android/email/activity/MessageView;Ljava/lang/String;)V

    .line 6278
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->mOkToFetch:Z

    invoke-static {v0, p1, v1}, Lcom/android/email/activity/MessageView;->access$5100(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Message;Z)V

    .line 6279
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5200(Lcom/android/email/activity/MessageView;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6133
    check-cast p1, Lcom/android/email/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->onPostExecute(Lcom/android/email/provider/EmailContent$Message;)V

    return-void
.end method
