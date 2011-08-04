.class Lcom/android/email/Controller$10;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->searchOnServer(JLcom/android/email/Controller$Result;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$mailboxId:J

.field final synthetic val$searchText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$10;->val$mailboxId:J

    iput-object p4, p0, Lcom/android/email/Controller$10;->val$searchText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 887
    iget-object v3, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/Controller$10;->val$mailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 888
    .local v2, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v3, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v3, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 892
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    .line 895
    iget-object v3, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    .line 896
    .local v1, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    if-lez v3, :cond_0

    .line 907
    iget-object v3, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/Controller$10;->val$searchText:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v5

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/email/MessagingController;->searchOnServerSync(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V

    goto :goto_0
.end method
