.class Lcom/android/email/activity/MessageView$13;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView;->handleMenuItem(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter

    .prologue
    .line 3108
    iput-object p1, p0, Lcom/android/email/activity/MessageView$13;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3109
    if-nez p2, :cond_0

    .line 3110
    iget-object v0, p0, Lcom/android/email/activity/MessageView$13;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$2200(Lcom/android/email/activity/MessageView;)V

    .line 3114
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3115
    return-void

    .line 3112
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$13;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$2300(Lcom/android/email/activity/MessageView;)V

    goto :goto_0
.end method
