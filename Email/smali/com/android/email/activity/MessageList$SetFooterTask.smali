.class Lcom/android/email/activity/MessageList$SetFooterTask;
.super Landroid/os/AsyncTask;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetFooterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private bRefreshPosition:Z

.field private mMailboxId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 5514
    iput-object p1, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5514
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList$SetFooterTask;-><init>(Lcom/android/email/activity/MessageList;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 12
    .parameter "params"

    .prologue
    .line 5525
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->mMailboxId:J

    .line 5526
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 5527
    .local v7, accountId:J
    const/4 v0, 0x2

    aget-object p1, p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->bRefreshPosition:Z

    .line 5528
    const/4 v11, -0x1

    .line 5529
    .local v11, mailboxType:I
    iget-wide v2, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->mMailboxId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 5531
    :try_start_0
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->mMailboxId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 5532
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$4700()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 5535
    .local v9, c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5536
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 5537
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .line 5540
    :cond_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5548
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_1
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFooterTask :: Box id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->mMailboxId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | Box type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5549
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, v11}, Lcom/android/email/activity/MessageList;->access$4802(Lcom/android/email/activity/MessageList;I)I

    .line 5552
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "################# IsEAS value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$4900(Lcom/android/email/activity/MessageList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5554
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$4900(Lcom/android/email/activity/MessageList;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 5555
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2500(Lcom/android/email/activity/MessageList;)I

    .line 5558
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, v7, v8}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    .line 5560
    .local v6, account:Lcom/android/email/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5000(Lcom/android/email/activity/MessageList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$5100(Lcom/android/email/activity/MessageList;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/email/Controller;->returnAccountType(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$4900(Lcom/android/email/activity/MessageList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 5561
    :cond_3
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5594
    .end local v6           #account:Lcom/android/email/provider/EmailContent$Account;
    :goto_0
    return-object v0

    .line 5540
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5542
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 5544
    .local v10, iae:Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 5565
    .end local v10           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v6       #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_4
    packed-switch v11, :pswitch_data_0

    .line 5575
    const-wide/16 v2, -0x1

    cmp-long v0, v7, v2

    if-eqz v0, :cond_9

    .line 5577
    if-eqz v6, :cond_9

    .line 5580
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$4900(Lcom/android/email/activity/MessageList;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 5581
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2500(Lcom/android/email/activity/MessageList;)I

    .line 5584
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5000(Lcom/android/email/activity/MessageList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$5100(Lcom/android/email/activity/MessageList;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/email/Controller;->returnAccountType(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$4900(Lcom/android/email/activity/MessageList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 5585
    :cond_6
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 5571
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 5573
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 5587
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5588
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 5590
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 5594
    :cond_9
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 5565
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5514
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$SetFooterTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "listFooterMode"

    .prologue
    .line 5599
    if-nez p1, :cond_0

    .line 5603
    :goto_0
    return-void

    .line 5602
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->mMailboxId:J

    iget-boolean v4, p0, Lcom/android/email/activity/MessageList$SetFooterTask;->bRefreshPosition:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageList;->access$5200(Lcom/android/email/activity/MessageList;IJZ)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5514
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$SetFooterTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
