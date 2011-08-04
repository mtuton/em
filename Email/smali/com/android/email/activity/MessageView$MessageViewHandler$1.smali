.class Lcom/android/email/activity/MessageView$MessageViewHandler$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView$MessageViewHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageView$MessageViewHandler;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageView$MessageViewHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/email/activity/MessageView$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 778
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/email/activity/MessageView$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageView$MessageViewHandler;

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 780
    iget-object v0, p0, Lcom/android/email/activity/MessageView$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageView$MessageViewHandler;

    iget-object v0, v0, Lcom/android/email/activity/MessageView$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 782
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
