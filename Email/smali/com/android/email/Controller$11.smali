.class Lcom/android/email/Controller$11;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->loadMoreMessages(JLcom/android/email/Controller$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$11;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 895
    iget-object v5, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/Controller$11;->val$mailboxId:J

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 896
    .local v3, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v3, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-object v5, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 901
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    .line 904
    iget-object v5, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 906
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v2, :cond_0

    iget v5, v2, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    if-lez v5, :cond_0

    .line 908
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 909
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "field"

    const-string v6, "visibleLimit"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v5, "add"

    iget v6, v2, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/email/Controller$11;->val$mailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 912
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 914
    iget v5, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    iget v6, v2, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    add-int/2addr v5, v6

    iput v5, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 915
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mailbox.mVisibleLimit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v5, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v6

    invoke-virtual {v5, v0, v3, v6}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V

    goto/16 :goto_0
.end method
