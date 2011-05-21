.class Lcom/android/email/activity/MessageList$9;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onViewMode()V
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
    .line 2304
    iput-object p1, p0, Lcom/android/email/activity/MessageList$9;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/email/activity/MessageList$9;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, p2}, Lcom/android/email/activity/MessageList;->access$2100(Lcom/android/email/activity/MessageList;I)V

    .line 2306
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2307
    return-void
.end method
