.class Lcom/android/email/winset/TwTabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Lcom/android/email/winset/TwTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/TwTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/winset/TwTabHost;


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 5

    .prologue
    .line 922
    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    iget-object v2, v2, Lcom/android/email/winset/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v2, :cond_0

    .line 923
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 925
    :cond_0
    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    iget-object v2, v2, Lcom/android/email/winset/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v3, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 927
    .local v0, w:Landroid/view/Window;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 928
    .local v1, wd:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 929
    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 930
    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-static {v2}, Lcom/android/email/winset/TwTabHost;->access$100(Lcom/android/email/winset/TwTabHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 933
    :cond_1
    iput-object v1, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 941
    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 942
    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 943
    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 944
    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/high16 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 947
    :cond_2
    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v2

    .line 927
    .end local v1           #wd:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 954
    :cond_0
    return-void
.end method
