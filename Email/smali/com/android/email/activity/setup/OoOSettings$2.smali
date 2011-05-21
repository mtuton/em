.class Lcom/android/email/activity/setup/OoOSettings$2;
.super Ljava/lang/Object;
.source "OoOSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/OoOSettings;
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
    .line 106
    iput-object p1, p0, Lcom/android/email/activity/setup/OoOSettings$2;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$2;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$500(Lcom/android/email/activity/setup/OoOSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$2;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$100(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    .line 109
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$2;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$100(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    .line 110
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$2;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$200(Lcom/android/email/activity/setup/OoOSettings;)V

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$2;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$300(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    .line 114
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$2;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$300(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    .line 115
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$2;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$400(Lcom/android/email/activity/setup/OoOSettings;)V

    goto :goto_0
.end method
