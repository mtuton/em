.class Lcom/android/email/activity/setup/SyncScheduleSettings$2;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$2;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$2;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setResult(I)V

    .line 111
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$2;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->finish()V

    .line 112
    return-void
.end method
