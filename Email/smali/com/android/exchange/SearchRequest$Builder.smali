.class public final Lcom/android/exchange/SearchRequest$Builder;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccountId:J

.field private mOptionsBodyPreferenceTruncationSize:I

.field private mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

.field private mOptionsDeepTraversal:Z

.field private mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

.field private mOptionsRange:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionsRebuildResults:Z

.field private mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

.field private mQueryCollectionIds:[J

.field private mQueryFreeText:Ljava/lang/String;

.field private mQueryGreaterThan:Ljava/util/Date;

.field private mQueryLessThan:Ljava/util/Date;

.field private mQueryText:Ljava/lang/String;

.field private mStoreName:Lcom/android/exchange/SearchRequest$StoreName;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mAccountId:J

    .line 293
    sget-object v0, Lcom/android/exchange/SearchRequest$StoreName;->INVALID:Lcom/android/exchange/SearchRequest$StoreName;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    .line 294
    sget-object v0, Lcom/android/exchange/SearchRequest$QueryClass;->INVALID:Lcom/android/exchange/SearchRequest$QueryClass;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    .line 295
    sget-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->INVALID:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 296
    sget-object v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->INVALID:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 297
    sget-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->INVALID:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceTruncationSize:I

    .line 299
    sget-object v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->INVALID:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 300
    return-void
.end method


# virtual methods
.method public accountId(J)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "accountId"

    .prologue
    .line 303
    iput-wide p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mAccountId:J

    .line 304
    return-object p0
.end method

.method public build()Lcom/android/exchange/SearchRequest;
    .locals 18

    .prologue
    .line 373
    new-instance v2, Lcom/android/exchange/SearchRequest$SearchRequestImpl;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mAccountId:J

    move-wide v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryText:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryFreeText:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryCollectionIds:[J

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryGreaterThan:Ljava/util/Date;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryLessThan:Ljava/util/Date;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsRange:Landroid/util/Pair;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsDeepTraversal:Z

    move v13, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsRebuildResults:Z

    move v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceTruncationSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    move-object/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lcom/android/exchange/SearchRequest$SearchRequestImpl;-><init>(JLcom/android/exchange/SearchRequest$StoreName;Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/SearchRequest$QueryClass;[JLjava/util/Date;Ljava/util/Date;Landroid/util/Pair;ZZLcom/android/exchange/SearchRequest$BodyPreferenceType;ILcom/android/exchange/SearchRequest$OptionsMIMESupport;)V

    return-object v2
.end method

.method public optionsBodyPreferenceTruncationSize(I)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "optionsBodyPreferenceTruncationSize"

    .prologue
    .line 363
    iput p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceTruncationSize:I

    .line 364
    return-object p0
.end method

.method public optionsBodyPreferenceType(Lcom/android/exchange/SearchRequest$BodyPreferenceType;)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "optionsBodyPreferenceType"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 359
    return-object p0
.end method

.method public optionsDeepTraversal()Lcom/android/exchange/SearchRequest$Builder;
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsDeepTraversal:Z

    .line 349
    return-object p0
.end method

.method public optionsMIMESupport(Lcom/android/exchange/SearchRequest$OptionsMIMESupport;)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "optionsMIMESupport"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 369
    return-object p0
.end method

.method public optionsRange(II)Lcom/android/exchange/SearchRequest$Builder;
    .locals 3
    .parameter "startRange"
    .parameter "endRange"

    .prologue
    .line 343
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsRange:Landroid/util/Pair;

    .line 344
    return-object p0
.end method

.method public optionsRebuildResults()Lcom/android/exchange/SearchRequest$Builder;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsRebuildResults:Z

    .line 354
    return-object p0
.end method

.method public queryClass(Lcom/android/exchange/SearchRequest$QueryClass;)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "queryClass"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    .line 324
    return-object p0
.end method

.method public queryCollectionIds([J)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "queryCollectionIds"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryCollectionIds:[J

    .line 329
    return-object p0
.end method

.method public queryFreeText(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "query"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryFreeText:Ljava/lang/String;

    .line 319
    return-object p0
.end method

.method public queryGreaterThan(Ljava/util/Date;)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "queryGreaterThan"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryGreaterThan:Ljava/util/Date;

    .line 334
    return-object p0
.end method

.method public queryLessThan(Ljava/util/Date;)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "queryLessThan"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryLessThan:Ljava/util/Date;

    .line 339
    return-object p0
.end method

.method public queryText(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "query"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryText:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public storeName(Lcom/android/exchange/SearchRequest$StoreName;)Lcom/android/exchange/SearchRequest$Builder;
    .locals 0
    .parameter "storeName"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    .line 309
    return-object p0
.end method
