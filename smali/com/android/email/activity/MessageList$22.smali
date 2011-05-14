.class Lcom/android/email/activity/MessageList$22;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onMultiMovePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 3523
    iput-object p1, p0, Lcom/android/email/activity/MessageList$22;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-wide/16 v3, -0x1

    .line 3525
    iget-object v1, p0, Lcom/android/email/activity/MessageList$22;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MailBoxAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/email/activity/MessageList$MailBoxAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MailBoxType;

    .line 3527
    .local v0, viewType:Lcom/android/email/activity/MessageList$MailBoxType;
    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 3529
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3542
    :goto_0
    return-void

    .line 3533
    :cond_0
    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getMailboxId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 3535
    iget-object v1, p0, Lcom/android/email/activity/MessageList$22;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageList;->access$3800(Lcom/android/email/activity/MessageList;JLjava/lang/String;)V

    .line 3541
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 3539
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList$22;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getMailboxId()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->access$3900(Lcom/android/email/activity/MessageList;JJ)V

    goto :goto_1
.end method
