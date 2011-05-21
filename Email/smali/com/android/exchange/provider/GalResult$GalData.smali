.class public Lcom/android/exchange/provider/GalResult$GalData;
.super Ljava/lang/Object;
.source "GalResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/GalResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalData"
.end annotation


# instance fields
.field _id:J

.field displayName:Ljava/lang/String;

.field emailAddress:Ljava/lang/String;

.field mAlias:Ljava/lang/String;

.field mCompany:Ljava/lang/String;

.field mFirstName:Ljava/lang/String;

.field mHomePhone:Ljava/lang/String;

.field mLastName:Ljava/lang/String;

.field mMobilePhone:Ljava/lang/String;

.field mOffice:Ljava/lang/String;

.field mPhone:Ljava/lang/String;

.field mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "_displayName"
    .parameter "_mPhone"
    .parameter "_mOffice"
    .parameter "_mTitle"
    .parameter "_mCompany"
    .parameter "_mAlias"
    .parameter "_emailAddress"
    .parameter "_mFirstName"
    .parameter "_mLastName"
    .parameter "_mHomePhone"
    .parameter "_mMobilePhone"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->_id:J

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->mPhone:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->mOffice:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->mTitle:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->mCompany:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->mAlias:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->mFirstName:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->mLastName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->mHomePhone:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult$GalData;->mMobilePhone:Ljava/lang/String;

    .line 72
    iput-wide p1, p0, Lcom/android/exchange/provider/GalResult$GalData;->_id:J

    .line 73
    if-eqz p3, :cond_0

    .line 74
    iput-object p3, p0, Lcom/android/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    .line 76
    :cond_0
    if-eqz p4, :cond_1

    .line 77
    iput-object p4, p0, Lcom/android/exchange/provider/GalResult$GalData;->mPhone:Ljava/lang/String;

    .line 78
    :cond_1
    if-eqz p5, :cond_2

    .line 79
    iput-object p5, p0, Lcom/android/exchange/provider/GalResult$GalData;->mOffice:Ljava/lang/String;

    .line 80
    :cond_2
    if-eqz p6, :cond_3

    .line 81
    iput-object p6, p0, Lcom/android/exchange/provider/GalResult$GalData;->mTitle:Ljava/lang/String;

    .line 82
    :cond_3
    if-eqz p7, :cond_4

    .line 83
    iput-object p7, p0, Lcom/android/exchange/provider/GalResult$GalData;->mCompany:Ljava/lang/String;

    .line 84
    :cond_4
    if-eqz p8, :cond_5

    .line 85
    iput-object p8, p0, Lcom/android/exchange/provider/GalResult$GalData;->mAlias:Ljava/lang/String;

    .line 87
    :cond_5
    if-eqz p9, :cond_6

    .line 88
    iput-object p9, p0, Lcom/android/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    .line 90
    :cond_6
    if-eqz p10, :cond_7

    .line 91
    iput-object p10, p0, Lcom/android/exchange/provider/GalResult$GalData;->mFirstName:Ljava/lang/String;

    .line 92
    :cond_7
    if-eqz p11, :cond_8

    .line 93
    iput-object p11, p0, Lcom/android/exchange/provider/GalResult$GalData;->mLastName:Ljava/lang/String;

    .line 94
    :cond_8
    if-eqz p12, :cond_9

    .line 95
    iput-object p12, p0, Lcom/android/exchange/provider/GalResult$GalData;->mHomePhone:Ljava/lang/String;

    .line 96
    :cond_9
    if-eqz p13, :cond_a

    .line 97
    iput-object p13, p0, Lcom/android/exchange/provider/GalResult$GalData;->mMobilePhone:Ljava/lang/String;

    .line 99
    :cond_a
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/provider/GalResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p13}, Lcom/android/exchange/provider/GalResult$GalData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
