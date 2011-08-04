.class Lcom/android/email/activity/setup/SyncScheduleSettings$3;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakSchedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

.field final synthetic val$peakButton:Landroid/widget/Button;

.field final synthetic val$schedulePos:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/SyncScheduleSettings;ILandroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$3;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iput p2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$3;->val$schedulePos:I

    iput-object p3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$3;->val$peakButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$3;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$3;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    const v2, 0x7f0801ff

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$3;->val$schedulePos:I

    iget-object v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$3;->val$peakButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$100(Lcom/android/email/activity/setup/SyncScheduleSettings;Ljava/lang/String;ILandroid/widget/Button;Z)V

    .line 128
    return-void
.end method
