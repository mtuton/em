.class Lcom/android/email/activity/MessageList$5;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->animation_title(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$ANIMATION_TYPE:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1760
    iput-object p1, p0, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    iput p2, p0, Lcom/android/email/activity/MessageList$5;->val$ANIMATION_TYPE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "_animation"

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$1600(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageList$5$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageList$5$1;-><init>(Lcom/android/email/activity/MessageList$5;)V

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidget;->post(Ljava/lang/Runnable;)Z

    .line 1756
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 1759
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 1762
    return-void
.end method
