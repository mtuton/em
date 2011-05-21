.class Lcom/android/email/activity/setup/SyncScheduleSettings$9;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->showPeakScheduleDialog(Ljava/lang/String;ILandroid/widget/Button;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$peakOn:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iput-object p2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->val$button:Landroid/widget/Button;

    iput-boolean p3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->val$peakOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->val$button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$500(Lcom/android/email/activity/setup/SyncScheduleSettings;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->val$peakOn:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    const/4 v2, -0x1

    invoke-static {v1, p2, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$700(Lcom/android/email/activity/setup/SyncScheduleSettings;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$602(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    .line 237
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 238
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$9;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    const/4 v2, -0x2

    invoke-static {v1, p2, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$700(Lcom/android/email/activity/setup/SyncScheduleSettings;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$802(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    goto :goto_0
.end method
