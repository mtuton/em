.class public final enum Lcom/android/exchange/SearchRequest$OptionsMIMESupport;
.super Ljava/lang/Enum;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionsMIMESupport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exchange/SearchRequest$OptionsMIMESupport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

.field public static final enum INVALID:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

.field public static final enum NEVER_SEND_DATA:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

.field public static final enum SEND_DATA_FOR_ALL_MSGS:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

.field public static final enum SEND_DATA_FOR_SECURITY_MSGS_ONLY:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    const-string v1, "NEVER_SEND_DATA"

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->NEVER_SEND_DATA:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 49
    new-instance v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    const-string v1, "SEND_DATA_FOR_SECURITY_MSGS_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->SEND_DATA_FOR_SECURITY_MSGS_ONLY:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 50
    new-instance v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    const-string v1, "SEND_DATA_FOR_ALL_MSGS"

    invoke-direct {v0, v1, v4}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->SEND_DATA_FOR_ALL_MSGS:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 51
    new-instance v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->INVALID:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    sget-object v1, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->NEVER_SEND_DATA:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->SEND_DATA_FOR_SECURITY_MSGS_ONLY:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->SEND_DATA_FOR_ALL_MSGS:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->INVALID:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->$VALUES:[Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$OptionsMIMESupport;
    .locals 1
    .parameter

    .prologue
    .line 47
    const-class v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    return-object p0
.end method

.method public static values()[Lcom/android/exchange/SearchRequest$OptionsMIMESupport;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->$VALUES:[Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v0}, [Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    return-object v0
.end method
