.class Lcom/android/email/activity/setup/SyncScheduleSettings$12;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->showTimePickerDialog(Landroid/widget/Button;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$isStartTime:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iput-object p2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->val$button:Landroid/widget/Button;

    iput-boolean p3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->val$isStartTime:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->val$button:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v2, p2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1100(Lcom/android/email/activity/setup/SyncScheduleSettings;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v2, p3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1100(Lcom/android/email/activity/setup/SyncScheduleSettings;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->val$isStartTime:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v1, p2, p3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1300(Lcom/android/email/activity/setup/SyncScheduleSettings;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1202(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$12;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v1, p2, p3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1300(Lcom/android/email/activity/setup/SyncScheduleSettings;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1402(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    goto :goto_0
.end method
