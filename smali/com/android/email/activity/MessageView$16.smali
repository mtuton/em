.class Lcom/android/email/activity/MessageView$16;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView;->arrangeAttachments()V
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
    .line 4561
    iput-object p1, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4563
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6000(Lcom/android/email/activity/MessageView;)Lcom/android/email/winset/NonScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    .line 4564
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$700(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4565
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$700(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4566
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6100(Lcom/android/email/activity/MessageView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4567
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->refreshDrawableState()V

    .line 4570
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 4571
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 4585
    :goto_0
    return-void

    .line 4573
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$700(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4574
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6200(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4575
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6100(Lcom/android/email/activity/MessageView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4580
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 4581
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_0

    .line 4578
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$16;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$6100(Lcom/android/email/activity/MessageView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
