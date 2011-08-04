.class Lcom/android/email/activity/MessageCompose$16;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onPriority()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 3675
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3677
    packed-switch p2, :pswitch_data_0

    .line 3697
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3700
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3701
    return-void

    .line 3679
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$702(Lcom/android/email/activity/MessageCompose;I)I

    .line 3681
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3682
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$4400(Lcom/android/email/activity/MessageCompose;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3685
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$702(Lcom/android/email/activity/MessageCompose;I)I

    .line 3687
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3690
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$702(Lcom/android/email/activity/MessageCompose;I)I

    .line 3692
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3693
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$4500(Lcom/android/email/activity/MessageCompose;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
