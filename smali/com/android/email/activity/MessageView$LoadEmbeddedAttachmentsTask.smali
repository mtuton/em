.class Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;
.super Landroid/os/AsyncTask;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadEmbeddedAttachmentsTask"
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
.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter

    .prologue
    .line 4620
    iput-object p1, p0, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4620
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;-><init>(Lcom/android/email/activity/MessageView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4620
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->doInBackground([Ljava/lang/Long;)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/email/provider/EmailContent$Attachment;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4623
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

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
    .line 4620
    check-cast p1, [Lcom/android/email/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->onPostExecute([Lcom/android/email/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 18
    .parameter "result"

    .prologue
    .line 4629
    if-nez p1, :cond_1

    .line 4631
    const-string v2, "Email"

    const-string v3, "LoadEmbeddedAttachmentsTask embedded attachments is null"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4654
    :cond_0
    return-void

    .line 4635
    :cond_1
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadEmbeddedAttachmentsTask embedded attachments number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4639
    move-object/from16 v13, p1

    .local v13, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    aget-object v14, v13, v15

    .line 4641
    .local v14, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 4642
    .local v17, logbuf:Ljava/lang/StringBuffer;
    const-string v2, "View >>"

    const-string v3, "content id : "

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v14, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v14, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4647
    iget-object v2, v14, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v14, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 4648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$6100(Lcom/android/email/activity/MessageView;)Lcom/android/email/Controller;

    move-result-object v2

    iget-wide v3, v14, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageView;->access$4300(Lcom/android/email/activity/MessageView;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/email/activity/MessageView;->access$3700(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v9, v0

    invoke-static {v9}, Lcom/android/email/activity/MessageView;->access$1800(Lcom/android/email/activity/MessageView;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v11, v0

    invoke-static {v11}, Lcom/android/email/activity/MessageView;->access$6000(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$ControllerResults;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 4639
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0
.end method
