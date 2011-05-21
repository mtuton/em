.class Lcom/android/email/activity/setup/SyncScheduleSettings$8;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->setupRoaming()V
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
    .line 219
    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$8;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$8;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$402(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$8;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$402(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
