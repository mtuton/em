.class Lcom/android/email/MessagingController$8;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingActions(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$movemaii:Z


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$8;->val$accountId:J

    iput-boolean p4, p0, Lcom/android/email/MessagingController$8;->val$movemaii:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1641
    :try_start_0
    iget-object v1, p0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/MessagingController$8;->val$accountId:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1643
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 1657
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :goto_0
    return-void

    .line 1646
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_0
    iget-object v1, p0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    iget-boolean v2, p0, Lcom/android/email/MessagingController$8;->val$movemaii:Z

    invoke-static {v1, v0, v2}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Z)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1648
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
