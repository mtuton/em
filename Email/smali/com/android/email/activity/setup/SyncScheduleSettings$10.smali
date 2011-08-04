.class Lcom/android/email/activity/setup/SyncScheduleSettings$10;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->showPeakDaysDialog(Landroid/widget/Button;)V
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
    .line 248
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$10;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$10;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$900(Lcom/android/email/activity/setup/SyncScheduleSettings;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 251
    return-void
.end method
