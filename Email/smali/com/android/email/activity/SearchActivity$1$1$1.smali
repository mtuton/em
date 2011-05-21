.class Lcom/android/email/activity/SearchActivity$1$1$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/SearchActivity$1$1;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/email/activity/SearchActivity$1$1;


# direct methods
.method constructor <init>(Lcom/android/email/activity/SearchActivity$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/email/activity/SearchActivity$1$1$1;->this$2:Lcom/android/email/activity/SearchActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v3, "com.android.email.LogProvider"

    .line 326
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/SearchActivity$1$1$1;->this$2:Lcom/android/email/activity/SearchActivity$1$1;

    iget-object v1, v1, Lcom/android/email/activity/SearchActivity$1$1;->this$1:Lcom/android/email/activity/SearchActivity$1;

    iget-object v1, v1, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    const-class v2, Lcom/android/email/activity/MessageView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v0, onClickIntent:Landroid/content/Intent;
    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 328
    const-string v1, "com.android.email.LogProvider"

    const-string v1, "com.android.email.LogProvider"

    invoke-virtual {v0, v3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v1, p0, Lcom/android/email/activity/SearchActivity$1$1$1;->this$2:Lcom/android/email/activity/SearchActivity$1$1;

    iget-object v1, v1, Lcom/android/email/activity/SearchActivity$1$1;->this$1:Lcom/android/email/activity/SearchActivity$1;

    iget-object v1, v1, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 330
    return-void
.end method
