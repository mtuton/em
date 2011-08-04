.class Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;
.super Ljava/lang/Object;
.source "EmailListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/EmailListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollRecoverRunnable"
.end annotation


# instance fields
.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/android/email/winset/EmailListView;


# direct methods
.method constructor <init>(Lcom/android/email/winset/EmailListView;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->this$0:Lcom/android/email/winset/EmailListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->this$0:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v1}, Lcom/android/email/winset/EmailListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->this$0:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0, p0}, Lcom/android/email/winset/EmailListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->this$0:Lcom/android/email/winset/EmailListView;

    invoke-static {v0}, Lcom/android/email/winset/EmailListView;->access$200(Lcom/android/email/winset/EmailListView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 79
    iget-object v0, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->this$0:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/winset/EmailListView;->access$302(Lcom/android/email/winset/EmailListView;I)I

    .line 80
    iget-object v0, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->this$0:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0, p0}, Lcom/android/email/winset/EmailListView;->post(Ljava/lang/Runnable;)Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->this$0:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0}, Lcom/android/email/winset/EmailListView;->invalidate()V

    .line 85
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 60
    iget-object v0, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->this$0:Lcom/android/email/winset/EmailListView;

    invoke-static {v2}, Lcom/android/email/winset/EmailListView;->access$000(Lcom/android/email/winset/EmailListView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->this$0:Lcom/android/email/winset/EmailListView;

    invoke-static {v3}, Lcom/android/email/winset/EmailListView;->access$100(Lcom/android/email/winset/EmailListView;)I

    move-result v3

    neg-int v4, v3

    const/16 v5, 0x3e8

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 62
    iget-object v0, p0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->this$0:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0, p0}, Lcom/android/email/winset/EmailListView;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method
