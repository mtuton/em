.class Lcom/android/email/activity/MessageView$2;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView;->onCreate(Landroid/os/Bundle;)V
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
    .line 1053
    iput-object p1, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 1055
    iget-object v2, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1057
    iget-object v2, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v2}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1058
    .local v0, result:Landroid/webkit/WebView$HitTestResult;
    if-nez v0, :cond_0

    move v2, v4

    .line 1076
    .end local v0           #result:Landroid/webkit/WebView$HitTestResult;
    :goto_0
    return v2

    .line 1061
    .restart local v0       #result:Landroid/webkit/WebView$HitTestResult;
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    .line 1063
    .local v1, type:I
    if-nez v1, :cond_1

    move v2, v4

    .line 1064
    goto :goto_0

    .line 1066
    :cond_1
    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    move v2, v4

    .line 1067
    goto :goto_0

    .line 1070
    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 1072
    iget-object v2, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    const/16 v3, 0x3f7

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageView;->onCreateDialog(I)Landroid/app/Dialog;

    .end local v0           #result:Landroid/webkit/WebView$HitTestResult;
    .end local v1           #type:I
    :cond_3
    move v2, v4

    .line 1076
    goto :goto_0
.end method
