.class Lcom/android/exchange/utility/CalendarUtilities$RRule;
.super Ljava/lang/Object;
.source "CalendarUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/utility/CalendarUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RRule"
.end annotation


# static fields
.field static final RRULE_DATE:I = 0x2

.field static final RRULE_DAY_WEEK:I = 0x1

.field static final RRULE_NONE:I


# instance fields
.field date:I

.field dayOfWeek:I

.field month:I

.field type:I

.field week:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter "_month"
    .parameter "_date"

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    .line 367
    iput p1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    .line 368
    iput p2, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->date:I

    .line 369
    return-void
.end method

.method constructor <init>(III)V
    .locals 1
    .parameter "_month"
    .parameter "_dayOfWeek"
    .parameter "_week"

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    .line 379
    iput p1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    .line 380
    iput p2, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    .line 381
    iput p3, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    .line 382
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "FREQ=YEARLY;BYMONTH="

    .line 386
    iget v0, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    if-ne v0, v3, :cond_0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FREQ=YEARLY;BYMONTH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FREQ=YEARLY;BYMONTH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->date:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
