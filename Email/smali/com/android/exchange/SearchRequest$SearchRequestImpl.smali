.class Lcom/android/exchange/SearchRequest$SearchRequestImpl;
.super Lcom/android/exchange/SearchRequest;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchRequestImpl"
.end annotation


# instance fields
.field private mAccountId:J

.field private mConversationId:Ljava/lang/String;

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
.method public constructor <init>(JLcom/android/exchange/SearchRequest$StoreName;Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/SearchRequest$QueryClass;[JLjava/util/Date;Ljava/util/Date;Landroid/util/Pair;ZZLcom/android/exchange/SearchRequest$BodyPreferenceType;ILcom/android/exchange/SearchRequest$OptionsMIMESupport;Ljava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "storeName"
    .parameter "queryText"
    .parameter "queryFreeText"
    .parameter "queryClass"
    .parameter "queryCollectionIds"
    .parameter "queryGreaterThan"
    .parameter "queryLessThan"
    .parameter
    .parameter "optionsDeepTraversal"
    .parameter "optionsRebuildResults"
    .parameter "optionsBodyPreferenceType"
    .parameter "optionsBodyPreferenceTruncationSize"
    .parameter "optionsMIMESupport"
    .parameter "convId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/exchange/SearchRequest$StoreName;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/exchange/SearchRequest$QueryClass;",
            "[J",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Lcom/android/exchange/SearchRequest$BodyPreferenceType;",
            "I",
            "Lcom/android/exchange/SearchRequest$OptionsMIMESupport;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p10, optionsRange:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/exchange/SearchRequest;-><init>(Lcom/android/exchange/SearchRequest$1;)V

    .line 113
    iput-wide p1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mAccountId:J

    .line 114
    iput-object p3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    .line 115
    iput-object p4, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryText:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryFreeText:Ljava/lang/String;

    .line 117
    iput-object p6, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    .line 118
    iput-object p7, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    .line 119
    iput-object p8, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryGreaterThan:Ljava/util/Date;

    .line 120
    iput-object p9, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryLessThan:Ljava/util/Date;

    .line 121
    iput-object p10, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    .line 122
    iput-boolean p11, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsDeepTraversal:Z

    .line 123
    iput-boolean p12, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRebuildResults:Z

    .line 124
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 125
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceTruncationSize:I

    .line 126
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 128
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mConversationId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .parameter "in"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 234
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/exchange/SearchRequest;-><init>(Lcom/android/exchange/SearchRequest$1;)V

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mAccountId:J

    .line 236
    invoke-static {}, Lcom/android/exchange/SearchRequest$StoreName;->values()[Lcom/android/exchange/SearchRequest$StoreName;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryText:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryFreeText:Ljava/lang/String;

    .line 239
    invoke-static {}, Lcom/android/exchange/SearchRequest$QueryClass;->values()[Lcom/android/exchange/SearchRequest$QueryClass;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .local v0, collectionIdsSize:I
    new-array v3, v0, [J

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    .line 242
    iget-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 243
    iget-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryGreaterThan:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 244
    iget-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryLessThan:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 245
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    .line 246
    new-array v1, v7, [Z

    .line 247
    .local v1, deepTraversalVal:[Z
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 248
    aget-boolean v3, v1, v6

    iput-boolean v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsDeepTraversal:Z

    .line 249
    new-array v2, v7, [Z

    .line 250
    .local v2, rebuildResultsVal:[Z
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 251
    aget-boolean v3, v2, v6

    iput-boolean v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRebuildResults:Z

    .line 252
    invoke-static {}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->values()[Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceTruncationSize:I

    .line 254
    invoke-static {}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->values()[Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mConversationId:Ljava/lang/String;

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/exchange/SearchRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/exchange/SearchRequest$SearchRequestImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getOptionsBodyPreferenceTruncationSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceTruncationSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOptionsBodyPreferenceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 216
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 208
    :pswitch_0
    const-string v0, "1"

    goto :goto_0

    .line 210
    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 212
    :pswitch_2
    const-string v0, "3"

    goto :goto_0

    .line 214
    :pswitch_3
    const-string v0, "4"

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOptionsDeepTraversal()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsDeepTraversal:Z

    return v0
.end method

.method public getOptionsOptionsMIMESupport()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v0}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->ordinal()I

    move-result v0

    sget-object v1, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->INVALID:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOptionsRange()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOptionsRebuildResults()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRebuildResults:Z

    return v0
.end method

.method public getQueryClass()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$QueryClass:[I

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$QueryClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 164
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 162
    :pswitch_0
    const-string v0, "Email"

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getQueryCollectionIds()[J
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    return-object v0
.end method

.method public getQueryConvIdText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryFreeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryFreeText:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryGreaterThan()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryGreaterThan:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    .line 176
    :cond_0
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 177
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryGreaterThan:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 178
    invoke-static {v0}, Lcom/android/email/Utility;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryLessThan()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryLessThan:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 183
    const/4 v1, 0x0

    .line 187
    :goto_0
    return-object v1

    .line 185
    :cond_0
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 186
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryLessThan:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 187
    invoke-static {v0}, Lcom/android/email/Utility;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$StoreName:[I

    iget-object v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$StoreName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    const-string v0, "Mailbox"

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    iget-wide v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    invoke-virtual {v0}, Lcom/android/exchange/SearchRequest$StoreName;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryFreeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    invoke-virtual {v0}, Lcom/android/exchange/SearchRequest$QueryClass;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryCollectionIds:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 272
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryGreaterThan:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 273
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mQueryLessThan:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 274
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRange:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsDeepTraversal:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 277
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsRebuildResults:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 278
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v0}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsBodyPreferenceTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v0}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Lcom/android/exchange/SearchRequest$SearchRequestImpl;->mConversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    return-void
.end method
