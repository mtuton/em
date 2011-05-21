.class public abstract Lcom/android/exchange/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field public mCurBoxId:J

.field public mMessageId:J

.field public mSelBoxId:J

.field public mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/Request;->mTimeStamp:J

    return-void
.end method
