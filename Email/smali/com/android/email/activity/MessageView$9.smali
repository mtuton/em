.class Lcom/android/email/activity/MessageView$9;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView;->onMovePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1845
    iput-object p1, p0, Lcom/android/email/activity/MessageView$9;->this$0:Lcom/android/email/activity/MessageView;

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

    .line 1847
    iget-object v1, p0, Lcom/android/email/activity/MessageView$9;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v1}, Lcom/android/email/activity/MessageView;->access$1300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MailBoxAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/email/activity/MessageView$MailBoxAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$MailBoxType;

    .line 1849
    .local v0, viewType:Lcom/android/email/activity/MessageView$MailBoxType;
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1850
    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MailBoxType;->getAccountKey()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1863
    :goto_0
    return-void

    .line 1855
    :cond_0
    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MailBoxType;->getMailboxId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1857
    iget-object v1, p0, Lcom/android/email/activity/MessageView$9;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MailBoxType;->getAccountKey()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MailBoxType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageView;->access$1400(Lcom/android/email/activity/MessageView;JLjava/lang/String;)V

    goto :goto_0

    .line 1861
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageView$9;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MailBoxType;->getAccountKey()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MailBoxType;->getMailboxId()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageView;->access$1500(Lcom/android/email/activity/MessageView;JJ)V

    goto :goto_0
.end method
