.class Lcom/android/email/activity/MessageList$13;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onDeletePopup(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$accountIdforDelete:J

.field final synthetic val$messageIdforDelete:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2918
    iput-object p1, p0, Lcom/android/email/activity/MessageList$13;->this$0:Lcom/android/email/activity/MessageList;

    iput-wide p2, p0, Lcom/android/email/activity/MessageList$13;->val$messageIdforDelete:J

    iput-wide p4, p0, Lcom/android/email/activity/MessageList$13;->val$accountIdforDelete:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/android/email/activity/MessageList$13;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList$13;->val$messageIdforDelete:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList$13;->val$accountIdforDelete:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;JJ)V

    .line 2920
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2923
    return-void
.end method
