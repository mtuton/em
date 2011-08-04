.class Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$2;
.super Ljava/lang/Object;
.source "AutoDiscoverSetupExchange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$2;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$2;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->access$100(Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;Z)V

    .line 105
    return-void
.end method
