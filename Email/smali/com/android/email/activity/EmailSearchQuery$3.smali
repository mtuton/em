.class Lcom/android/email/activity/EmailSearchQuery$3;
.super Ljava/lang/Object;
.source "EmailSearchQuery.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/EmailSearchQuery;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/EmailSearchQuery;


# direct methods
.method constructor <init>(Lcom/android/email/activity/EmailSearchQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/email/activity/EmailSearchQuery$3;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery$3;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v2, p2}, Lcom/android/email/activity/EmailSearchQuery;->access$202(Lcom/android/email/activity/EmailSearchQuery;I)I

    .line 317
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery$3;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v2, p3}, Lcom/android/email/activity/EmailSearchQuery;->access$302(Lcom/android/email/activity/EmailSearchQuery;I)I

    .line 318
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery$3;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v2, p4}, Lcom/android/email/activity/EmailSearchQuery;->access$402(Lcom/android/email/activity/EmailSearchQuery;I)I

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 320
    .local v0, c:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 321
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 322
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 323
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, date:Ljava/lang/String;
    return-void
.end method
