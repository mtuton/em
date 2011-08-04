.class Lcom/android/email/activity/MessageList$13;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onMoveConversation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$c:Landroid/database/Cursor;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;JLandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2780
    iput-object p1, p0, Lcom/android/email/activity/MessageList$13;->this$0:Lcom/android/email/activity/MessageList;

    iput-wide p2, p0, Lcom/android/email/activity/MessageList$13;->val$messageId:J

    iput-object p4, p0, Lcom/android/email/activity/MessageList$13;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 2782
    const/4 v0, 0x0

    .line 2783
    .local v0, moveResult:Z
    iget-object v1, p0, Lcom/android/email/activity/MessageList$13;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageList$13;->val$messageId:J

    iget-object v4, p0, Lcom/android/email/activity/MessageList$13;->val$c:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/Controller;->moveConversation(JJ)Z

    move-result v0

    .line 2784
    if-eqz v0, :cond_1

    .line 2785
    iget-object v1, p0, Lcom/android/email/activity/MessageList$13;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08024e

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2792
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList$13;->val$c:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 2793
    iget-object v1, p0, Lcom/android/email/activity/MessageList$13;->val$c:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2794
    :cond_0
    return-void

    .line 2788
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList$13;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080177

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
