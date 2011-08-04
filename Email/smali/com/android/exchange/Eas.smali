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
.field public static DEBUG:Z

.field public static FILE_LOG:Z

.field public static PARSER_LOG:Z

.field public static final PLATFORM_VERSION:Ljava/lang/String;

.field public static USER_LOG:Z

.field public static WAIT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    .line 30
    sput-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    .line 33
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 34
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 35
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 48
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "."

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->PLATFORM_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public static setUserDebug(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, ""

    .line 330
    sget-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    if-nez v0, :cond_2

    .line 331
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 332
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 333
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 334
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    sput-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 337
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 331
    goto :goto_0

    :cond_4
    move v0, v2

    .line 332
    goto :goto_1

    :cond_5
    move v0, v2

    .line 333
    goto :goto_2

    .line 337
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
