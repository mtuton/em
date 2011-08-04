.class Lcom/android/email/activity/setup/OoOSettings$5;
.super Ljava/lang/Object;
.source "OoOSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/OoOSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/OoOSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/email/activity/setup/OoOSettings$5;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$5;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/OoOSettings;->access$1002(Lcom/android/email/activity/setup/OoOSettings;Z)Z

    .line 219
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$5;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    iget-boolean v0, v0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$5;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    iput-boolean v1, v0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    .line 221
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$5;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$1100(Lcom/android/email/activity/setup/OoOSettings;)V

    .line 223
    :cond_0
    return-void
.end method
