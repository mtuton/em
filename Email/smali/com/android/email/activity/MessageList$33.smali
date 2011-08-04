.class Lcom/android/email/activity/MessageList$33;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onMultiMovePopupToOtherAccount(JLjava/lang/String;)V
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
    .line 4687
    iput-object p1, p0, Lcom/android/email/activity/MessageList$33;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4690
    iget-object v1, p0, Lcom/android/email/activity/MessageList$33;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$4300(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MailBoxAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/email/activity/MessageList$MailBoxAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MailBoxType;

    .line 4692
    .local v0, viewType:Lcom/android/email/activity/MessageList$MailBoxType;
    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 4694
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4699
    :goto_0
    return-void

    .line 4697
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList$33;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getMailboxId()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->access$4400(Lcom/android/email/activity/MessageList;JJ)V

    .line 4698
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
