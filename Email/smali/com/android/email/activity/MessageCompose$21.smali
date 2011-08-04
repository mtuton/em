.class Lcom/android/email/activity/MessageCompose$21;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$finalQuotedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6259
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$21;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$21;->val$finalQuotedText:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 9
    .parameter "messageIds"

    .prologue
    .line 6264
    new-instance v5, Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$21;->val$finalQuotedText:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6265
    .local v5, textBuf:Ljava/lang/StringBuffer;
    const/16 v0, 0x2710

    .line 6266
    .local v0, CONTENT_LENGTH_AT_ONETIME:I
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$21;->val$finalQuotedText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 6267
    .local v4, strLength:I
    const/4 v3, 0x0

    .line 6268
    .local v3, startIndex:I
    move v2, v0

    .line 6273
    .local v2, endIndex:I
    :goto_0
    if-le v2, v4, :cond_0

    .line 6274
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$21;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v6

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v6, v7, v8}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 6292
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 6278
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$21;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v6

    invoke-virtual {v5, v3, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v6, v7, v8}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 6280
    move v3, v2

    .line 6281
    add-int/2addr v2, v0

    .line 6284
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6286
    :catch_0
    move-exception v1

    .line 6288
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6259
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$21;->doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 6297
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$21;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 6298
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6259
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$21;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
