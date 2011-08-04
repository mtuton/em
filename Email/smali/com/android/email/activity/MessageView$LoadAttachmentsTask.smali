.class Lcom/android/email/activity/MessageView$LoadAttachmentsTask;
.super Landroid/os/AsyncTask;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/email/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field mAttachBackgroundColor:I

.field mAttachFontColor:I

.field mLoadAttach:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageView;Z)V
    .locals 0
    .parameter
    .parameter "loadAttachment"

    .prologue
    .line 6533
    iput-object p1, p0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6534
    iput-boolean p2, p0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mLoadAttach:Z

    .line 6535
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6528
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->doInBackground([Ljava/lang/Object;)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Lcom/android/email/provider/EmailContent$Attachment;
    .locals 3
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    .line 6540
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 6541
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachFontColor:I

    .line 6542
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachBackgroundColor:I

    .line 6544
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    const/4 v1, 0x0

    aget-object p0, p1, v1

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6528
    check-cast p1, [Lcom/android/email/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->onPostExecute([Lcom/android/email/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 23
    .parameter "attachments"

    .prologue
    .line 6549
    if-nez p1, :cond_0

    .line 6550
    const-string v3, "Email"

    const-string v4, "LoadAttachmentsTask attachments is null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6654
    :goto_0
    return-void

    .line 6555
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    new-array v3, v3, [Lcom/android/email/activity/MessageView$BodyImageInfo;

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5702([Lcom/android/email/activity/MessageView$BodyImageInfo;)[Lcom/android/email/activity/MessageView$BodyImageInfo;

    .line 6556
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5802(I)I

    .line 6558
    const/16 v16, 0x0

    .line 6559
    .local v16, htmlChanged:Z
    const/16 v17, 0x0

    .local v17, idx:I
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_6

    .line 6560
    aget-object v4, p1, v17

    .line 6562
    .local v4, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    const-string v3, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadAttachmentsTask attachments id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5900(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 6568
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 6569
    .local v19, sbuf1:Ljava/lang/StringBuffer;
    const-string v3, "\\s+(?i)src=\"cid(?-i):\\Q"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\\E\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 6570
    .local v15, contentIdRe:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 6571
    .local v20, sbuf2:Ljava/lang/StringBuffer;
    const-string v3, " src=\""

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    .line 6573
    .local v21, srcContentUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageView;->access$5900(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/activity/MessageView;->access$5902(Lcom/android/email/activity/MessageView;Ljava/lang/String;)Ljava/lang/String;

    .line 6574
    const/16 v16, 0x1

    .line 6576
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5700()[Lcom/android/email/activity/MessageView$BodyImageInfo;

    move-result-object v3

    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5800()I

    move-result v5

    new-instance v6, Lcom/android/email/activity/MessageView$BodyImageInfo;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/email/activity/MessageView$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageView$1;)V

    aput-object v6, v3, v5

    .line 6578
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5700()[Lcom/android/email/activity/MessageView$BodyImageInfo;

    move-result-object v3

    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5800()I

    move-result v5

    aget-object v3, v3, v5

    iget-object v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/email/activity/MessageView$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 6579
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5700()[Lcom/android/email/activity/MessageView$BodyImageInfo;

    move-result-object v3

    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5800()I

    move-result v5

    aget-object v3, v3, v5

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .end local v4           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iput-object v4, v3, Lcom/android/email/activity/MessageView$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 6580
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5800()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5802(I)I

    .line 6559
    .end local v15           #contentIdRe:Ljava/lang/String;
    .end local v19           #sbuf1:Ljava/lang/StringBuffer;
    .end local v20           #sbuf2:Ljava/lang/StringBuffer;
    .end local v21           #srcContentUri:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 6585
    .restart local v4       #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    const/4 v5, 0x2

    if-lt v3, v5, :cond_3

    .line 6587
    const/4 v7, 0x1

    .line 6593
    .local v7, isMulAtt:Z
    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    if-ne v7, v3, :cond_4

    .line 6595
    const/4 v8, 0x1

    .line 6604
    .local v8, isLast:Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mLoadAttach:Z

    move v3, v0

    if-eqz v3, :cond_5

    iget-object v3, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 6605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachFontColor:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachBackgroundColor:I

    move v6, v0

    invoke-static/range {v3 .. v8}, Lcom/android/email/activity/MessageView;->access$6100(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Attachment;IIZZ)V

    goto :goto_2

    .line 6591
    .end local v7           #isMulAtt:Z
    .end local v8           #isLast:Z
    :cond_3
    const/4 v7, 0x0

    .restart local v7       #isMulAtt:Z
    goto :goto_3

    .line 6599
    :cond_4
    const/4 v8, 0x0

    .restart local v8       #isLast:Z
    goto :goto_4

    .line 6607
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mLoadAttach:Z

    move v3, v0

    if-eqz v3, :cond_1

    iget-object v3, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v5, "@namo.co.kr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachFontColor:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachBackgroundColor:I

    move v6, v0

    invoke-static/range {v3 .. v8}, Lcom/android/email/activity/MessageView;->access$6100(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Attachment;IIZZ)V

    goto :goto_2

    .line 6612
    .end local v4           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v7           #isMulAtt:Z
    .end local v8           #isLast:Z
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mLoadAttach:Z

    move v3, v0

    if-eqz v3, :cond_7

    .line 6614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$6200(Lcom/android/email/activity/MessageView;)V

    .line 6617
    :cond_7
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 6621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$6300(Lcom/android/email/activity/MessageView;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 6623
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageView.java >>>>> onPostExecute()  >>>>> 3968"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    const v4, 0x7f0801a4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 6627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5900(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 6630
    const-string v3, "<(/?)([^<>]*)?>"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 6631
    .local v18, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5900(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 6633
    .local v22, tempStr:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 6634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$5902(Lcom/android/email/activity/MessageView;Ljava/lang/String;)Ljava/lang/String;

    .line 6640
    .end local v18           #p:Ljava/util/regex/Pattern;
    .end local v22           #tempStr:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v9

    const-string v10, "email://"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5900(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "text/html"

    const-string v13, "utf-8"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6644
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$500(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 6645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 6646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 6650
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    new-instance v4, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageView;->access$6402(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;)Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    .line 6651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$6400(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageView;->access$500(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6653
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageView;->access$5902(Lcom/android/email/activity/MessageView;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
