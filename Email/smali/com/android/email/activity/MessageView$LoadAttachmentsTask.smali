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
    .line 4413
    iput-object p1, p0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4414
    iput-boolean p2, p0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mLoadAttach:Z

    .line 4415
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4408
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->doInBackground([Ljava/lang/Object;)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Lcom/android/email/provider/EmailContent$Attachment;
    .locals 3
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    .line 4420
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 4421
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachFontColor:I

    .line 4422
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachBackgroundColor:I

    .line 4424
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
    .line 4408
    check-cast p1, [Lcom/android/email/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->onPostExecute([Lcom/android/email/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 20
    .parameter "attachments"

    .prologue
    .line 4429
    if-nez p1, :cond_0

    .line 4430
    const-string v3, "Email"

    const-string v4, "LoadAttachmentsTask attachments is null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4504
    :goto_0
    return-void

    .line 4435
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    new-array v3, v3, [Lcom/android/email/activity/MessageView$BodyImageInfo;

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5002([Lcom/android/email/activity/MessageView$BodyImageInfo;)[Lcom/android/email/activity/MessageView$BodyImageInfo;

    .line 4436
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5102(I)I

    .line 4438
    const/4 v12, 0x0

    .line 4439
    .local v12, htmlChanged:Z
    move-object/from16 v9, p1

    .local v9, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v14, v9

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v14, :cond_4

    aget-object v10, v9, v13

    .line 4440
    .local v10, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadAttachmentsTask attachments id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5200(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v10, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v10, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 4446
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 4447
    .local v16, sbuf1:Ljava/lang/StringBuffer;
    const-string v3, "\\s+(?i)src=\"cid(?-i):\\Q"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v10, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\\E\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4448
    .local v11, contentIdRe:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 4449
    .local v17, sbuf2:Ljava/lang/StringBuffer;
    const-string v3, " src=\""

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v10, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4451
    .local v18, srcContentUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageView;->access$5200(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object v1, v11

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageView;->access$5202(Lcom/android/email/activity/MessageView;Ljava/lang/String;)Ljava/lang/String;

    .line 4452
    const/4 v12, 0x1

    .line 4454
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5000()[Lcom/android/email/activity/MessageView$BodyImageInfo;

    move-result-object v3

    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5100()I

    move-result v4

    new-instance v5, Lcom/android/email/activity/MessageView$BodyImageInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/email/activity/MessageView$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageView$1;)V

    aput-object v5, v3, v4

    .line 4456
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5000()[Lcom/android/email/activity/MessageView$BodyImageInfo;

    move-result-object v3

    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5100()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, v10, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/email/activity/MessageView$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 4457
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5000()[Lcom/android/email/activity/MessageView$BodyImageInfo;

    move-result-object v3

    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5100()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, v10, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/email/activity/MessageView$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 4458
    invoke-static {}, Lcom/android/email/activity/MessageView;->access$5100()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5102(I)I

    .line 4439
    .end local v11           #contentIdRe:Ljava/lang/String;
    .end local v16           #sbuf1:Ljava/lang/StringBuffer;
    .end local v17           #sbuf2:Ljava/lang/StringBuffer;
    .end local v18           #srcContentUri:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 4465
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mLoadAttach:Z

    move v3, v0

    if-eqz v3, :cond_3

    iget-object v3, v10, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 4466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachFontColor:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachBackgroundColor:I

    move v5, v0

    invoke-static {v3, v10, v4, v5}, Lcom/android/email/activity/MessageView;->access$5400(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Attachment;II)V

    goto :goto_2

    .line 4468
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mLoadAttach:Z

    move v3, v0

    if-eqz v3, :cond_1

    iget-object v3, v10, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v4, "@namo.co.kr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachFontColor:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mAttachBackgroundColor:I

    move v5, v0

    invoke-static {v3, v10, v4, v5}, Lcom/android/email/activity/MessageView;->access$5400(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Attachment;II)V

    goto :goto_2

    .line 4473
    .end local v10           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->mLoadAttach:Z

    move v3, v0

    if-eqz v3, :cond_5

    .line 4475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5500(Lcom/android/email/activity/MessageView;)V

    .line 4478
    :cond_5
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 4482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5600(Lcom/android/email/activity/MessageView;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4484
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageView.java >>>>> onPostExecute()  >>>>> 3968"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    const v4, 0x7f080187

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 4488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5200(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 4491
    const-string v3, "<(/?)([^<>]*)?>"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 4492
    .local v15, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$5200(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 4494
    .local v19, tempStr:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 4495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$5202(Lcom/android/email/activity/MessageView;Ljava/lang/String;)Ljava/lang/String;

    .line 4501
    .end local v15           #p:Ljava/util/regex/Pattern;
    .end local v19           #tempStr:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v3

    const-string v4, "email://"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageView;->access$5200(Lcom/android/email/activity/MessageView;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4503
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageView;->access$5202(Lcom/android/email/activity/MessageView;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
