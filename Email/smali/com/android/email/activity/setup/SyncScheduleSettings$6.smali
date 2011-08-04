.class Lcom/android/email/activity/setup/SyncScheduleSettings$6;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakStartTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

.field final synthetic val$peakStartTimeButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$6;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iput-object p2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$6;->val$peakStartTimeButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$6;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$6;->val$peakStartTimeButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$300(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;Z)V

    .line 173
    return-void
.end method
