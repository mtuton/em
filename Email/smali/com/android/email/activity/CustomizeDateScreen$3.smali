.class Lcom/android/email/activity/CustomizeDateScreen$3;
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
    .line 390
    iput-object p1, p0, Lcom/android/email/activity/CustomizeDateScreen$3;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

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
    .line 392
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen$3;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$3;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-static {v1, p2}, Lcom/android/email/activity/CustomizeDateScreen;->access$1502(Lcom/android/email/activity/CustomizeDateScreen;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->access$1402(Lcom/android/email/activity/CustomizeDateScreen;I)I

    .line 393
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen$3;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$3;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-static {v1, p3}, Lcom/android/email/activity/CustomizeDateScreen;->access$1702(Lcom/android/email/activity/CustomizeDateScreen;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->access$1602(Lcom/android/email/activity/CustomizeDateScreen;I)I

    .line 394
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen$3;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-static {v0}, Lcom/android/email/activity/CustomizeDateScreen;->access$1800(Lcom/android/email/activity/CustomizeDateScreen;)V

    .line 395
    return-void
.end method
