.class Lcom/android/email/Controller$9;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->resetVisibleLimits()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 813
    iget-object v1, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 814
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 816
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 821
    const-string v13, "accountKey=?"

    .line 823
    .local v13, selection:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 824
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 825
    .local v7, accountId:J
    iget-object v1, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v8}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    .line 826
    .local v6, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v6, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v11

    .line 829
    .local v11, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v11, :cond_0

    iget v1, v11, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    if-lez v1, :cond_0

    .line 830
    iget v12, v11, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    .line 831
    .local v12, limit:I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 832
    .local v10, cv:Landroid/content/ContentValues;
    const-string v1, "visibleLimit"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v10, v13, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 839
    .end local v6           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v7           #accountId:J
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #info:Lcom/android/email/mail/Store$StoreInfo;
    .end local v12           #limit:I
    .end local v13           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 840
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 839
    .restart local v13       #selection:Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 840
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 843
    :cond_3
    return-void
.end method
