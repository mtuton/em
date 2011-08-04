.class Lcom/android/email/activity/MessageList$4;
.super Ljava/lang/Thread;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->updateMessageLists(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$accountId_Pending:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/android/email/activity/MessageList$4;->this$0:Lcom/android/email/activity/MessageList;

    iput-wide p2, p0, Lcom/android/email/activity/MessageList$4;->val$accountId_Pending:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/email/activity/MessageList$4;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageList$4;->val$accountId_Pending:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    .line 1566
    return-void
.end method
