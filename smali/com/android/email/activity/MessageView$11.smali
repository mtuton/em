.class Lcom/android/email/activity/MessageView$11;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView;->onForward()V
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
    .line 2397
    iput-object p1, p0, Lcom/android/email/activity/MessageView$11;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/email/activity/MessageView$11;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2401
    return-void
.end method
