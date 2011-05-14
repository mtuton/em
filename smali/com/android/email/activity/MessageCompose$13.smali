.class Lcom/android/email/activity/MessageCompose$13;
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
    .line 2239
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 2240
    packed-switch p2, :pswitch_data_0

    .line 2254
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2257
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2258
    return-void

    .line 2242
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$302(Lcom/android/email/activity/MessageCompose;I)I

    .line 2243
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$3100(Lcom/android/email/activity/MessageCompose;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2246
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$302(Lcom/android/email/activity/MessageCompose;I)I

    .line 2247
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2250
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$302(Lcom/android/email/activity/MessageCompose;I)I

    .line 2251
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$3200(Lcom/android/email/activity/MessageCompose;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
