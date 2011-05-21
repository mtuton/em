.class Lcom/android/email/activity/MessageView$16;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView;->onTextSize()V
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
    .line 3468
    iput-object p1, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3469
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0, p2}, Lcom/android/email/activity/MessageView;->access$2700(Lcom/android/email/activity/MessageView;I)V

    .line 3470
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3471
    return-void
.end method
