.class public Lcom/android/exchange/provider/EmailResult;
.super Ljava/lang/Object;
.source "EmailResult.java"


# static fields
.field public static final BAD_CONNECTION_ID:I = 0xb

.field public static final CONTENT_INDEX:I = 0x9

.field public static final INVALID:I = -0x1

.field public static final PROTOCOL_VIOLATION:I = 0x2

.field public static final QUERY_TOO_COMPLEX:I = 0x8

.field public static final SERVER_ERR:I = 0x3

.field public static final SUCCESS:I = 0x1

.field public static final TIMED_OUT:I = 0xa

.field public static final TOO_MANY_RESULTS:I = 0xc


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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/android/exchange/provider/EmailResult;->startRange:I

    .line 25
    iput v0, p0, Lcom/android/exchange/provider/EmailResult;->endRange:I

    .line 29
    return-void
.end method
