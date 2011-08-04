.class Lcom/android/exchange/SmsRelayService$SmsPayload;
.super Ljava/lang/Object;
.source "SmsRelayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SmsRelayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsPayload"
.end annotation


# instance fields
.field mMessages:[Landroid/telephony/SmsMessage;

.field final synthetic this$0:Lcom/android/exchange/SmsRelayService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SmsRelayService;[Landroid/telephony/SmsMessage;)V
    .locals 0
    .parameter
    .parameter "messages"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/exchange/SmsRelayService$SmsPayload;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/android/exchange/SmsRelayService$SmsPayload;->mMessages:[Landroid/telephony/SmsMessage;

    .line 35
    return-void
.end method
