.class Lcom/android/email/activity/MessageList$5$1;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList$5;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageList$5;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/android/email/activity/MessageList$5$1;->this$1:Lcom/android/email/activity/MessageList$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1742
    iget-object v1, p0, Lcom/android/email/activity/MessageList$5$1;->this$1:Lcom/android/email/activity/MessageList$5;

    iget v1, v1, Lcom/android/email/activity/MessageList$5;->val$ANIMATION_TYPE:I

    packed-switch v1, :pswitch_data_0

    .line 1750
    :goto_0
    new-instance v0, Lcom/android/email/activity/Rotate3dAnimation;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$5$1;->this$1:Lcom/android/email/activity/MessageList$5;

    iget-object v1, v1, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$1100(Lcom/android/email/activity/MessageList;)F

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList$5$1;->this$1:Lcom/android/email/activity/MessageList$5;

    iget-object v2, v2, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$1200(Lcom/android/email/activity/MessageList;)F

    move-result v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$5$1;->this$1:Lcom/android/email/activity/MessageList$5;

    iget-object v3, v3, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$1300(Lcom/android/email/activity/MessageList;)F

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/MessageList$5$1;->this$1:Lcom/android/email/activity/MessageList$5;

    iget-object v4, v4, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$1400(Lcom/android/email/activity/MessageList;)F

    move-result v4

    iget-object v5, p0, Lcom/android/email/activity/MessageList$5$1;->this$1:Lcom/android/email/activity/MessageList$5;

    iget-object v5, v5, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$1500(Lcom/android/email/activity/MessageList;)F

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 1752
    .local v0, rot:Lcom/android/email/activity/Rotate3dAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/Rotate3dAnimation;->setDuration(J)V

    .line 1753
    iget-object v1, p0, Lcom/android/email/activity/MessageList$5$1;->this$1:Lcom/android/email/activity/MessageList$5;

    iget-object v1, v1, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$1600(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/winset/TwTabWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1754
    return-void

    .line 1745
    .end local v0           #rot:Lcom/android/email/activity/Rotate3dAnimation;
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList$5$1;->this$1:Lcom/android/email/activity/MessageList$5;

    iget-object v1, v1, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    const v2, 0x1020013

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1746
    iget-object v1, p0, Lcom/android/email/activity/MessageList$5$1;->this$1:Lcom/android/email/activity/MessageList$5;

    iget-object v1, v1, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$1000(Lcom/android/email/activity/MessageList;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1742
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
