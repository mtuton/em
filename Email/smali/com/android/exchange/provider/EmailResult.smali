.class public Lcom/android/exchange/provider/EmailResult;
.super Ljava/lang/Object;
.source "EmailResult.java"


# instance fields
.field public endRange:I

.field public result:I

.field public startRange:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/android/exchange/provider/EmailResult;->startRange:I

    .line 29
    iput v0, p0, Lcom/android/exchange/provider/EmailResult;->endRange:I

    .line 33
    return-void
.end method
