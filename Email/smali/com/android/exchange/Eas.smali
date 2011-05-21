.class public Lcom/android/exchange/Eas;
.super Ljava/lang/Object;
.source "Eas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/Eas$EmailDataSize;
    }
.end annotation


# static fields
.field public static final ACCOUNT_MAILBOX:Ljava/lang/String; = "__eas"

.field public static final ACCOUNT_MAILBOX_PREFIX:Ljava/lang/String; = "__eas"

.field public static final ACCOUNT_MANAGER_TYPE:Ljava/lang/String; = "com.android.exchange"

.field public static final BODY_PREFERENCE_HTML:Ljava/lang/String; = "2"

.field public static final BODY_PREFERENCE_TEXT:Ljava/lang/String; = "1"

.field public static DEBUG:Z = false

.field public static final DEBUG_BIT:I = 0x1

.field public static final DEBUG_EXCHANGE_BIT:I = 0x2

.field public static final DEBUG_FILE_BIT:I = 0x4

.field public static final DEFAULT_PROTOCOL_VERSION:Ljava/lang/String; = "2.5"

.field public static final EAS12_TRUNCATION_SIZE:Ljava/lang/String; = "400000"

.field public static final EAS2_5_TRUNCATION_SIZE:Ljava/lang/String; = "8"

.field public static final EXCHANGE_ERROR_NOTIFICATION:I = 0x10

.field public static FILE_LOG:Z = false

.field public static final FILTER_1_DAY:Ljava/lang/String; = "1"

.field public static final FILTER_1_MONTH:Ljava/lang/String; = "5"

.field public static final FILTER_1_WEEK:Ljava/lang/String; = "3"

.field public static final FILTER_2_WEEKS:Ljava/lang/String; = "4"

.field public static final FILTER_3_DAYS:Ljava/lang/String; = "2"

.field public static final FILTER_3_MONTHS:Ljava/lang/String; = "6"

.field public static final FILTER_6_MONTHS:Ljava/lang/String; = "7"

.field public static final FILTER_ALL:Ljava/lang/String; = "0"

.field public static final FOLDER_STATUS_INVALID_KEY:I = 0x9

.field public static final FOLDER_STATUS_OK:I = 0x1

.field public static PARSER_LOG:Z = false

.field public static final PLATFORM_VERSION:Ljava/lang/String; = "202"

.field public static final SUPPORTED_PROTOCOL_EX2003:Ljava/lang/String; = "2.5"

.field public static final SUPPORTED_PROTOCOL_EX2003_DOUBLE:D = 2.5

.field public static final SUPPORTED_PROTOCOL_EX2007:Ljava/lang/String; = "12.0"

.field public static final SUPPORTED_PROTOCOL_EX2007_DOUBLE:D = 12.0

.field public static final SUPPORTED_PROTOCOL_EX2007_EXT:Ljava/lang/String; = "12.1"

.field public static final SUPPORTED_PROTOCOL_EX2007_EXT_DOUBLE:D = 12.1

.field public static USER_LOG:Z = false

.field public static final VERSION:Ljava/lang/String; = "100"

.field public static WAIT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    .line 27
    sput-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    .line 30
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 31
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 32
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static setUserDebug(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, ""

    .line 295
    sget-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    if-nez v0, :cond_2

    .line 296
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 297
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 298
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 299
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    sput-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 302
    :cond_1
    const-string v0, "Eas Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_6

    const-string v2, "User "

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v2, :cond_7

    const-string v2, "Parser "

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v2, :cond_8

    const-string v2, "File"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 296
    goto :goto_0

    :cond_4
    move v0, v2

    .line 297
    goto :goto_1

    :cond_5
    move v0, v2

    .line 298
    goto :goto_2

    .line 302
    :cond_6
    const-string v2, ""

    move-object v2, v3

    goto :goto_3

    :cond_7
    const-string v2, ""

    move-object v2, v3

    goto :goto_4

    :cond_8
    const-string v2, ""

    move-object v2, v3

    goto :goto_5
.end method
