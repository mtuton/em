.class public final enum Lcom/android/exchange/SearchRequest$StoreName;
.super Ljava/lang/Enum;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exchange/SearchRequest$StoreName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exchange/SearchRequest$StoreName;

.field public static final enum INVALID:Lcom/android/exchange/SearchRequest$StoreName;

.field public static final enum MAILBOX:Lcom/android/exchange/SearchRequest$StoreName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/android/exchange/SearchRequest$StoreName;

    const-string v1, "MAILBOX"

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SearchRequest$StoreName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$StoreName;->MAILBOX:Lcom/android/exchange/SearchRequest$StoreName;

    .line 26
    new-instance v0, Lcom/android/exchange/SearchRequest$StoreName;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/android/exchange/SearchRequest$StoreName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$StoreName;->INVALID:Lcom/android/exchange/SearchRequest$StoreName;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/exchange/SearchRequest$StoreName;

    sget-object v1, Lcom/android/exchange/SearchRequest$StoreName;->MAILBOX:Lcom/android/exchange/SearchRequest$StoreName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exchange/SearchRequest$StoreName;->INVALID:Lcom/android/exchange/SearchRequest$StoreName;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exchange/SearchRequest$StoreName;->$VALUES:[Lcom/android/exchange/SearchRequest$StoreName;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$StoreName;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/android/exchange/SearchRequest$StoreName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/exchange/SearchRequest$StoreName;

    return-object p0
.end method

.method public static values()[Lcom/android/exchange/SearchRequest$StoreName;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/exchange/SearchRequest$StoreName;->$VALUES:[Lcom/android/exchange/SearchRequest$StoreName;

    invoke-virtual {v0}, [Lcom/android/exchange/SearchRequest$StoreName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/exchange/SearchRequest$StoreName;

    return-object v0
.end method
