.class Lcom/android/email/activity/MessageList$8;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onMove(J)V
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
    .line 2242
    iput-object p1, p0, Lcom/android/email/activity/MessageList$8;->this$0:Lcom/android/email/activity/MessageList;

    iput-wide p2, p0, Lcom/android/email/activity/MessageList$8;->val$messageId:J

    iput-object p4, p0, Lcom/android/email/activity/MessageList$8;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/email/activity/MessageList$8;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageList$8;->val$messageId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageList$8;->val$c:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->moveMessage(JJ)V

    .line 2244
    return-void
.end method
