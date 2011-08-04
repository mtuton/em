.class Lcom/android/email/activity/MessageList$10;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onDeleteConversation(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$accountId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2711
    iput-object p1, p0, Lcom/android/email/activity/MessageList$10;->this$0:Lcom/android/email/activity/MessageList;

    iput-wide p2, p0, Lcom/android/email/activity/MessageList$10;->val$messageId:J

    iput-wide p4, p0, Lcom/android/email/activity/MessageList$10;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/android/email/activity/MessageList$10;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageList$10;->val$messageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList$10;->val$accountId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->deleteConversation(JJ)V

    .line 2714
    return-void
.end method
