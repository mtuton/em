.class public Lcom/android/exchange/provider/GalResult;
.super Ljava/lang/Object;
.source "GalResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/provider/GalResult$1;,
        Lcom/android/exchange/provider/GalResult$GalData;
    }
.end annotation


# instance fields
.field public endRange:I

.field public galData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/provider/GalResult$GalData;",
            ">;"
        }
    .end annotation
.end field

.field public startRange:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/android/exchange/provider/GalResult;->startRange:I

    .line 30
    iput v0, p0, Lcom/android/exchange/provider/GalResult;->endRange:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public addGalData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
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
    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/exchange/provider/GalResult$GalData;

    const/16 v16, 0x0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v2 .. v16}, Lcom/android/exchange/provider/GalResult$GalData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/provider/GalResult$1;)V

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
