.class Lcom/android/email/activity/MessageList$14;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onSetConversationMoveAlways(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$c:Landroid/database/Cursor;

.field final synthetic val$convId:Ljava/lang/String;

.field final synthetic val$mailbox:Lcom/android/email/provider/EmailContent$Mailbox;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;JLjava/lang/String;Lcom/android/email/provider/EmailContent$Mailbox;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2831
    iput-object p1, p0, Lcom/android/email/activity/MessageList$14;->this$0:Lcom/android/email/activity/MessageList;

    iput-wide p2, p0, Lcom/android/email/activity/MessageList$14;->val$messageId:J

    iput-object p4, p0, Lcom/android/email/activity/MessageList$14;->val$convId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/email/activity/MessageList$14;->val$mailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iput-object p6, p0, Lcom/android/email/activity/MessageList$14;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/android/email/activity/MessageList$14;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageList$14;->val$messageId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageList$14;->val$convId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/MessageList$14;->val$mailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-object v6, p0, Lcom/android/email/activity/MessageList$14;->val$c:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/email/activity/MessageList$14;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v8}, Lcom/android/email/activity/MessageList;->access$2300(Lcom/android/email/activity/MessageList;)I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller;->moveConversationAlways(JLjava/lang/String;JJI)V

    .line 2834
    iget-object v0, p0, Lcom/android/email/activity/MessageList$14;->val$c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2835
    iget-object v0, p0, Lcom/android/email/activity/MessageList$14;->val$c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2836
    :cond_0
    return-void
.end method
