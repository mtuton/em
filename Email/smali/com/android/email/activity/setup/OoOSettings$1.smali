.class Lcom/android/email/activity/setup/OoOSettings$1;
.super Ljava/lang/Object;
.source "OoOSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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
    .line 86
    iput-object p1, p0, Lcom/android/email/activity/setup/OoOSettings$1;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/16 v1, 0x76c

    .line 90
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$1;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$000(Lcom/android/email/activity/setup/OoOSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$1;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$100(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;

    move-result-object v0

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 92
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$1;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$100(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMonth(I)V

    .line 93
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$1;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$100(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/Date;->setDate(I)V

    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$1;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$200(Lcom/android/email/activity/setup/OoOSettings;)V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$1;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$300(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;

    move-result-object v0

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 98
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$1;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$300(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMonth(I)V

    .line 99
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$1;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$300(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/Date;->setDate(I)V

    .line 100
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$1;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$400(Lcom/android/email/activity/setup/OoOSettings;)V

    goto :goto_0
.end method
