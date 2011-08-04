.class Lcom/android/email/activity/MessageList$20;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onForward(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3803
    iput-object p1, p0, Lcom/android/email/activity/MessageList$20;->this$0:Lcom/android/email/activity/MessageList;

    iput-wide p2, p0, Lcom/android/email/activity/MessageList$20;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3805
    if-nez p2, :cond_0

    .line 3806
    iget-object v0, p0, Lcom/android/email/activity/MessageList$20;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList$20;->val$messageId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 3810
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3811
    return-void

    .line 3808
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$20;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList$20;->val$messageId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    goto :goto_0
.end method
