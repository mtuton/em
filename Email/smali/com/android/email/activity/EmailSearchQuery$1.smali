.class Lcom/android/email/activity/EmailSearchQuery$1;
.super Ljava/lang/Object;
.source "EmailSearchQuery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/EmailSearchQuery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/EmailSearchQuery;


# direct methods
.method constructor <init>(Lcom/android/email/activity/EmailSearchQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/email/activity/EmailSearchQuery$1;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/EmailSearchQuery$1;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    const-class v2, Lcom/android/email/activity/CustomizeDateScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    const-string v1, "intentDate"

    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery$1;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v2}, Lcom/android/email/activity/EmailSearchQuery;->access$1600(Lcom/android/email/activity/EmailSearchQuery;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/android/email/activity/EmailSearchQuery$1;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/EmailSearchQuery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    return-void
.end method
