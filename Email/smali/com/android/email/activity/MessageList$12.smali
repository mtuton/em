.class Lcom/android/email/activity/MessageList$12;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onFollowUpFlag(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2622
    iput-object p1, p0, Lcom/android/email/activity/MessageList$12;->this$0:Lcom/android/email/activity/MessageList;

    iput-wide p2, p0, Lcom/android/email/activity/MessageList$12;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 2624
    if-nez p2, :cond_2

    .line 2625
    const/4 v0, 0x2

    .line 2630
    .local v0, allWereSet:I
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageList$12;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v3, p0, Lcom/android/email/activity/MessageList$12;->val$id:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/MessageList;->getFlag(J)I

    move-result v1

    .line 2631
    .local v1, oldValue:I
    if-eq v1, v0, :cond_0

    .line 2632
    iget-object v2, p0, Lcom/android/email/activity/MessageList$12;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v3, p0, Lcom/android/email/activity/MessageList$12;->val$id:J

    invoke-static {v2, v3, v4, v0}, Lcom/android/email/activity/MessageList;->access$2800(Lcom/android/email/activity/MessageList;JI)V

    .line 2638
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageList$12;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;Z)V

    .line 2639
    iget-object v2, p0, Lcom/android/email/activity/MessageList$12;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2640
    iget-object v2, p0, Lcom/android/email/activity/MessageList$12;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2641
    :cond_1
    return-void

    .line 2626
    .end local v0           #allWereSet:I
    .end local v1           #oldValue:I
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 2627
    const/4 v0, 0x1

    .restart local v0       #allWereSet:I
    goto :goto_0

    .line 2629
    .end local v0           #allWereSet:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #allWereSet:I
    goto :goto_0
.end method
