.class synthetic Lcom/android/exchange/SearchRequest$2;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

.field static final synthetic $SwitchMap$com$android$exchange$SearchRequest$QueryClass:[I

.field static final synthetic $SwitchMap$com$android$exchange$SearchRequest$StoreName:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 206
    invoke-static {}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->values()[Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    :try_start_0
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->PLAIN_TEXT:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->HTML:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->RTF:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->MIME:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    .line 160
    :goto_3
    invoke-static {}, Lcom/android/exchange/SearchRequest$QueryClass;->values()[Lcom/android/exchange/SearchRequest$QueryClass;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$QueryClass:[I

    :try_start_4
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$QueryClass:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$QueryClass;->EMAIL:Lcom/android/exchange/SearchRequest$QueryClass;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$QueryClass;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    .line 137
    :goto_4
    invoke-static {}, Lcom/android/exchange/SearchRequest$StoreName;->values()[Lcom/android/exchange/SearchRequest$StoreName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$StoreName:[I

    :try_start_5
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$StoreName:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$StoreName;->MAILBOX:Lcom/android/exchange/SearchRequest$StoreName;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$StoreName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    .line 160
    :catch_1
    move-exception v0

    goto :goto_4

    .line 206
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
