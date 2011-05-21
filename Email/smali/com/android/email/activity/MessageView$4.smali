.class Lcom/android/email/activity/MessageView$4;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;

.field final synthetic val$extra:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/android/email/activity/MessageView$4;->this$0:Lcom/android/email/activity/MessageView;

    iput-object p2, p0, Lcom/android/email/activity/MessageView$4;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1182
    packed-switch p2, :pswitch_data_0

    .line 1198
    :goto_0
    return-void

    .line 1185
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView$4;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageView;->onSaveImage()V

    goto :goto_0

    .line 1189
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/MessageView$4;->val$extra:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1192
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1193
    iget-object v1, p0, Lcom/android/email/activity/MessageView$4;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
