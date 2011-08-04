.class public Lcom/android/exchange/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field public mFriendlyName:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field public mModel:Ljava/lang/String;

.field public mNetworkOperator:Ljava/lang/String;

.field public mOs:Ljava/lang/String;

.field public mOsLanguage:Ljava/lang/String;

.field public mOutBoundSms:Z

.field public mPhoneNumber:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInfo;->mModel:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInfo;->mId:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInfo;->mFriendlyName:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInfo;->mOs:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInfo;->mOsLanguage:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInfo;->mPhoneNumber:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInfo;->mUserAgent:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/DeviceInfo;->mOutBoundSms:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/DeviceInfo;->mNetworkOperator:Ljava/lang/String;

    return-void
.end method
