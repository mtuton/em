.class Lcom/android/email/activity/CustomizeDateScreen$4;
.super Ljava/lang/Object;
.source "CustomizeDateScreen.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/CustomizeDateScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/CustomizeDateScreen;


# direct methods
.method constructor <init>(Lcom/android/email/activity/CustomizeDateScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/email/activity/CustomizeDateScreen$4;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen$4;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$4;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-static {v1, p2}, Lcom/android/email/activity/CustomizeDateScreen;->access$2002(Lcom/android/email/activity/CustomizeDateScreen;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->access$1902(Lcom/android/email/activity/CustomizeDateScreen;I)I

    .line 401
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen$4;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$4;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-static {v1, p3}, Lcom/android/email/activity/CustomizeDateScreen;->access$2202(Lcom/android/email/activity/CustomizeDateScreen;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->access$2102(Lcom/android/email/activity/CustomizeDateScreen;I)I

    .line 402
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen$4;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-static {v0}, Lcom/android/email/activity/CustomizeDateScreen;->access$2300(Lcom/android/email/activity/CustomizeDateScreen;)V

    .line 403
    return-void
.end method
