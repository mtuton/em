.class Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onPostExecute([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/email/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

.field final synthetic val$message:Lcom/android/email/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$message:Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1953
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->doInBackground([Ljava/lang/Long;)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/email/provider/EmailContent$Attachment;
    .locals 3
    .parameter "messageIds"

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1953
    check-cast p1, [Lcom/android/email/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->onPostExecute([Lcom/android/email/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 6
    .parameter "attachments"

    .prologue
    .line 1961
    if-nez p1, :cond_1

    .line 1987
    :cond_0
    return-void

    .line 1964
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1965
    .local v1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1966
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$message:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1967
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$message:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1964
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1969
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$message:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1970
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$message:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1985
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v4, v4, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v4, v1}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Attachment;)V

    goto :goto_1
.end method
