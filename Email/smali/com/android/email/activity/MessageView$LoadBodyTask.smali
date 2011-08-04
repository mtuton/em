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
    .line 6422
    iput-object p1, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6423
    iput-wide p2, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    .line 6424
    iput-boolean p4, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mLoadAttach:Z

    .line 6425
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6414
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 14
    .parameter "params"

    .prologue
    .line 6430
    :try_start_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 6431
    .local v9, textBuf:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 6433
    .local v4, htmlBuf:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 6434
    .local v8, text:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v12, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 6435
    .local v3, html:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 6436
    iget-object v11, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v12, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 6438
    :cond_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6439
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6442
    iget-object v11, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v12, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/email/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 6443
    .local v10, textReply:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v12, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/email/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 6445
    .local v5, htmlReply:Ljava/lang/String;
    if-nez v10, :cond_1

    if-eqz v5, :cond_2

    .line 6446
    :cond_1
    iget-object v11, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    iget-wide v12, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v6

    .line 6447
    .local v6, message:Lcom/android/email/provider/EmailContent$Message;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 6449
    .local v2, buff:Ljava/lang/StringBuffer;
    if-eqz v6, :cond_2

    .line 6450
    iget-object v11, v6, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v1

    .line 6453
    .local v1, address:[Lcom/android/email/mail/Address;
    const-string v11, "\r\n\n"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-static {v1}, Lcom/android/email/mail/Address;->toString([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " wrote: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6456
    .local v0, addrStr:Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 6457
    if-nez v3, :cond_3

    .line 6460
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6482
    .end local v0           #addrStr:Ljava/lang/String;
    .end local v1           #address:[Lcom/android/email/mail/Address;
    .end local v2           #buff:Ljava/lang/StringBuffer;
    .end local v6           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_2
    :goto_0
    if-nez v3, :cond_6

    .line 6483
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-object v13, v11, v12

    .line 6493
    .end local v3           #html:Ljava/lang/String;
    .end local v4           #htmlBuf:Ljava/lang/StringBuffer;
    .end local v5           #htmlReply:Ljava/lang/String;
    .end local v8           #text:Ljava/lang/String;
    .end local v9           #textBuf:Ljava/lang/StringBuffer;
    .end local v10           #textReply:Ljava/lang/String;
    :goto_1
    return-object v11

    .line 6465
    .restart local v0       #addrStr:Ljava/lang/String;
    .restart local v1       #address:[Lcom/android/email/mail/Address;
    .restart local v2       #buff:Ljava/lang/StringBuffer;
    .restart local v3       #html:Ljava/lang/String;
    .restart local v4       #htmlBuf:Ljava/lang/StringBuffer;
    .restart local v5       #htmlReply:Ljava/lang/String;
    .restart local v6       #message:Lcom/android/email/provider/EmailContent$Message;
    .restart local v8       #text:Ljava/lang/String;
    .restart local v9       #textBuf:Ljava/lang/StringBuffer;
    .restart local v10       #textReply:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6488
    .end local v0           #addrStr:Ljava/lang/String;
    .end local v1           #address:[Lcom/android/email/mail/Address;
    .end local v2           #buff:Ljava/lang/StringBuffer;
    .end local v3           #html:Ljava/lang/String;
    .end local v4           #htmlBuf:Ljava/lang/StringBuffer;
    .end local v5           #htmlReply:Ljava/lang/String;
    .end local v6           #message:Lcom/android/email/provider/EmailContent$Message;
    .end local v8           #text:Ljava/lang/String;
    .end local v9           #textBuf:Ljava/lang/StringBuffer;
    .end local v10           #textReply:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v7, v11

    .line 6491
    .local v7, re:Ljava/lang/RuntimeException;
    const-string v11, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while loading message body: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6492
    iget-object v11, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v11}, Lcom/android/email/activity/MessageView;->access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/activity/MessageView$MessageViewHandler;->loadBodyError()V

    .line 6493
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-object v13, v11, v12

    goto :goto_1

    .line 6468
    .end local v7           #re:Ljava/lang/RuntimeException;
    .restart local v0       #addrStr:Ljava/lang/String;
    .restart local v1       #address:[Lcom/android/email/mail/Address;
    .restart local v2       #buff:Ljava/lang/StringBuffer;
    .restart local v3       #html:Ljava/lang/String;
    .restart local v4       #htmlBuf:Ljava/lang/StringBuffer;
    .restart local v5       #htmlReply:Ljava/lang/String;
    .restart local v6       #message:Lcom/android/email/provider/EmailContent$Message;
    .restart local v8       #text:Ljava/lang/String;
    .restart local v9       #textBuf:Ljava/lang/StringBuffer;
    .restart local v10       #textReply:Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    .line 6471
    :try_start_1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 6476
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 6486
    .end local v0           #addrStr:Ljava/lang/String;
    .end local v1           #address:[Lcom/android/email/mail/Address;
    .end local v2           #buff:Ljava/lang/StringBuffer;
    .end local v6           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_6
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6414
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 6
    .parameter "results"

    .prologue
    const/4 v5, 0x1

    .line 6499
    if-nez p1, :cond_1

    .line 6516
    :cond_0
    :goto_0
    return-void

    .line 6503
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    iget-boolean v4, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->mLoadAttach:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageView;->access$5400(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6509
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$5500(Lcom/android/email/activity/MessageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6513
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "11111 MessageView.java >>>>> onPostExecute()  >>>>> 3877"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6514
    iget-object v1, p0, Lcom/android/email/activity/MessageView$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1, v5}, Lcom/android/email/activity/MessageView;->access$5600(Lcom/android/email/activity/MessageView;Z)V

    goto :goto_0

    .line 6504
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 6505
    .local v0, me:Lcom/android/email/mail/MessagingException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while loading body at background task."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
