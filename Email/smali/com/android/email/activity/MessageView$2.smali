.class Lcom/android/email/activity/MessageView$2;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView;->initMessageHeader()V
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
    .line 1346
    iput-object p1, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1349
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1400(Lcom/android/email/activity/MessageView;)Lcom/android/email/winset/NonScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    .line 1350
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$900(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1500(Lcom/android/email/activity/MessageView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1352
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$900(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1353
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1600(Lcom/android/email/activity/MessageView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1354
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->refreshDrawableState()V

    .line 1357
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1358
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1360
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1700(Lcom/android/email/activity/MessageView;)Landroid/widget/ToggleButton;

    move-result-object v0

    const v1, 0x7f0700dd

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setNextFocusDownId(I)V

    .line 1380
    :goto_0
    return-void

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1500(Lcom/android/email/activity/MessageView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1364
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$900(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1365
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1800(Lcom/android/email/activity/MessageView;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1600(Lcom/android/email/activity/MessageView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1371
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1372
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1374
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1700(Lcom/android/email/activity/MessageView;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setNextFocusDownId(I)V

    goto :goto_0

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView$2;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$1600(Lcom/android/email/activity/MessageView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
