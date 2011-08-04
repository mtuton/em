.class Lcom/android/email/activity/CustomizeDateScreen$1;
.super Ljava/lang/Object;
.source "CustomizeDateScreen.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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
    .line 347
    iput-object p1, p0, Lcom/android/email/activity/CustomizeDateScreen$1;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$1;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-static {v1, p2}, Lcom/android/email/activity/CustomizeDateScreen;->access$002(Lcom/android/email/activity/CustomizeDateScreen;I)I

    .line 352
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$1;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-static {v1, p3}, Lcom/android/email/activity/CustomizeDateScreen;->access$102(Lcom/android/email/activity/CustomizeDateScreen;I)I

    .line 353
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$1;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-static {v1, p4}, Lcom/android/email/activity/CustomizeDateScreen;->access$202(Lcom/android/email/activity/CustomizeDateScreen;I)I

    .line 354
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3, p4}, Ljava/util/Date;-><init>(III)V

    .line 360
    .local v0, date:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$1;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/email/activity/CustomizeDateScreen;->access$302(Lcom/android/email/activity/CustomizeDateScreen;I)I

    .line 361
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$1;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/email/activity/CustomizeDateScreen;->access$402(Lcom/android/email/activity/CustomizeDateScreen;I)I

    .line 362
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$1;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/email/activity/CustomizeDateScreen;->access$502(Lcom/android/email/activity/CustomizeDateScreen;I)I

    .line 364
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen$1;->this$0:Lcom/android/email/activity/CustomizeDateScreen;

    invoke-static {v1}, Lcom/android/email/activity/CustomizeDateScreen;->access$600(Lcom/android/email/activity/CustomizeDateScreen;)V

    .line 366
    return-void
.end method
