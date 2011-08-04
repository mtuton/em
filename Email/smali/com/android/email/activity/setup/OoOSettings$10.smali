.class Lcom/android/email/activity/setup/OoOSettings$10;
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
    .line 275
    iput-object p1, p0, Lcom/android/email/activity/setup/OoOSettings$10;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$10;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/OoOSettings;->access$502(Lcom/android/email/activity/setup/OoOSettings;Z)Z

    .line 279
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$10;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$1400(Lcom/android/email/activity/setup/OoOSettings;)V

    .line 280
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$10;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/OoOSettings;->showDialog(I)V

    .line 281
    return-void
.end method
