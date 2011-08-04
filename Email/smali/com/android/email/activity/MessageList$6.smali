.class Lcom/android/email/activity/MessageList$6;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$ANIMATION_TYPE:I


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "_animation"

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/email/activity/MessageList$6;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$1900(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageList$6$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageList$6$1;-><init>(Lcom/android/email/activity/MessageList$6;)V

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidget;->post(Ljava/lang/Runnable;)Z

    .line 2068
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 2071
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 2074
    return-void
.end method
