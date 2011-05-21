.class Lcom/android/email/activity/setup/SyncScheduleSettings$11;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$11;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iput-object p2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$11;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$11;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$11;->val$button:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1000(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;)V

    .line 258
    return-void
.end method
