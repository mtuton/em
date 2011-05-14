.class Lcom/android/email/activity/MessageView$LoadBodyTask;
.super Landroid/os/AsyncTask;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBodyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mId:J

.field private mLoadAttach:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageView;JZ)V
    .locals 0
    .parameter
    .parameter "messageId"
    .parameter "loadAttachment"

    .prologue
    .line 4421
    iput-object p1, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4422
    iput-wide p2, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    .line 4423
    iput-boolean p4, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mLoadAttach:Z

    .line 4424
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4413
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 12
    .parameter "params"

    .prologue
    .line 4430
    const/4 v7, 0x0

    .line 4431
    .local v7, text:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v10, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    invoke-static {v9, v10, v11}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 4432
    .local v3, html:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 4433
    iget-object v9, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v10, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    invoke-static {v9, v10, v11}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 4437
    :cond_0
    iget-object v9, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v10, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    invoke-static {v9, v10, v11}, Lcom/android/email/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 4438
    .local v8, textReply:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v10, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    invoke-static {v9, v10, v11}, Lcom/android/email/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 4440
    .local v4, htmlReply:Ljava/lang/String;
    if-nez v8, :cond_1

    if-eqz v4, :cond_2

    .line 4441
    :cond_1
    iget-object v9, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v10, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    invoke-static {v9, v10, v11}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v5

    .line 4442
    .local v5, message:Lcom/android/email/provider/EmailContent$Message;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4444
    .local v2, buff:Ljava/lang/StringBuffer;
    iget-object v9, v5, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v1

    .line 4447
    .local v1, address:[Lcom/android/email/mail/Address;
    const-string v9, "\r\n\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v1}, Lcom/android/email/mail/Address;->toString([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " wrote: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4450
    .local v0, addrStr:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 4451
    if-nez v3, :cond_3

    .line 4452
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4453
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4471
    .end local v0           #addrStr:Ljava/lang/String;
    .end local v1           #address:[Lcom/android/email/mail/Address;
    .end local v2           #buff:Ljava/lang/StringBuffer;
    .end local v5           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_2
    :goto_0
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    .line 4477
    .end local v3           #html:Ljava/lang/String;
    .end local v4           #htmlReply:Ljava/lang/String;
    .end local v8           #textReply:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 4456
    .restart local v0       #addrStr:Ljava/lang/String;
    .restart local v1       #address:[Lcom/android/email/mail/Address;
    .restart local v2       #buff:Ljava/lang/StringBuffer;
    .restart local v3       #html:Ljava/lang/String;
    .restart local v4       #htmlReply:Ljava/lang/String;
    .restart local v5       #message:Lcom/android/email/provider/EmailContent$Message;
    .restart local v8       #textReply:Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4457
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4460
    :cond_4
    if-nez v3, :cond_5

    .line 4461
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4462
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 4465
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4466
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 4472
    .end local v0           #addrStr:Ljava/lang/String;
    .end local v1           #address:[Lcom/android/email/mail/Address;
    .end local v2           #buff:Ljava/lang/StringBuffer;
    .end local v3           #html:Ljava/lang/String;
    .end local v4           #htmlReply:Ljava/lang/String;
    .end local v5           #message:Lcom/android/email/provider/EmailContent$Message;
    .end local v8           #textReply:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 4475
    .local v6, re:Ljava/lang/RuntimeException;
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while loading message body: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4476
    iget-object v9, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v9}, Lcom/android/email/activity/MessageView;->access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadBodyError()V

    .line 4477
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4413
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 5
    .parameter "results"

    .prologue
    const/4 v4, 0x1

    .line 4483
    if-nez p1, :cond_1

    .line 4497
    :cond_0
    :goto_0
    return-void

    .line 4486
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    aget-object v2, p1, v4

    iget-boolean v3, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mLoadAttach:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageView;->access$4900(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4490
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$5000(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4494
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> onPostExecute()  >>>>> 3877"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4495
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageView;->access$5100(Lcom/android/email/activity/MessageView;Z)V

    goto :goto_0
.end method
