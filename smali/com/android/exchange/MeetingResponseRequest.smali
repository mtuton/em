.class public Lcom/android/exchange/MeetingResponseRequest;
.super Lcom/android/exchange/Request;
.source "MeetingResponseRequest.java"


# instance fields
.field public mResponse:I


# direct methods
.method constructor <init>(JI)V
    .locals 0
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/exchange/Request;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/android/exchange/MeetingResponseRequest;->mMessageId:J

    .line 27
    iput p3, p0, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    .line 28
    return-void
.end method
