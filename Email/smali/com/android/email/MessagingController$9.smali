.class Lcom/android/email/MessagingController$9;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingMoveActions(Ljava/util/HashSet;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$final_serverIds:Ljava/util/HashSet;

.field final synthetic val$orig_boxkey:J

.field final synthetic val$target_boxkey:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JLjava/util/HashSet;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/android/email/MessagingController$9;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$9;->val$accountId:J

    iput-object p4, p0, Lcom/android/email/MessagingController$9;->val$final_serverIds:Ljava/util/HashSet;

    iput-wide p5, p0, Lcom/android/email/MessagingController$9;->val$target_boxkey:J

    iput-wide p7, p0, Lcom/android/email/MessagingController$9;->val$orig_boxkey:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/email/MessagingController$9;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/MessagingController$9;->val$accountId:J

    invoke-static {v0, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 1667
    .local v1, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v1, :cond_1

    .line 1676
    :cond_0
    return-void

    .line 1670
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController$9;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1672
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/email/MessagingController$9;->val$final_serverIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1674
    .local v3, cur_serverId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/MessagingController$9;->this$0:Lcom/android/email/MessagingController;

    iget-wide v4, p0, Lcom/android/email/MessagingController$9;->val$target_boxkey:J

    iget-wide v6, p0, Lcom/android/email/MessagingController$9;->val$orig_boxkey:J

    invoke-static/range {v0 .. v7}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/lang/String;JJ)Z

    goto :goto_0
.end method
